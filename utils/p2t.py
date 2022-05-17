import sys
from shutil import copy
import mytools as mt
from filecmp import cmp

check_before_copy_over = True
in_forced_loops = False
final_string = ''

in_file = "reg-you-achievements.txt"
out_file = "reg-you-achieve-brief.txt"
out_temp_file = "temp-" + out_file

def can_be_shortcut(my_cmd_array):
    compare_array = [ ">p", ">s", ">s", ">s", ">se", ">c8r", ">kb3" ]
    temp_array = [ x.strip() for x in my_cmd_array[1:-1] ]
    return temp_array == compare_array

with open (in_file) as file:
    for (line_count, line) in enumerate (file, 1):
        if "* drag_out_all_first" in line:
            break
        if not in_forced_loops and not line.startswith(">rf"):
            final_string += line
            continue
        if line.startswith(">rf"):
            in_forced_loops = True
            cmd_array = [ line ]
            continue
        if not line.startswith(">"):
            if can_be_shortcut(cmd_array):
                cmd_array = [ cmd_array[0].replace('rf', '0'), cmd_array[-1] ]
            final_string += ''.join(cmd_array)
            final_string += line
            in_forced_loops = False
        else:
            cmd_array.append(line)

f = open(out_temp_file, "w")
f.write(final_string)
f.close()

if 1:
    if cmp(out_file, out_temp_file):
        print("Everything matches!")
    else:
        mt.wm(out_file, out_temp_file)
        if check_before_copy_over:
            input("Hit return to accept changes.")
        copy(out_temp_file, out_file)
else:
    print("Could not open temp or destination file")
