# coding=utf-8
import os
import glob
this_dir = os.path.dirname(os.path.abspath(__file__))

execute = "__create_links.bat"


def _before_run_ci(root, batch):
    with open(os.path.join(root, batch), mode="r") as fin:
        t = fin.read()
    subst_batch = batch + ".subst.bat"
    t = t.replace("junction", "mklink /j")
    with open(os.path.join(root, subst_batch), mode="w+") as fout:
        fout.write(t)
    return root, subst_batch


def _run(root, batch):
    # if os.environ.get("APPVEYOR") is not None:
    root, batch = _before_run_ci(root, batch) 
    print("Executing [%s] in [%s]" % (batch, root))
    os.chdir(os.path.join(this_dir, root))
    os.system("%s nopause" % batch)
    os.chdir(this_dir)


if __name__ == '__main__':
    for one_dir in glob.glob("*"):
        # orig directories
        if "-" in one_dir:
            continue
        # exe batches
        for _root, _1, _files in os.walk(one_dir):
            if execute in _files:
                _run(_root, execute)
