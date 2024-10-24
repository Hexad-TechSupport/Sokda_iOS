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
        HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Image(.engine)
                        .frame(width: 32,height: 32)
                        .padding(.top, 10)
                        .padding(.leading, 10)

                    Text("Engine Off")
                        .font(Font.custom("SKODANext-Bold", size: 16))
                        
                        .foregroundStyle(Color("Username"))
                        .padding(.leading, 10)

                    Text("Engine status is in rest mode")
                        .font(Font.custom("SKODANext-Regular", size: 8))
                        
                        .foregroundStyle(Color("Username"))
                        .padding(.bottom, 10)
                        .padding(.leading, 10)
                }
                .border(Color("CategoryViewBorder"), width: 0.5)
                .padding(.horizontal, 10)
                .frame(width: width / 2.0)


            
            VStack(alignment: .leading) {
                Image(.lock)
                    .frame(width: 32,height: 32)
                    .padding(.top, 10)
                    .padding(.leading, 10)
                Text("Engine Off")
                    .font(Font.custom("SKODANext-Bold", size: 16))
                    
                    .foregroundStyle(Color("Username"))
                    .padding(.leading, 10)

                Text("Tap on the lock icon to unlock your car")
                    .font(Font.custom("SKODANext-Regular", size: 8))
                    .padding(.bottom, 10)
                    .foregroundStyle(Color("Username"))
                    .padding(.leading, 10)
            }
            .border(Color("CategoryViewBorder"), width: 0.5)
            .padding(.horizontal, 10)
            .frame(width: width / 2.0)
      }
      .background(.white)
    }
}

struct ActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ActionsView(width: 375, height: 75)
    }
}
