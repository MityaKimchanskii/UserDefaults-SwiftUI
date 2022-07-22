//
//  ContentView.swift
//  UserDefaults-SwiftUI
//
//  Created by Mitya Kim on 7/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var settingsVM = SettingsViewModel()
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Toggle(isOn: self.$settingsVM.isOn) {
                Text("")
            }.fixedSize()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(self.$settingsVM.isOn.wrappedValue ? .green : .red)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
