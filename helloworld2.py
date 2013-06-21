#!/usr/bin/env python
#coding: euc-kr

import string
import random

d = {}
#d_count = {'a':0,'b':0,'c':0,'d':0,'e':0,'f':0,'g':0,'h':0,'i':0,'j':0}
#list = [[d_count] for i in range(10)]
#self.result = dict((i[4:], [False, ''])  for i in dir(ApkTest)  if i[0:4] == 'test' and len(i) > 4 and  i[4].isupper())

d_count = dict((i,{'a':0,'b':0,'c':0,'d':0,'e':0,'f':0,'g':0,'h':0,'i':0,'j':0})  for i in range(100))
#for i in range(10):
#    d_count = {'a':0,'b':0,'c':0,'d':0,'e':0,'f':0,'g':0,'h':0,'i':0,'j':0}
#    d[i]

#d_count[0]['a'] = 1
#print d_count

for i in range(10):
    d[i] =  ''.join(random.choice("abcdefghij") for x in range(100)) 



for i in range(100):
    for j in range(10):
        if d[j][i] == 'a':
            d_count[i]['a'] += 1
        elif d[j][i] == 'b':
            d_count[i]['b'] += 1
        elif d[j][i] == 'c':
            d_count[i]['c'] += 1
        elif d[j][i] == 'd':
            d_count[i]['d'] += 1
        elif d[j][i] == 'e':
            d_count[i]['e'] += 1
        elif d[j][i] == 'f':
            d_count[i]['f'] += 1
        elif d[j][i] == 'g':
            d_count[i]['g'] += 1    
        elif d[j][i] == 'h':
            d_count[i]['h'] += 1
        elif d[j][i] == 'i':
            d_count[i]['i'] += 1            
        elif d[j][i] == 'j':
            d_count[i]['j'] += 1
    char = 0
    
    for k in "abcdefghij":
        if d_count[i][k] > char:
            char = d_count[i][k]    
    
    for k in "abcdefghij":
        if d_count[i][k] < char:
            d_count[i][k] = 0
            
for i in range(100):
    print d_count[i]
pattern = ''
blank = 0
for i in range(10):
    for j in range(100):
        for k in "abcdefghij":
            if d_count[i][k] != 0:
                if d[i][j] == k:
                    pattern += k
                    blank = 1
                    break
        if blank == 0:
            pattern += ' '
        else:
            blank = 0

    print d[i]
    print pattern
    pattern = ''
