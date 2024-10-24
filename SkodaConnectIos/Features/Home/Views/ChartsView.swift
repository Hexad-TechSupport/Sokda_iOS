//
//  ChartsView.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//

import SwiftUI
import Charts

struct ChartView: View {
  var width: CGFloat
  var height: CGFloat
    let weekdays = Calendar.current.shortWeekdaySymbols
        let steps = [20, 12, 30, 25, 16, 8, 14]
//  @State var chartItems: [ChartItem] = chart_items
  
  var body: some View {
      VStack {
          GroupBox("Driving data") {
              Chart {
                          ForEach(weekdays.indices, id: \.self) { index in
                              BarMark(x: .value("Day", weekdays[index]), y: .value("Steps", steps[index]), width: .fixed(10))
                                  .cornerRadius(5)
                                  .annotation {
                                      Text("\(steps[index]) km")
                                          .font(Font.custom("SKODANext-Bold", size: 10))
                                  }
                          }
                      }
              .chartYAxis(.hidden)
              .chartYAxis {
              AxisMarks(stroke: StrokeStyle(lineWidth: 0))
              }
              .chartXAxis {
              AxisMarks(stroke: StrokeStyle(lineWidth: 0))
              }
          }
          .backgroundStyle(Color.white)
    }
      .frame(width: width, height: height, alignment: .top)
  }
}

struct ChartView_Previews: PreviewProvider {
  static var previews: some View {
    ChartView(width: 400, height: 1000)
  }
}
