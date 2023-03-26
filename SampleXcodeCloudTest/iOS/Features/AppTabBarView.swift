//
//  AppTabBarView.swift
//  SampleXcodeCloudTest
//
//  Created by Marcos on 3/25/23.
//

import SwiftUI

struct AppTabBarView: View {
    var body: some View {
        TabView {
            NavigationStack {
                NameListView()
            }
            .tabItem {
                Label("Names", systemImage: "person.3.fill")
            }
        }
    }
}

struct AppTabBar_Previews: PreviewProvider {
    static var previews: some View {
        AppTabBarView()
    }
}
