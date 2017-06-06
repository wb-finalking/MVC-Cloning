This is a demo implementation of some of the aspects in Farbman et. al. Coordinates for Instant Image Cloning SIGGRAPH 2009 paper.But I add an additional function: use an alpha matting result(alpha image) to mask the selection patch to enhance the effect. And the version of shader is important,so I define that as 440. 

This is an effort to make work this code on QT5.8 based on CGAL 4.9 , cmake-3.5.2-win32-x86 , boost-1-60-0 and VS2013 for windows. Of course, linux is also OK as following.

#### Dependencies
Tested on Ubuntu 13.10:

    > sudo apt-get install libqt5opengl5-dev libcgal-dev

* Note: `Qt4` also can be used but compiling with `qmake` instead of `cmake`.
* Note 2: for Windows, `CGal` has to be added in .pro by hand.

## How to compile with cmake?
    > mkdir build
    > cd build
    > cmake ..
    > make

## How to compile with qmake?
    > mkdir build
    > cd build
    > qmake ..
    > make

Note: 'README.txt.original' is the original README.txt provided by author.
