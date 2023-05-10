# coding=utf-8
import logging
import os
import re
import glob
import argparse



logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s %(levelname)s %(message)s')
_logger = logging.getLogger()
_this_dir = os.path.dirname(os.path.abspath(__file__))


file_to_execute = "__create_links.bat"
dir_vsprops = "vsprops-base"

# 2023: replaced original batch with mklink, this is not needed anymore
# to_replace_target = "..\\..\\..\\cpp-template\\projects\\vsprops-base\\"
# def _before_run_ci(root, batch, target):
#     orig_batch = os.path.join(root, batch)
#     with open(orig_batch, mode="r", encoding="utf-8") as fin:
#         t = fin.read()
#     subst_batch = batch + ".subst.bat"
#     t = t.replace("junction", "mklink /j")
#     if len(target or "") > 0:
#         t_orig = t
#         t = t.replace(to_replace_target, target)
#         # if t == t_orig:
#         #     print("Invalid replace:\n%s" % t)
#         #     sys.exit(1)

#     new_batch = os.path.join(root, subst_batch)
#     with open(orig_batch, mode="w+", encoding="utf-8", newline="\r\n") as fout:
#         fout.write(t)
#     return root, subst_batch


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Create symlinks to vsprops')
    parser.add_argument('--target', help='Existing target directory to link to',
                        type=str, required=False, default=r"..\..\_vsprops-base")
    flags = parser.parse_args()

    # remove all vsprops
    ifiles = glob.glob(os.path.join(_this_dir, "**", dir_vsprops), recursive=True)
    dirs = sorted(list(ifiles))
    _logger.info(f"Found [{len(dirs)}] [{dir_vsprops}]")
    for d in dirs:
        try:
            os.remove(d)
        except Exception as e:
            _logger.warning(f"Cannot delete [{d}] [{e}]")
            pass

    ifiles = glob.glob(os.path.join(_this_dir, "**", file_to_execute), recursive=True)
    # do not descend into include directories
    rec_incl = re.compile(r"/include/.+/.+")
    to_execute = [x for x in sorted(list(ifiles)) if rec_incl.search(x.replace("\\", "/")) is None]
    _logger.info(f"Found [{len(to_execute)}] [{file_to_execute}]")

    for f in to_execute:
        base_dir = os.path.dirname(f)
        _logger.info(f"Executing [{f}] in [{base_dir}]")
        os.chdir(base_dir)
        os.system(f"{f} nopause")
        os.chdir(_this_dir)
        # input("!!")
