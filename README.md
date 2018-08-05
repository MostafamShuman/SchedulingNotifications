# SchedulingNotificationsiOS
in order to send Scheduling notifications in your app, you need  to .. 
- import  notifications framework:  by import UserNotifications

- manage notifications through a shared UNUserNotificationCenter object:  UNUserNotificationCenter.current()

- Authorization :  you need to have the user’s permission for the types of notification

- The framework calls the completion handler with a boolean indicating if the access was granted and an error object which will be nil if no error occurred.

- Creating A Notification Request contains content and a trigger condition 

- Content: class UNMutableNotificationContent. This has lots of properties like [title, body, sound] that customize the way the alert looks and works

- Trigger: can be a calendar trigger that shows the notification at an exact time, it can be an interval trigger that shows the notification after a certain time interval has lapsed, or it can be a geofence that shows the notification based on the user’s location.

- Scheduling With both the content and trigger ready we create a new notification request and add it to the notification center. Each notification request requires a string identifier for future reference
