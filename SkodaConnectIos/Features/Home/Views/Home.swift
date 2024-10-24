//
//  Home.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//


import SwiftUI
import Charts

struct DashboardView: View {
  
  @State private var resize = false
  
  var body: some View {
    VStack {
      GeometryReader { geometry in
        
        let viewWidth = geometry.size.width
        let viewHeight = geometry.size.height
        
        ScrollView {
            VStack {
                HeaderView(width: viewWidth, height: viewHeight)
                      .padding(.top, 60)
              DetailView(width: viewWidth, height: 225)

                  CategoryView(width: viewWidth, height: 71)
                      .padding(.top, 200)
                ActionsView(width: viewWidth, height: 71)
                    .padding(.top, 10)
            }
         
          
          //TextView(text: Constants.overview)
          
//          ChartView(width: viewWidth, height: resize ? viewHeight * 2 : viewHeight)
//            .onTapGesture {
//              withAnimation(.spring()) {
//                resize.toggle()
//              }
//            }

         // TextView(text: Constants.details)
          
        }
      }
      .edgesIgnoringSafeArea(.top)
    }
  }
}

struct DashboardView_Previews: PreviewProvider {
  static var previews: some View {
    DashboardView()
  }
}
