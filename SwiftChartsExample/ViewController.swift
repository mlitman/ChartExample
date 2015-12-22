//
//  ViewController.swift
//  SwiftChartsExample
//
//  Created by Michael Litman on 12/22/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit
import SwiftCharts

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let chartConfig = ChartConfigXY(
            xAxisConfig: ChartAxisConfig(from: 1, to: 7, by: 1),
            yAxisConfig: ChartAxisConfig(from: 0, to: 450, by: 2)
        )
        
        let chart = LineChart(
            frame: CGRectMake(0, 70, 300, 500),
            chartConfig: chartConfig,
            xTitle: "Days",
            yTitle: "Blood Sugar",
            lines: [
                (chartPoints: [(1.0, 60), (2, 240), (3, 100), (4, 120), (5, 160), (6, 115), (7, 300)], color: UIColor.redColor())
            ]
        )
        self.view.addSubview(chart.view)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

