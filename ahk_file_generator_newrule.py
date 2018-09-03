# -*- coding: utf-8 -*-
from umihico_commons.xlsx_wrapper import load_xlsx

data = {
    'a': ['and ', ],
    'b': ["if __name__ == '__main__':", ],
    'c': ['class', 'chrome'],
    'd': [None, 'def ', ],
    'e': ['else', "except"],
    'f': ['for ', 'from import ', "False"],
    'g': ['get', ],
    'h': ['html', "href"],
    'i': ['import ', 'items'],
    'j': ['join', ],
    'k': [None, 'key', ],
    'l': ['lxml', ],
    'm': ['is ', ],
    'n': ['not ', "None", "name"],
    'o': ['open', ],
    'p': ['print', 'python', "path"],
    'q': ['queue', ],
    'r': ['return ', 'requests', "range", "raise"],
    's': ['self', ],
    't': ['try:', "text",  "True", "test", "time", ],
    'u': ['url', 'umihico'],
    'v': ['value', ],
    'w': ['with', 'windows'],
    'x': ['xpath', ],
    'y': ['yield', 'you'],
    'z': ['zip', ],
}

_data = {
    letter:
    [
        v.replace(' ', '{Space}') if v else v
        for v in vals
    ]
    for letter, vals in data.items()}

'''
+	'S'hift
^	'C'ontrol
!	'A'lt
#	'W'indowsロゴキー
'''
key_order = ['SC', 'SW', "CW"]
_key_order = [
    x.replace('S', '+').replace('C', '^').replace('A', '!').replace('W', '#')
    for x in key_order
]


def write():
    writelines = []
    writelines.append('F13::^v')
    writelines.append('F14::^c')
    writelines.append('F15::^d')
    writelines.append('F16::^+d')
    for letter, vals in _data.items():
        for modifier, output in zip(_key_order, vals):
            if not output:
                continue
            writelines.append(f'{modifier}{letter}::Send,{output}')
    with open('ahk.ahk', mode='w') as f:
        for line in writelines:
            f.write(line)
            f.write('\n')


if __name__ == '__main__':
    write()
