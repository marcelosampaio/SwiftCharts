//
//  PieChartController.swift
//  SwiftCharts
//
//  Created by Marcelo Sampaio on 13/08/19.
//  Copyright © 2019 Marcelo Sampaio. All rights reserved.
//

import UIKit
import Charts

class PieChartController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var pieChart: PieChartView!
    
    var xData = PieChartDataEntry(value: 0.0)
    var yData = PieChartDataEntry(value: 0.0)
    var zData = PieChartDataEntry(value: 0.0)
    
    var dataEntries = [PieChartDataEntry]()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareChart()
        
    }
    
    // MARK: - Chart Helper
    private func prepareChart() {
        pieChart.backgroundColor = UIColor.blue
        pieChart.holeColor = UIColor.brown
        
        // doghtnut hole
        pieChart.drawHoleEnabled = true
        pieChart.highlightPerTapEnabled = false
        
        // auto spin
        pieChart.spin(duration: 0.38, fromAngle: 0, toAngle: 180)
        
        // user cannot spin
        pieChart.isUserInteractionEnabled = false
    
        pieChart.chartDescription?.text = ""
        
        pieChart.maxAngle = 360
    
        // ------
        xData.value = 130
        xData.label = "X"
        
        yData.value = 20
        yData.label = "Y"
        
        zData.value = 50
        zData.label = "Z"
        
        
        // ------
        dataEntries = [xData, yData, zData]
        updateChartData()
    }

    private func updateChartData() {
        let chartDataSet = PieChartDataSet(entries: dataEntries, label: "")
        let chartData = PieChartData(dataSet: chartDataSet)
        
        let colors = [UIColor.red, UIColor.orange, UIColor.purple]
        chartDataSet.colors = colors
        
        
        //
        pieChart.data = chartData
        
    }
    
}

