//
//  CategoryView.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//

import SwiftUI

struct CategoryView: View {

    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        HStack(alignment: .top, spacing: 35) {
                VStack(alignment: .leading) {
                    Text("Total distance")
                        .font(Font.custom("SKODANext-Regular", size: 10))
                        .foregroundStyle(Color("Username"))
                    Text("250 km")
                        .font(Font.custom("SKODANext-Bold", size: 16))
                        
                        .foregroundStyle(Color("Username"))
                }
                .padding(.leading, 10)
            
                VStack(alignment: .leading) {
                    Text("Average speed")
                        .font(Font.custom("SKODANext-Regular", size: 10))
                        .foregroundStyle(Color("Username"))
                    Text("50 Km/hr")
                        .font(Font.custom("SKODANext-Bold", size: 16))
                        
                        .foregroundStyle(Color("Username"))
                }
                .padding(.leading, 10)
            
                VStack(alignment: .leading) {
                    Text("Mileage")
                        .font(Font.custom("SKODANext-Regular", size: 10))
                        .foregroundStyle(Color("Username"))
                    Text("18 Km/hr")
                        .font(Font.custom("SKODANext-Bold", size: 16))
                        
                        .foregroundStyle(Color("Username"))
                }
                .padding(.leading, 10)
       
        
      }
      .padding(.horizontal, 24)
      .frame(height: height)
      .cornerRadius(25)
      .padding(.horizontal, 24)
      .border(Color("CategoryViewBorder"), width: 0.5)
      .background(.white)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(width: 375, height: 75)
    }
}
