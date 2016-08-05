# coding=utf-8
import os
import glob
this_dir = os.path.dirname(os.path.abspath(__file__))

execute = "__create_links.bat"

dirs = glob.glob("*")
for dir in dirs:
    if "-" in dir:
        continue
    for root, dirs, files in os.walk(dir):
        if execute in files:
            print "Executing [%s] in [%s]" % (execute, root)
            os.chdir(os.path.join(this_dir, root))
            os.system("%s nopause" % execute )
            os.chdir(this_dir)
