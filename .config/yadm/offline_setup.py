import os
import sys
import shutil
import subprocess

repos = [
    ("hugsy", "gef", "dev"),
    ("pyenv", "pyenv", "v2.0.5"),
    ("pyenv", "pyenv-virtualenv", "v1.1.5"),
    ("polybar", "polybar", "3.5.6"),
    ("tpope", "vim-surround", "master"),
    ("preservim", "nerdtree", "master"),
    ("thaerkh", "vim-workspace", "master"),
    ("ryanoasis", "vim-devicons", "master"),
    ("tpope", "vim-fugitive", "master"),
    ("vim-utils", "vim-man", "master"),
    ("tiagofumo", "vim-nerdtree-syntax-highlight", "master"),
    ("jistr", "vim-nerdtree-tabs", "master"),
    ("preservim", "nerdcommenter", "master"),
    ("fdw", "ranger-autojump", "main"),
]

bundle_dir = os.path.join('..', 'bundles')

for owner, repo, ref in repos:
    print('Downloading bundle for {}'.format(repo))
    try:
        result = subprocess.run(['git', 'clone', 'https://github.com/{}/{}.git'.format(owner, repo)], cwd=bundle_dir)
        print(result.stdout)
    except subprocess.CalledProcessError as exc:
        print('Could not clone repo, exiting')
        sys.exit(-1)

    try:
        result = subprocess.run(['git', 'bundle', 'create', '../{}.bundle'.format(repo), ref], cwd=os.path.join(bundle_dir, repo))
        print(result.stdout)
    except subprocess.CalledProcessError as exc:
        print('Could not clone repo, exiting')
        sys.exit(-1)

    shutil.rmtree(os.path.join(bundle_dir, repo))