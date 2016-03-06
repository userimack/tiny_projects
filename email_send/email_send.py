# Send mail using python with subject

import smtplib
import os

fromaddr = os.environ['email_id']
toaddrs = ['mahendra.k12@gmail.com','mahendrarao741@gmail.com']  #to send a mail to  multiple user
#toaddrs = 'mahendrarao741@gmail.com' #to send to a single user

subject = 'Mail from Terminal'
body = 'Hello From Terminal'

msg = 'Subject: %s\n\n%s' % (subject, body)


#Credentials
username = os.environ['email_id']
password = os.environ['email_passwd']

# The actual mail send 
server = smtplib.SMTP('smtp.gmail.com:587')
server.starttls()
server.login(username,password)
server.sendmail(fromaddr, toaddrs, msg)
server.quit()

print("Success")

