# OLC2_P2_202109705

gdb-multiarch -q --nh   -ex 'set architecture aarch64'   -ex 'file programm'   -ex 'target remote localhost:1234'   -ex 'b _start'   -ex 'c'   -ex 'layout split'   -ex 'layout regs'