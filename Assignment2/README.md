# Contribution of Team Members
* Jiang Du (013816075)

  Setup the enviornment with VirtualBox and Ubuntu . Forked the torvalds/linux repo and built a local version of kernel, and then made changes to
  cpuid.c file by adding code into "kvm_emulate_cpuid" function to caputer the numbers we need. I also setup the nested VM and implemented the test program
  to conduct the test.
* Su Yuan(014557660)

  
 
# Steps to Reproduce
1.	Fork linux repo and make a local build of kernel

    ```
    git clone https://github.com/ethandu7/linux.git
    cp /boot/{config-name} ./.config
    make oldconfig
    make -j8 modules && make -j8
    ```
2.	Update the files

        arch/x86/kvm/vmx/vmx.c
    
        arch/x86/kvm/cpuid.c
        
    or pull this two files from this repo and merge them into your local linux kernel branch
    
3.	Bilud your local kernel again, this time you also install the kernel you've built

    ```
    make -j8 modules && make -j8 && sudo make modules_install && sudo make install
    ```
 
5.	Create a nested VM
    1. enable KVM module, and install basic packages
    ```
        sudo apt install qemu qemu-kvm qemu-system qemu-utils
        sudo apt install libvirt-clients libvirt-daemon-system virtinst
    ```
    2. reboot
    3. make directories and download ISO file as needed
    ```
        sudo mkdir -pv /kvm/{disk,iso}
        cd /kvm/iso
    ```
    4. create nested VM
    ```
        virt-install --name nested \
        --os-type linux \
        --os-variant ubuntu20.04 \
        --ram 2048 \
        --dis /kvm/disk/nested.img,device=disk,bus=virtio,size=20,format=qcow2 \
        --graphics vnc,listen=0.0.0.0 \
        --noautoconsole \
        --hvm \
        --cdrom /kvm/iso/ubuntu-20.04.1-live-server-amd64.iso \
        --boot cdrom,hd
    ```
    5. connect to the nested VM via VMC clinet, and start the installation process of the nested VM


    6. please check this [Reference](https://linuxhint.com/install_kvm_ubuntu-2/) for a detailed steps

6.  Log into the nested VM and implement the test program, the result of running the test program

    ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment2/screenshots/output.png?raw=true "Testing")


# Answer to question3
1. After a reboot the number of exits can be seen as below

    ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment2/screenshots/reboot.png?raw=true "Reboot")

2. Run the test program every one second, we can see that the number of exits increases around 10k per second

    ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment2/screenshots/rate.png?raw=true "Rate")
    
3. Run some other applicaiton (in my case it's Firefox), the VM exit increases dramaticallyl (3m)

    ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment2/screenshots/others.png?raw=true "Others")
