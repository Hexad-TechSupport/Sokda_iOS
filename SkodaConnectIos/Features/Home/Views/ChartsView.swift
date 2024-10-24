////
////  ChartsView.swift
////  SkodaConnectIos
////
////  Created by Mohit mathur on 24/10/24.
////
//
//import SwiftUI
//import Charts
//
//struct ChartView: View {
//  var width: CGFloat
//  var height: CGFloat
//  
//  @State var chartItems: [ChartItem] = chart_items
//  
//  var body: some View {
//    HStack {
//      Chart(chartItems) { item in
//        LineMark(
//          x: .value("Department", item.type),
//          y: .value("Profit", item.value)
//        )
//        .foregroundStyle(Color.purple.gradient)
//        
//        PointMark(
//          x: .value("Department", item.type),
//          y: .value("Profit", item.value)
//        )
//        .foregroundStyle(Color.purple.gradient)
//      }
//      .frame(width: width - 48, height: height / 4)
//    }
//  }
//}
//
//struct ChartView_Previews: PreviewProvider {
//  static var previews: some View {
//    ChartView(width: 400, height: 1000)
//  }
//}
