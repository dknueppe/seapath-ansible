#!/bin/bash

# setup Cache-Way masks for COS 0-3
wrmsr 0xc90 0xe00 # 1110 0000 0000
wrmsr 0xc91 0x1fc # 0001 1100 0000
wrmsr 0xc92 0x038 # 0000 0011 1000
wrmsr 0xc93 0x007 # 0000 0000 0111

# cores 0 and 8 remain in default COS 0
# set core 1-3,9-11 to use COS 1
wrmsr -p 1 0xc8f 0x100000000
wrmsr -p 2 0xc8f 0x100000000
wrmsr -p 3 0xc8f 0x100000000
wrmsr -p 9 0xc8f 0x100000000
wrmsr -p 10 0xc8f 0x100000000
wrmsr -p 11 0xc8f 0x100000000
# set core 4-5 to use COS 2
wrmsr -p 4 0xc8f 0x200000000
wrmsr -p 5 0xc8f 0x200000000
# set core 6-7 to use COS 3
wrmsr -p 6 0xc8f 0x300000000
wrmsr -p 7 0xc8f 0x300000000

# set GPU mask to the same as COS 0
wrmsr 0x18b0 0xe00
wrmsr 0x18b1 0xe00
wrmsr 0x18b2 0xe00
wrmsr 0x18b3 0xe00

# set WRC mask to the same as COS 0
wrmsr 0x18d0 0xe00
wrmsr 0x18d1 0xe00
wrmsr 0x18d2 0xe00
wrmsr 0x18d3 0xe00

