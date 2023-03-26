//
//  AppSidebarView.swift
//  SampleXcodeCloudTest
//
//  Created by Marcos on 3/25/23.
//

import SwiftUI

struct AppSidebarView: View {
    var body: some View {
        NavigationSplitView {
            List {
                Label("Names", systemImage: "person.3.fill")
            }
        } detail: {
            NameListView()
        }
    }
}

struct AppSidebarView_Previews: PreviewProvider {
    static var previews: some View {
        AppSidebarView()
    }
}
