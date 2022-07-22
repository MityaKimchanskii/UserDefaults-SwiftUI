//
//  SettingsViewModel.swift
//  UserDefaults-SwiftUI
//
//  Created by Mitya Kim on 7/21/22.
//

import Foundation

class SettingsViewModel: ObservableObject {
    
    @Published var isOn: Bool = UserDefaults.standard.bool(forKey: "isOn") {
        didSet {
            UserDefaults.standard.set(self.isOn, forKey: "isOn")
        }
    }
    
}
