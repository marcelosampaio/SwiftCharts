//
//  LineChartController.swift
//  SwiftCharts
//
//  Created by Marcelo Sampaio on 13/08/19.
//  Copyright © 2019 Marcelo Sampaio. All rights reserved.
//

import UIKit
import Charts

class LineChartController: UIViewController {
    
    // MARK: - Properties
    private var numbers : [Double] = []

    // MARK: - Outlets
    @IBOutlet weak var lineChart: LineChartView!
    
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGraphInfo()
        updateGraph()
        
    }
    
    // MARK: - Graph Helper
    private func loadGraphInfo() {
        numbers.append(13.5)
        numbers.append(27.0)
        numbers.append(19.5)
        numbers.append(28.0)
        numbers.append(32.0)
    }
    
    private func updateGraph(){
        var lineChartEntry  = [ChartDataEntry]() //this is the Array that will eventually be displayed on the graph.
        
        
        //here is the for loop
        for i in 0..<numbers.count {
            
            let value = ChartDataEntry(x: Double(i), y: numbers[i]) // here we set the X and Y status in a data chart entry
            lineChartEntry.append(value) // here we add it to the data set
        }
        
        let line1 = LineChartDataSet(entries: lineChartEntry, label: "Number") //Here we convert lineChartEntry to a LineChartDataSet
        line1.colors = [NSUIColor.blue] //Sets the colour to blue
        
        let data = LineChartData() //This is the object that will be added to the chart
        data.addDataSet(line1) //Adds the line to the dataSet
        
        
        lineChart.data = data //finally - it adds the chart data to the chart and causes an update
        lineChart.chartDescription?.text = "Marcelo Sampaio" // Here we set the description for the graph
        
        // ---------
        lineChart.animate(xAxisDuration: 1.38)
        lineChart.isUserInteractionEnabled = false
    }

}
