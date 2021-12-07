//
//  ContentView.swift
//  navigationSwifttUI
//
//  Created by Layla Emanuele on 06/12/21.
//
/** Link importante
 https://swiftwithmajid.com/2019/07/17/navigation-in-swiftui//
 */

import SwiftUI

struct Details: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        Group {
            Text("Details")
            Button("pop back") {
                self.presentation.wrappedValue.dismiss()
            }
        }
    }
}
struct ContentView: View {
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Details(), tag: 1, selection: $selection) {
                    Button("Press me") {
                        self.selection = 1
                    }
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
