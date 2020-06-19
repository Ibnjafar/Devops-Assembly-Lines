#! /bin/bash/python3
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
mail_content = '''
Hi developer, There is an issue in your code.Testing failed.
'''
sender_address = 'codetester@gmail.com'
sender_pass = 'secret'
receiver_address = 'devuser@gmail.com'

message = MIMEMultipart()
message['From'] = sender_address
message['To'] = receiver_address
message['Subject'] = 'Code Testing Status'

message.attach(MIMEText(mail_content,'plain'))
session = smtplib.SMTP('smtp.gmail.com',587)
session.starttls()
session.login(sender_address,sender_pass)
text=message.as_string()
session.sendmail(sender_address,receiver_address,text)
session.quit()
print('Mail Sent')  


