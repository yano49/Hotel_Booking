//
//  LanguageManager.swift
//  AzureStay
//
//  Created by Knight on 28/9/2567 BE.
//

import Foundation
class LanguageManager {
    static let shared = LanguageManager()

    private init() {}

    func setLanguage(_ languageCode: String) {
        UserDefaults.standard.set([languageCode], forKey: "AppleLanguages")
        UserDefaults.standard.synchronize()
        
        // Notify the app to reload the localization
        NotificationCenter.default.post(name: NSNotification.Name("LanguageChanged"), object: nil)
    }

    func currentLanguage() -> String {
        return UserDefaults.standard.stringArray(forKey: "AppleLanguages")?.first ?? "en"
    }
}
