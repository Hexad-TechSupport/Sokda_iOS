//
//  DetailView.swift
//  SkodaConnectIos
//
//  Created by Mohit mathur on 24/10/24.
//

import SwiftUI

struct DetailView: View {
  
  var width: CGFloat
  var height: CGFloat
  
  let periods = ["Week", "Month", "Year"]
  let values = ["+48%", "+72%", "+93%"]
  let colors = [Color.gray, Color.green, Color.red]
  
    var body: some View {
        VStack {
          GeometryReader { geometry in
            
            let viewWidth = geometry.size.width
            
              Image(.carDetail)
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: viewWidth, height: 200, alignment: .top)
          }
          .edgesIgnoringSafeArea(.top)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
      DetailView(width: 400, height: 800)
    }
}
