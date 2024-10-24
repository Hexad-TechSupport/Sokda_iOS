////
////  CategoriesView.swift
////  SkodaConnectIos
////
////  Created by dhananjay-m-create on 23/10/24.
////
//
//import SwiftUI
//
//struct CategoriesView: View {
//  
//  let colors = [Color.purple, .gray, .pink, .yellow, .cyan]
//  let images = ["chart.bar", "calendar", "person.2", "envelope", "message"]
//  let texts = ["Overview", "Calendar", "Customers", "Products", "Messages"]
//  
//  var width: CGFloat
//  var height: CGFloat
//  
//  var body: some View {
//    ScrollView(.horizontal, showsIndicators: false) {
//      HStack {
//        ForEach(colors.indices, id: \.self) { i in
//          CategoryView(
//            image: images[i],
//            text: texts[i],
//            color: colors[i]
//          )
//        }
//      }
//      .padding(.horizontal, 10)
//    }
//    .frame(width: width, height: height / 8)
//    .offset(y: 5)
//  }
//}
//
//struct CategoriesView_Previews: PreviewProvider {
//  static var previews: some View {
//    
//    GeometryReader { geometry in
//      CategoriesView(width: geometry.size.width, height: 150)
//        .previewLayout(.sizeThatFits)
//    }
//    .padding(.top, 350)
//    .edgesIgnoringSafeArea(.top)
//  }
//}
