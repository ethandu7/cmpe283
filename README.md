# cmpe283
## Team members
* Jiang Du (013816075)
* Su Yuan (014557660)
* Enviornment Setup
1.	Downloaded VM VirtualBox and Ubuntu
2.	Clicked the new button on VirtualBox, selected type as Linux and version as Ubuntu (64bit)
3.	Set the memory size to 4096MB
4.	Create a virtual hard disk now
5.	Select VDI as the hard disk file type
6.	Select dynamically allocated as the storage on physical hard disk
7.	Create the file
8.	Click the setting, 
9.	In system, set 2 CPU for processors and also enable PAE/NX and Nested VT-x/AMD-V
10.	In display, set video memory to 128mb, and enable 3d acceleration
11.	In storage, select empty, at optical drive, select choose a virtual optical disk, added the downloaded ubuntu 
12.	Click ok to save the settings. 
13.	Install ubuntu on VirtualBox
14. sudo apt-get build-dep linux linux-image-$(uname -r)
15. sudo insmod cmpe283-1.ko
16. dmesg

