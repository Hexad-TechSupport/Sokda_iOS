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
                ActionsView(width: viewWidth, height: 100)
                    .padding(.top, 10)
                ServicesView(width: viewWidth, height: 100)
                    .padding(.top, 10)
                ChartView(width: viewWidth, height: 500)
            }
         
          
          
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
