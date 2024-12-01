import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            scrollView()
                .tabItem{
                    Image(systemName: "star")
                    Text("First")
                }
                .tag(1)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.white, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}

struct scrollView: View {
    var body: some View {
        VStack {
            ZStack {
                ScrollView {
                    VStack {
                        ForEach(1..<101) {
                            Text("\($0)")
                                .font(.custom("Menlo", size: 30))
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
                .contentMargins(.bottom, 50, for: .scrollContent)
                .contentMargins(.bottom, 50, for: .scrollIndicators)

                VStack {
                    Spacer()
                    Rectangle()
                        .frame(width: .infinity, height: 50)
                        .foregroundStyle(.red)
                        .opacity(0.85)
                }
            }
        }
    }
}
