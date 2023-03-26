//
//  NameListView.swift
//  SampleXcodeCloudTest
//
//  Created by Marcos on 3/25/23.
//

import SwiftUI

struct NameListView: View {
    var body: some View {
        List {
            LabeledContent("Marcos", value: 1, format: .number)
            
            LabeledContent("Antoni", value: 2, format: .number)
        }
        .navigationTitle("Names")
        #if os(iOS)
        .listStyle(.grouped)
        #endif
    }
}

struct NameListView_Previews: PreviewProvider {
    static var previews: some View {
        NameListView()
    }
}
