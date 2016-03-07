# Send mail using python

import smtplib 


subject = 'Mail from Terminal'
body = 'Hello From Terminal'

content = 'Subject: %s\n\n%s' % (subject, body)

mail = smtplib.SMTP ("smtp.gmail.com",587)
mail.ehlo()
mail.starttls()
mail.login('email' , "password" )
mail.sendmail ("fromemail" , "receviver" , content)
mail.close()﻿
