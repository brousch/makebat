make.bat
========

Unixy developers, do you use a Makefile as your project's builder and task 
runner? Have you ever told a Windows user to just install Cygwin or run your 
project in a virtual machine?

*Did you feel bad about that? You should.*

**But no longer!**

Now you can add this one little batch file to your project to let Windows 
developers experience the joy of `make` and your Makefile without needing a 
whole Unix environment. You won't even have to change your documentation!

This handy-dandy script is cleverly named "make.bat" so that when a Windows 
user types `make` in their CMD console it will run the batch file. It then 
checks whether an actual `make` command is available. If so, it will hand 
things over to that `make`. If not, it will download the GNU Make binaries and 
dependencies from Sourceforge into the root of the project. It even cleans up 
after itself!

And just like that, your Windows user has access to `make` and all of the 
wonderfully useful automation you've crafted in your Makefile.

Your Linux and OSX developers won't care, because their superior operating 
systems will just ignore that silly .bat file.

Just be sure to add make/ to your project's .gitignore. Oh, and you might want 
to  test the Makefile on Windows since file paths are often janky in Redmond.
