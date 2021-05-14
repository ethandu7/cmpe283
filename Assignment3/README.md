# Contribution of Team Members
* Jiang Du (013816075)

  * Setup the running and testing enviornment with VirtualBox and Ubuntu. 
  * Made changes to cpuid.c file to print out exit reason and numbers.
  * Create test script to do testing
  
* Su Yuan(014557660)
  * Set up the enviornment.
  * Made changes to vmx.c file. 
  * participate in the testing.    

  
 
# Steps to Reproduce
1.	Set the environment based on [Assignment2](https://github.com/ethandu7/cmpe283/tree/main/Assignment2) 

2.	Install "cpuid" package in the nested VM
    ```
    sudo apt-get install -y cpuid
    ```
    
3.	Test with cpuid

    ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment3/screenshots/output.png?raw=true "Testing")
 
# Answer to question3
Fire the cpuid instruction with exit reason 7 several times in the nested VM 

   ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment3/screenshots/frequency.png?raw=true "Frequency")

Then run “demsg” in the outer VM, we can see that the number of exits increases around 80 per second

   ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment3/screenshots/frequency-outer.png?raw=true "Frequency Outer")
    
Run the testing script in the nested VM, and then check out the statitics in the outer VM

   ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment3/screenshots/before-outer-1.png?raw=true "Before Outer 1")
   ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment3/screenshots/before-outer-2.png?raw=true "Before Outer 2")
   
Then reboot the nested VM and run the testing scrpit again
   ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment3/screenshots/after-outer-1.png?raw=true "After Outer 1")
   ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment3/screenshots/after-outer-2.png?raw=true "After Outer 2")
   
# Answer to question4
  From the pics above, in our case, we can find that the most frequent exit is type 28 (**Control-register accesses**), and the least frequent one is type 47 (**Access to LDTR or TR**) 
