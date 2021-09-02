//
//  Tabbar.swift
//  Trackmymoney
//
//  Created by Eesha Patel on 2021-09-02.
//

import SwiftUI

struct Tabbar: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.blue
        }
    var body: some View {
        TabView {
                    ContentView()
                        .tabItem {
                            Label("Expences", systemImage: "wallet.pass")
                        }

                    Progress()
                        .tabItem {
                            Label("Track", systemImage: "sun.min.fill")
                        }
                }
        .accentColor(.white)
}
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
