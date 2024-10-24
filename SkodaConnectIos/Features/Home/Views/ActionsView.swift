//
//  CategoryView.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//

import SwiftUI

struct ActionsView: View {

    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        HStack(alignment: .top, spacing: 35) {
                VStack(alignment: .leading) {
                    Image(.engine)
                        .frame(width: 40,height: 40)
                    Text("Engine Off")
                        .font(Font.custom("SKODANext-Bold", size: 16))
                        
                        .foregroundStyle(Color("Username"))
                    Text("Engine Off")
                        .font(Font.custom("SKODANext-Bold", size: 16))
                        
                        .foregroundStyle(Color("Username"))
                }
                .padding(.leading, 10)
            
            VStack(alignment: .leading) {
                Image(.lock)
                    .frame(width: 40,height: 40)
                Text("Engine Off")
                    .font(Font.custom("SKODANext-Bold", size: 16))
                    
                    .foregroundStyle(Color("Username"))
                Text("Engine Off")
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

struct ActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ActionsView(width: 375, height: 75)
    }
}
