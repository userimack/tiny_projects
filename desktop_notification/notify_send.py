 #This is a python script to use notify-send as a subprocess


#!/usr/bin/env python

import subprocess

def sendMesage(msg1,msg2):
	subprocess.Popen(['notify-send',msg1,msg2])
	return

if __name__=='__main__':
	msg1 = "Mahendra" 
	msg2 = "imack"
	sendMesage(msg1,msg2)

