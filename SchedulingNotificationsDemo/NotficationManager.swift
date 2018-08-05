//
//  NotficationManager.swift
//  SchedulingNotificationsDemo
//
//  Created by Mostafa Shuman on 8/5/18.
//  Copyright © 2018 Mostafa Shuman. All rights reserved.
//

import Foundation
import UserNotifications

class NotficationManager: NSObject {
    
    static let shared: NotficationManager = NotficationManager()
    
    let center = UNUserNotificationCenter.current()
    
    private override init() {}
    
    // MARK:- request Authorization
    func requestAuthorization(){
        //  when the user has granted or denied your permissions request. This will be given two parameters: a boolean that will be true if permission was granted, and an Error? containing a message if something went wrong.
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            if granted {
                print("Permession Granted")
            }
        }
    }
    
    // MARK:- Configration of Trigger and Content
    func sendLocalNotfication(){
        /* DateComponents: where you specify a day, a month, an hour, a minute, or any combination of those to produce specific times.
         Note : if ask for the notification to be repeated and don’t specify a day, you will create a repeating alarm at specific time everyday
        */
        var dateComponents = DateComponents()
        dateComponents.hour = 2   // 2 am
        dateComponents.minute = 00 // 2:00 am 🕑 
        // Config Trigger
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        // Config Content
        let content = UNMutableNotificationContent()
        content.title = "Late wake up call"
        content.body = "The early bird catches the worm, but the second mouse gets the cheese."
        content.categoryIdentifier = "alarm"
        content.sound = UNNotificationSound.default()
        
        //
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    
    // MARK:- Remove all pending notification requests
    func removeAllPendingNotificationRequests(){
        //  you can cancel pending notifications
        center.removeAllPendingNotificationRequests()
    }
}
