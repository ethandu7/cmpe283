# Contribution of Team Members
* Jiang Du (013816075)

  Setup the enviornment with VirtualBox and CentOS 8, and build the kernel module of printing out info of IA32_VMX_PROCBASED_CTLS and IA32_VMX_PROCBASED_CTLS2 controls.

* Su Yuan(014557660)

 Setup the enviornment with VirtualBox and Ubuntu, and build the kernel module of printing out info of IA32_VMX_EXIT_CTLS and IA32_VMX_ENTRY_CTLS controls.
 
# Enviornment Setup
1.	Downloaded VM VirtualBox and Ubuntu (CentOS 8)
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


# Build and Deployment
1. Clone the source code from this repo on VM

    `git clone https://github.com/ethandu7/cmpe283.git`

2. Build the kernel module as below

    ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment1/screenshots/build.png?raw=true "Build")

4. Install the kernel module from the building dir

    `insmod cmpe283-1.ko`
    if it does not work, use:
    'sudo insmod cmpe283-1.ko'

4. Check the print out from the kernel module using "dmesg" command

    `dmesg`
    
    ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment1/screenshots/Pinbased.png?raw=true "PinBased")
    
    ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment1/screenshots/Procbased.png?raw=true "ProcBased")
    
    ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment1/screenshots/Procbased2.png?raw=true "ProcBased2")
    
    ![Screenshot from 2021-04-21 12-48-04](https://user-images.githubusercontent.com/61606121/115612570-44f05400-a2a0-11eb-8ba7-bb3c9959e806.png)


5. Remove the module as you need

    `rmmod cmpe283_1`
