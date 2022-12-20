#!/usr/bin/env python3
import pathlib
import re

def to_camel_case(snake_str):
    components = snake_str.split('_')
    # We capitalize the first letter of each component except the first one
    # with the 'title' method and join them together.
    return components[0].lower() + ''.join(x.title() for x in components[1:])

input_file = pathlib.Path(__file__).parent.joinpath('Generated/Cherry.tokens').resolve()
output_file = pathlib.Path(__file__).parent.joinpath('Generated/Token.Kind.swift').resolve()

tokens = []
with input_file.open('rt', encoding='utf8') as f:
    for line in f:
        if line.startswith('\''):
            continue
        name, value = line.split('=')
        value = int(value)
        name = to_camel_case(name)
        tokens.append((name, value))

with output_file.open('wt', encoding='utf8') as f:
    f.write('extension Token {\n')
    f.write('    public enum Kind: Int, Hashable {\n')
    f.write('        case eof = -1\n')
    for name, value in tokens:
        f.write('        case ' + name + ' = ' + str(value) + '\n')
    f.write('    }\n')
    f.write('}\n')

