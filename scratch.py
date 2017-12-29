#coding=utf-8
import random
names=raw_input('Please enter your name list：')
print names
NAME=names.strip(' ').split(' ')
print '%s' % str(NAME).decode('string_escape')
i = 0
length = len(NAME)
print '----------SARTING----------'
for i in range (1,length+1):
    randomname = random.randint(0, len(NAME) - 1)
    print i,NAME[randomname]
    i = i + 1
    del NAME[randomname]
    if i == length + 1:
        print '-----------FINISHED----------'