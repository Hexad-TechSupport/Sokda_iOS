//
//  CategoryView.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//

import SwiftUI

struct ServicesView: View {

    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        HStack(alignment: .top) {
            Button(
                action: {
                    
                },
                label: {
                    VStack(alignment: .leading) {
                        Image(.fuelStation)
                            .frame(width: 40,height: 40)
                            .padding(.top, 10)
                            .padding(.horizontal, 10)
                        Text("Near by")
                            .font(Font.custom("SKODANext-Regular", size: 12))
                            .foregroundStyle(Color("Username"))
                            .padding(.horizontal, 10)
                        HStack {
                            Text("Fuel Stations")
                                .font(Font.custom("SKODANext-Bold", size: 16))
                                .foregroundStyle(Color("Username"))
                            Spacer()
                            Image(.arrow)
                                .padding(.trailing, 0)
                           
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                    }
                    .cornerRadius(10)
                    .border(Color("CategoryViewBorder"), width: 0.5)
                }
                )
                

            Button(
                action: {
                    
                },
                label: {
                    VStack(alignment: .leading) {
                        Image(.parking)
                            .frame(width: 40,height: 40)
                            .padding(.top, 10)
                            .padding(.horizontal, 10)
                        Text("Near by")
                            .font(Font.custom("SKODANext-Regular", size: 12))
                            .padding(.horizontal, 10)
                            .foregroundStyle(Color("Username"))
                        HStack {
                            Text("Parking Stations")
                                .font(Font.custom("SKODANext-Bold", size: 16))
                                .foregroundStyle(Color("Username"))
                            
                            Spacer()
                            Image(.arrow)
                                .padding(.trailing, 0)
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                    }
                    .cornerRadius(10)
                    .border(Color("CategoryViewBorder"), width: 0.5)
                })
      }
      .padding(.horizontal, 10)
    }
}

struct ServicesView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView(width: 375, height: 75)
    }
}
