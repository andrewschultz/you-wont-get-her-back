for x in 'abcdefgh':
    for y in range(1, 9):
        my_room = "{}{}".format(x, y)
        my_string = "{} is a room. xval of {} is {}. yval of {} is {}.".format(my_room, my_room, ord(x)-0x60, my_room, y)
        if x > 'a':
            my_string += " {} is east of {}{}.".format(my_room, chr(ord(x)-1), y)
        if y > 1:
            my_string += " {} is north of {}{}.".format(my_room, x, y-1)
        if x > 'a' and y > 1:
            my_string += " {} is northeast of {}{}.".format(my_room, chr(ord(x)-1), y-1)
        if x > 'a' and y < 8:
            my_string += " {} is southeast of {}{}.".format(my_room, chr(ord(x)-1), y+1)
        print(my_string)
        print()