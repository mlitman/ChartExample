//
//  CalendarVC.swift
//  SwiftChartsExample
//
//  Created by Michael Litman on 12/29/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit
import CalendarView
import SwiftMoment

class CalendarVC: UIViewController, CalendarViewDelegate
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let calendar = CalendarView(frame: CGRectMake(0, 100, CGRectGetWidth(view.frame), 320))
        calendar.delegate = self
        view.addSubview(calendar)
        // Do any additional setup after loading the view.
    }

    func calendarDidSelectDate(date: Moment)
    {
        title = date.format("MMMM d, yyyy")
        print(title)
    }
    
    func calendarDidPageToDate(date: Moment)
    {
        title = date.format("MMMM d, yyyy")
        print(title)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
