# A python script to use python-notify a package for ubuntu install it from packages in ubuntu

import pynotify

def sendMessgae(title, msg):
	pynotify.init("Test") 
	notice = pynotify.Notification(title, msg)
	notice.show()
	return