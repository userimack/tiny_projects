# Send mail using python

import smtplib 

content = "example email stuff here " 
mail = smtplib.SMTP ("smtp.gmail.com",587)
mail.ehlo()
mail.starttls()
mail.login('email' , "password" )
mail.sendmail ("fromemail" , "receviver" , content)
mail.close()﻿