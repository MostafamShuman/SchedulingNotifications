//
//  ViewController.swift
//  SchedulingNotificationsDemo
//
//  Created by Mostafa Shuman on 8/5/18.
//  Copyright © 2018 Mostafa Shuman. All rights reserved.
//

/*
 - first need to request permission, we're going to request an alert (a message to show)
 - Once you have user permission, you should config three things: content (what to show), a trigger (when to show it), and a request (the combination of content and trigger.)
NOTE:-
   Trigger: can be a calendar trigger that shows the notification at an exact time, it can be an interval trigger that shows the notification after a certain time interval has lapsed, or it can be a geofence that shows the notification based on the user’s location.
   Content: class UNMutableNotificationContent. This has lots of properties like [title, body, sound] that customize the way the alert looks and works
   Request: It is the combination of content and trigger, each notification also has a unique identifier. This is just a string you create, but it does need to be unique because it lets you update or remove notifications programmatically.
 
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1- Request Authorization 🔑🔐
        NotficationManager.shared.requestAuthorization()
        // 2- Config and fire notfication 🛠⚙️
        NotficationManager.shared.sendLocalNotfication()
    }


}

