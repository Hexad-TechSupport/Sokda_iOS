//
//  TextView.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//

import SwiftUI

struct TextView: View {
  
  var text: String
  
    var body: some View {
      HStack {
        Text(text)
          .font(.system(size: 17, weight: .semibold))
          .foregroundColor(.gray)
        Spacer()
      }
      .padding(.top, 14)
      .padding(.horizontal, 15)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
      TextView(text: "Details: ")
        .border(.black)
    }
}
