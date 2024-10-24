//
//  HeaderView.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//

import SwiftUI

struct HeaderView: View {
    
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        
        ZStack {
            VStack {
                Button(
                    action: {
                        
                    },
                    label: {
                        HStack {
                            Image(.profileSample)
                                .frame(width: 40,height: 40)
                            Spacer()
                            VStack(alignment: .leading) {
                                Text("Hello Sam,")
                                    .font(Font.custom("SKODANext-Bold", size: 16))
                                    .foregroundStyle(Color("Username"))
                                Text("Welcome back!")
                                    .font(Font.custom("SKODANext-Regular", size: 16))
                                    .foregroundStyle(Color("Username"))
                            }
                            
                            HStack {
                                Spacer()
                                Image(.arrow)
                                    .padding(.trailing, 0)
                            }
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 15)
                        
                    }
                )
            }
        }
        .frame(width: width, height: 100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        
        GeometryReader { geometry in
            HeaderView(width: geometry.size.width, height: geometry.size.height)
                .previewLayout(PreviewLayout.sizeThatFits)
        }
        .edgesIgnoringSafeArea(.top)
    }
}
