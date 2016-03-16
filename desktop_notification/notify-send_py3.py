from gi.repository import GObject
# to supress a warning PyGIWarning: Notify was imported without specifying a version first. Use gi.require_version('Notify', '0.7')
import gi
gi.require_version('Notify', '0.7')
from gi.repository import Notify

class MyClass(GObject.Object):
	def __init__(self):
		super(MyClass, self).__init__()
		#initialisation with app name
		Notify.init("app")

	def send_notification(self, title, text, file_path_to_icon=""):
		n = Notify.Notification.new(title, text, file_path_to_icon)
		n.show()

my = MyClass()
my.send_notification("Title", "This is some text","~/1.jpg")