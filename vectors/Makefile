PORT   = 10010
TARGET = t.abs
   
$(TARGET): cvc_tst.c cvc.s
	nmc-g++ -x none cvc.s -x c cvc_tst.c -o$(TARGET) -lm

clean: 
	rm $(TARGET) dump

run: $(TARGET)
	qemu-ppdl -g $(PORT) $(TARGET) &
	nm-gdb 	-ex='target remote localhost:$(PORT)' -q \
		-ex='set disassemble-next-line on' \
		-ex='set confirm off' \
		-ex='load $(TARGET)' \
		-ex='file $(TARGET)' \
		-ex='b*(start+6)' \
		-ex='cont' \
		-ex='p/x $$gr7' \
		-ex='quit'

debug: $(TARGET)
	qemu-ppdl -g $(PORT) $(TARGET) &
	nm-gdb 	-ex='target remote localhost:$(PORT)' -q \
		-ex='set disassemble-next-line on' \
		-ex='set confirm off' \
		-ex='load $(TARGET)' \
		-ex='file $(TARGET)' \
		-ex='b*(start+6)' \
		-ex='b*(0x64)' \
                -ex='cont' \
                
 
                
nmgdb:
	qemu-ppdl -g $(PORT) $(TARGET) &
	nm-gdb -x=1 -q

dump: $(TARGET)
	nmc-objdump -D $(TARGET) > dump
