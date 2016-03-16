#gi.require_version('Notify', '0.7')
from gi.repository import Notify

#initialization
Notify.init("first_program")

# Notification object
summary = "Hello World!!" # title
body = "First Program using desktop notification"
notification = Notify.Notification.new(
	summary,
	body,# Optional
	)

# to show on the screen
notification.show()