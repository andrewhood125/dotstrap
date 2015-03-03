establish
========

Operating System agnostic dependency management.

Currently supporting: Mac and Debian

*Note: This project is still in early dev stages.*  

depends.sh
==========
`depends.sh` is the file that establish uses to know what dependencies
you have. It will load that file, load any recursive dependencies and
then install them. It has an array `deps` with space delimited strings.

Example: depends.sh
````
deps=(composer nginx php5_fpm)
````

Installation
------------
`wget
https://raw.githubusercontent.com/andrewhood125/establish/master/establish`
`chmod +x establish`
`sudo mv establish /usr/local/bin/`
Usage
-----
  - cd into your project root or anywhere `./depends.sh` exists.
  - Run `curl -Lo- http://bit.do/establish | bash`
