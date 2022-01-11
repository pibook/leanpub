# leanpub

[Leanpub](https://leanpub.com) production requires a particular file and folder structure: 

1. `manuscript` folder which includes a `book.txt` for chapters.
2. `images` or `resources` folder (depending on markup format choice) inside the `manuscript` folder.

Besides the images folder, the rest of the folders are [git submodules](http://github.blog/2016-02-01-working-with-submodules/), ie pointers to other repos:

`git submodule update --remote --merge`

## Images subtree

The git submodule is a pointer to another repo and is (currently) not recognised by Leanpub, 
so we need an actual copy of the images repo inside this repo, which is done with git subtree:

`git pull -s subtree images master`

## Pre-processing

lua filters and workflow are adapted from the kallipos repo:
[documentation for lua filters](https://github.com/mibook/kallipos)
