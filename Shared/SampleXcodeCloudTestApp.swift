//
//  SampleXcodeCloudTestApp.swift
//  SampleXcodeCloudTest
//
//  Created by Marcos on 3/25/23.
//

import SwiftUI

@main
struct SampleXcodeCloudTestApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(iOS)
            AppTabBarView()
            #else
            AppSidebarView()
            #endif
        }
    }
}
