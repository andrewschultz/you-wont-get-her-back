for x in 'abcdefgh':
    for y in range(1, 9):
        my_string = "{}{} is a room.".format(x, y)
        if x > 'a':
            my_string += " {}{} is east of {}{}.".format(x, y, chr(ord(x)-1), y)
        if y > 1:
            my_string += " {}{} is north of {}{}.".format(x, y, x, y-1)
        if x > 'a' and y > 1:
            my_string += " {}{} is northeast of {}{}.".format(x, y, chr(ord(x)-1), y-1)
        if x > 'a' and y < 8:
            my_string += " {}{} is southheast of {}{}.".format(x, y, chr(ord(x)-1), y+1)
        print(my_string)
        print()