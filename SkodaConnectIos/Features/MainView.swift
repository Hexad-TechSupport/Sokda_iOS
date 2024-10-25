import SwiftUI

struct MainView: View {
    var body: some View {
            TabView {
                NavigationStack {
                    DashboardView()
                }
                .tabItem {
                    Label("Home", image: "HomeSelected")
                }

                NavigationStack {
                    DashboardView()
                }
                .tabItem {
                    Label("Data", image: "Data")
                }
                
                NavigationStack {
                    DashboardView()
                }
                .tabItem {
                    Label("Stations", image: "Stations")
                }
                
                NavigationStack {
                    DashboardView()
                }
                .tabItem {
                    Label("Profile", image: "Profile")
                }
            }
        }
}

#Preview {
    LoginScreen()
    //    MainView()
}
