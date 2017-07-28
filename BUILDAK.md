# Building Apps with AliceKit
This document will go over how to install the proper packages required to build apps with AliceKit enabled.

## What's AliceKit?
![AliceKit icon](http://artemis-project.github.io/assets/images/apps/alicekit.png)

**AliceKit** is a collecton of libraries and tools used to create wonderful apps and extensions using Swift and Qt. It includes the following (but not limited to):
* [Qlift](http://www.github.com/longhanks/qlift) - the binding used to link Swift and Qt together
* CMake - the building and compling tool for C-based projects
* Clang - Yet another compiler that works with Swift
* Swift - the programming language and debugging tools for writing AliceKit apps
* (coming soon) Cambria - an SDK for Artemis's desktop shell, [Desiree](http://www.github.com/artemis-project/desiree)

## Setting Up AliceKit

### Automatic
To simplify the installation of AliceKit and all of its components, users and developers can install the **Swift Machine** IDE to easily create apps and download the required packages.

Sadly, our own ink machine for this hasn't been filled up, but we'll get there soon. [Bendy](http://www.bendyandtheinkmachine.com), can we borrow some of your ink?

### Manual
_Note: The following instructions have been written for Ubuntu, but users of other Linux distros can follow the same principles._

1. Start by having a clean install of Ubuntu. This will help ensure that your apps will work correctly and that nothing else is broken in the process.
2. Install the required dependencies by running the command ```sudo apt install clang cmake git qtbase5-dev```. This will fetch and install Clang, CMake, Git, and the Qt 5 developer libraries.
3. Download the [Swift package](http://www.swift.org/download/) for your respective version of Ubuntu. At the time of writing, the current version is **3.1.1**. Extract the contents of the Swift package and merge the ```usr``` folder with your system's ```usr``` folder (you'll need root permissions to do this). This will install Swift system-wide.
4. To confirm that you installed Swift correctly, run ```swift --version```.
5. The source code for Qlift will need to be pulled into the system at ```/usr/local/```. To accomplish this, do the following:
  1. Give ```staff``` access by running ```sudo chown -R root:staff /usr/local/```.
  2. Add yourself to the ```staff``` group by running ```sudo usermod -a -G staff <userName>```, where <userName> is your username. Reboot the system for changes to take effect.
  3. Finally, run ```sudo chmod -R g+w /usr/local/``` to give ```staff``` access to write files. You may need to reboot here as well.
  4. To test, go into the directory and run ```touch goatfile```. If done properly, you should be able to create a goat file without needing root permissions.
6. Download Qlift by running the command ```git clone https://www.github.com/longhanks/qlift-c-api``` in the ```usr/local/src/``` folder.
7. Install Qlift by running ```cmake -DCMAKE_INSTALL_PREFIX=/usr```, followed by ```make; sudo make install```.
8. Build your app in your respective location, pulling the AliceKit template from GitHub.
9. To build and run your app, run ```swift build``` and then ```./.build/debug/<nameofapp>```, where <nameofapp> is the name of your application.
