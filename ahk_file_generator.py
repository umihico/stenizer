# -*- coding: utf-8 -*-
from mother import *
import word_detail
from umihico_commons.xlsx_wrapper import load_xlsx
file = ''


def append(sentence):
    global file
    file += sentence
    file += '\n'


def longpress(key, longkey, adj=None):
    # 1::send, % longpress("1", "#1", "1")
    adj = adj if not adj is None else key
    append('{2}::send, % longpress("{0}", "{1}", "{2}")'.format(key, longkey, adj))


def longpresses(tuples):
    for t in tuples:
        if len(t) == 3:
            key, longkey, adj = t
            longpress(key, longkey, adj)
        else:
            key, longkey = t
            longpress(key, longkey)


def send(key, newkey):
    append('{0}::send,{1}'.format(key, newkey))


def sends(tuples):
    [send(key, newkey) for key, newkey in tuples]


def hotstring(key, newkey):
    append('::{0}::{1}'.format(key, newkey))


def remap_no_key_repeating(key, newkey):
    append(r'''*aaaaa::
    SetKeyDelay -1
        Send {Blind}{bbbbb Down}
    Return
    *aaaaa up::
    SetKeyDelay -1
        Send {Blind}{bbbbb Up}
    Return'''.replace('aaaaa', key).replace('bbbbb', newkey))


def remap_no_key_repeatings(tuples):
    [remap_no_key_repeating(key, newkey) for key, newkey in tuples]


def remap(key, newkey):
    append('{0}::{1}'.format(key, newkey))


def remaps(tuples):
    [remap(key, newkey) for key, newkey in tuples]


def longpress2(key, word):
    # ~a::send, % longpress2("a", "nd")
    if word[0] == key[0]:
        append('~{0}::send, % longpress2("{0}", "{1}")'.format(key, word[1:]))
    else:
        append('~{0}::send, % longpress2_bs("{0}", "{1}")'.format(key, word))


# def longpress2s(tuples):
#     [longpress2(key,word) for key,word in tuples]

def combi(key, word):
    # ~a & s::send, % combi("a", "s", "assert")
    first_letter = key[0]
    second_letter = key[1]
    if key == word[:2]:
        append('~{0} & {1}::send, % combi("{0}", "{1}", "{2}")'.format(
            first_letter, second_letter, word[2:]))
    else:
        append('~{0} & {1}::send, % combi_bs("{0}", "{1}", "{2}")'.format(
            first_letter, second_letter, word))


if __name__ == '__main__':
    word_detail_list = word_detail.word_detail_list
    word_detail_list2 = list()
    for t in word_detail_list:
        if len(t) == 3:
            word_detail_list2.append((t[0], t[1]))
        else:
            word_detail_list2.append((t[0], t[0] + t[1]))
    word_detail = {x[0]: x[1] for x in word_detail_list2}

    file = '''

    longpress(key, longkey, purekey)
    {
              KeyWait, % purekey, T0.15
              if ErrorLevel
                        return longkey
              else
                        return key
    }
    longpress2(key, restkey)
    {
              KeyWait, % key, T0.3
              if ErrorLevel
                        return restkey
    }
    longpress2_bs(key, restkey)
    {
            KeyWait, % key, T0.3
            if ErrorLevel{
                        send, {BS}
                        return restkey
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
    '''
    append('#UseHook')

    longpresses([(str(i), '#' + str(i)) for i in [1, 3, 5, 7, 9]])
    longpresses([(str(i), '#' + str(i + 2)) for i in [0, 2, 4, 6]])

    longpresses([
        ('.', ', '),
        ("'", '+2'),
        ('-', ' = '),
        ('[', ']'),
        ('+[', '+]', '{'),
        ('(', ')'), ])
    remaps([
        ('F22', '\\'),
        ('F23', 'vkF3sc029'),
        ('F16', '+'),
        ('F17', '^]'),
        ('F24', '_'),
    ])

    sends([
        ('F20', '{Space}<{Space}'),
        ('F21', '{Space}>{Space}'),
        # ("!'", "''''''{Left 3}"),
        ("^'", '""""""{Left 3}'),
        ('!(', '(x for x in )'),
        ('![', '[x for x in ]'),
        ('!{', '{Shift down}[{Shift up}k:v for k in {Shift down}]{Shift up}'),
        ('!-', '{Space}{Shift down}1{Shift up}={Space}'),
        ('^-', '{Space}=={Space}'),
        ('!F20', '{Space}<={Space}'),
        ('!F21', '{Space}>={Space}'),
        ('F19', '{Ctrl down}v{Ctrl up}'),
        ('F18', '{Ctrl down}c{Ctrl up}'), ])

    stenodic = csv2dict('stenodic', list_of_dict=False)
    print(stenodic)
    stenodic = {k: stenodic[k] for k in stenodic if len(k) <= 2}
    for k, word in stenodic.items():
        k = k.replace(':', 'vkBAsc028')
        hotstring(word, k)
        if word in word_detail:
            word = word_detail[word]
        if len(k) == 1:
            longpress2(k, word)
        elif len(k) == 2:
            combi(k, word)
    print(file)
    write(file, 'ahk.ahk')
