# we import the Twilio client from the dependency we just installed
from twilio.rest import TwilioRestClient
import os

# the following line needs your Twilio Account SID and Auth Token
client = TwilioRestClient(os.getenv("twilio_sid"), os.getenv("twilio_token"))

# change the "from_" number to your Twilio number and the "to" number
# to the phone number you signed up for Twilio with, or upgrade your
# account to send SMS to any phone number
client.messages.create(to="Number", from_="Twilio Account Phone Number", 
                       body="Hello from Python!",
                       media_url="https://pbs.twimg.com/profile_images/708998363207741440/ehserHXr.jpg")
