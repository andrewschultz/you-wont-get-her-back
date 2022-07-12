import glob

auto_moves = [ 'c7', 's', 's', 's', 'se', 'c8r', 'kb3', 'rc1' ]
auto_moves_kxr = [ 'c7', 's', 's', 's', 'se', 'c8r', 'kb3', 'kxr' ]

alts = glob.glob("reg-youalt-*")

def auto_moves_write(fout, my_cmds):
    fout.write("#start expansion from >NFS\n")
    for a in my_cmds:
        fout.write(">{}\n".format(a))
    fout.write("#end expansion from >NFS\n")

for my_alt in alts:
    expansions = 0
    f = my_alt.replace("reg-youalt-", "reg-you-")
    print("Replacing", my_alt, "with", f)
    fout = open(f, "w")
    kxr_next = False
    with open(my_alt) as file:
        for (line_count, line) in enumerate (file, 1):
            if '#kxr' in line:
                kxr_next = True
            if line.strip() == '>nfs':
                print("Expanding line", line_count)
                expansions += 1
                auto_moves_write(fout, auto_moves_kxr if kxr_next else auto_moves)
                kxr_next = False
                continue 
            fout.write(line)
    fout.close()
    if not expansions:
        print("No NFS command to expand.")
    else:
        print("Expanded {} NSF command{}.".format(expansions, 's' if expansions > 1 else ''))
