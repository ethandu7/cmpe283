# Contribution of Team Members
* Jiang Du (013816075)

  * Run the code from [Assignment3](https://github.com/ethandu7/cmpe283/tree/main/Assignment3) with ept disabled, e.g. shadow paging.
  
* Su Yuan(014557660)

  
 
# Exit counts
EPT Enabled 
    
EPT Disabled

  ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment4/screenshots/shadow-1.png?raw=true "Shadow-1")
  ![Alt](https://github.com/ethandu7/cmpe283/blob/main/Assignment4/screenshots/shadow-2.png?raw=true "Shadow-2")
 
# Answer to question3
**3. What did you learn from the count of exits? Was the count what you expected? If not, why not?**  

In general, different types of exit have different reaction in nested and shadow paging. More specifically, the exit type 48 (**EPT violation**) happened more often in nested paging mode. This makes sense because when the EPT doesn't have an existing mapping for a guest physical address to host physical address there will be a VM exit. Meanwhile, the exit type 28 (**Control-register accesses**) is way more often in shadow paging mode, this is because the hypervisor is in charge of the translation from guest virtual addresses to guest physical addresses and each read/write of virtual CR3 will cause a VM exit.


   
# Answer to question4
**4. What changed between the two runs (ept vs no-ept)?**
  * EPT
    Tow-layer page tables are used to translate from guest virtual address to guest physical address to host physical address, and more memory access is required. The guest VM owns its private page table and hence all the operations on CR3 are done natively, i.e. no VM exit.
  * No EPT
    Guest VM does not own the page table,the hypervisor must simulate the operation of read/write of virtual CR3, i.e. a VM exit for each read/write of CR3.
