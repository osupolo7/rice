import os
import sys
import shutil
import subprocess


top_dir = os.path.join('..', '..')
bundle_dir = os.path.join('..', 'bundles')



for owner, repo, ref in repos:
    print('Downloading repo for {}'.format(repo))
    try:
        result = subprocess.run(['git', 'clone', '-b', ref, 'https://github.com/{}/{}.git'.format(owner, repo)], cwd=bundle_dir)
        print(result.stdout)
    except subprocess.CalledProcessError as exc:
        print('Could not clone repo, exiting')
        sys.exit(-1)

    # try:
    #     result = subprocess.run(['git', 'checkout', ''.format(repo), ref], cwd=os.path.join(bundle_dir, repo))
    #     print(result.stdout)
    # except subprocess.CalledProcessError as exc:
    #     print('Could not clone repo, exiting')
    #     sys.exit(-1)

    # shutil.rmtree(os.path.join(bundle_dir, repo))