# coding=utf-8
import sys
import os
import glob
import argparse
this_dir = os.path.dirname(os.path.abspath(__file__))

execute = "__create_links.bat"

src_dir = "vsprops-base"
to_replace_target = "..\\..\\..\\cpp-template\\projects\\vsprops-base\\"

def _before_run_ci(root, batch, target):
    with open(os.path.join(root, batch), mode="r") as fin:
        t = fin.read()
    subst_batch = batch + ".subst.bat"
    t = t.replace("junction", "mklink /j")
    if len(target or "") > 0:
        t_orig = t
        t = t.replace(to_replace_target, target)
        # if t == t_orig:
        #     print("Invalid replace:\n%s" % t)
        #     sys.exit(1)

    with open(os.path.join(root, subst_batch), mode="w+") as fout:
        fout.write(t)
    return root, subst_batch


def _run(root, batch, target=""):
    # if os.environ.get("APPVEYOR") is not None:
    root, batch = _before_run_ci(root, batch, target=target)
    print("Executing [%s] in [%s]" % (batch, root))
    os.chdir(os.path.join(this_dir, root))
    abs_src_dir = os.path.join(this_dir, root, src_dir)
    try:
        os.remove(abs_src_dir)
    except Exception as e:
        print("Cannot delete [%s] [%s]" % (abs_src_dir, repr(e)))
        pass

    os.system("%s nopause" % batch)
    os.chdir(this_dir)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Create symlinks to vsprops')
    parser.add_argument('--target', help='Existing target directory to link to',
                        type=str, required=False, default=r"..\..\_vsprops-base")
    flags = parser.parse_args()

    for one_dir in glob.glob("*"):
        # orig directories
        if "-" in one_dir:
            continue
        # exe batches
        for _root, _1, _files in os.walk(one_dir):
            if execute in _files:
                _run(_root, execute, target=flags.target)
