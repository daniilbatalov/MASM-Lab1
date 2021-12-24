		title		hello
		assume 		cs:c, ds:d, ss:s

s 		segment 	stack
		dw 			128 dup (?)
s 		ends

d 		segment
msg		db			'***************', 0dh, 0ah, '*hello, world!*',0dh, 0ah, '***************$' 
d 		ends

c 		segment
start:  mov			ax, d
		mov			ds, ax

		mov			ah, 9
		lea			dx, msg
		int			21H

		mov			ah, 4ch
		int			21H
c 		ends
		end 		start	 