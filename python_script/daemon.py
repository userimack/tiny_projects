#!/usr/bin/env python
import daemon
import time

def task():
    while True:
    	with open("/tmp/test.txt", "w") as f:
        	f.write("The program is running silently. This file is created at " + time.ctime())
        time.sleep(20)

def startDaemon():
    with daemon.DaemonContext():
        task()

if __name__ == "__main__":
    startDaemon()
