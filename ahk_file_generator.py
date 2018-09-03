# -*- coding: utf-8 -*-
from umihico_commons.xlsx_wrapper import load_xlsx
from traceback import format_exc
import re


def is_alphabet(string):
    return bool(string[0] == re.sub('[^a-zA-Z]+', '', string))


def _only_alphabet_dot(string):
    return re.sub('[^0-9a-zA-Z.]+', '', string)


def main():
    _format_file()
    steno_data = load_xlsx("steno_data.xlsm")[1:]
    for row in steno_data:
        try:
            new_code = _to_ahk_format(row)
        except (Exception, ) as e:
            print(row)
            print(format_exc())
        else:
            _write(new_code)


def _to_ahk_format(row):
    try:
        key, name, output, type_ = row
    except (Exception, ) as e:
        try:
            key, name, output, type_ = row
        except (Exception, ) as e:
            print(row)
            raise
    key = key.replace(':', 'vkBAsc028')
    hotstring_code = ""
    if type_ == "longpress":
        conv_code = longpress(key, output)
    elif type_ == "remap":
        conv_code = remap(key, output)
    elif type_ == "combination":
        hotstring_code = hotstring(output, key)
        conv_code = combi(key, output)
    elif type_ == "send":
        conv_code = send(key, output)
    else:
        raise Exception(f"unknown type:{type_}")
    code = '\n'.join([hotstring_code, conv_code])
    return code


def _format_file():
    base_functions = '''
    longpress(key, longkey, waitkey)
    {
              KeyWait, % waitkey, T0.25
              if ErrorLevel{
                        return longkey
              }
    }
    longpress_bs(key, restkey, waitkey)
    {
            KeyWait, % waitkey, T0.25
            if ErrorLevel{
                        send, {BS}
                        return restkey
            }
    }
    longpress_remap(key, restkey, waitkey)
    {
            KeyWait, % waitkey, T0.25
            if ErrorLevel{
                        return restkey
            }else{
                        return key
            }
    }
    combi(firstkey, secondkey, restkey)
    {
        send, % secondkey
        KeyWait, % secondkey, T0.06
        KeyWait, % firstkey, T0.01
        if ErrorLevel{
            return restkey
        }
    }
    combi_bs(firstkey, secondkey, restkey)
    {
        send, % secondkey
        KeyWait, % secondkey, T0.06
        KeyWait, % firstkey, T0.01
        if ErrorLevel{
            send, {BS}{BS}
            return restkey
        }
    }
    #UseHook
    '''
    _write(base_functions, mode='w')


def _write(new_code, mode='a'):
    with open('ahk.ahk', mode=mode) as f:
        new_code_one_lines = new_code.split('\n')
        for new_code_one_line in new_code_one_lines:
            f.write(new_code_one_line)
            f.write('\n')


def longpress(key, longkey):
    if key == "+[":
        waitkey = "{"
    else:
        waitkey = key
    if longkey[0] == key[0]:
        # longkey = longkey[1:]1
        funcname = "longpress"
        longkey = longkey[1:]
    else:
        if is_alphabet(key[0]):
            funcname = "longpress_bs"
        else:
            funcname = "longpress_remap"
    childa = "~" if funcname != "longpress_remap" else ""
    code = f'{childa}{waitkey}::send, % {funcname}("{key}", "{longkey}", "{waitkey}")'
    return code


def send(key, output):
    return f'{key}::send,{output}'


def hotstring(key, output):
    key = _only_alphabet_dot(key)[:40]
    return f'::{key}::{output}'


def remap(key, output):
    return f'{key}::{output}'


def combi(key, word):
    first_letter = key[0]
    second_letter = key[1]
    if key == word[:2]:
        funcname = "combi"
        word = word[2:]
    else:
        funcname = "combi_bs"
    return f'~{first_letter} & {second_letter}::send, % {funcname}("{first_letter}", "{second_letter}", "{word}")'


if __name__ == '__main__':
    main()
