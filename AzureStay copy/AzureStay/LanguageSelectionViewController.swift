import UIKit

class LanguageSelectionViewController: UIViewController {

    // IBOutlet for the switch to toggle dark mode
    @IBOutlet weak var darkModeSwitch: UISwitch!

    @IBAction func switchToEnglish(_ sender: UIButton) {
        LanguageManager.shared.setLanguage("en")
        notifyLanguageChange()
        updateUIForCurrentLanguage() // Update UI immediately
    }

    @IBAction func switchToThai(_ sender: UIButton) {
        LanguageManager.shared.setLanguage("th")
        notifyLanguageChange()
        updateUIForCurrentLanguage() // Update UI immediately
    }

    @IBAction func toggleDarkMode(_ sender: UISwitch) {
        if sender.isOn {
            // Set the app's color scheme to dark mode
            overrideUserInterfaceStyle = .dark
            // Optionally save the dark mode preference
            UserDefaults.standard.set(true, forKey: "isDarkModeEnabled")
        } else {
            // Set the app's color scheme to light mode
            overrideUserInterfaceStyle = .light
            // Optionally save the light mode preference
            UserDefaults.standard.set(false, forKey: "isDarkModeEnabled")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIForCurrentLanguage() // Ensure the UI reflects the current language
        
        // Load the current dark mode preference
        let isDarkModeEnabled = UserDefaults.standard.bool(forKey: "isDarkModeEnabled")
        darkModeSwitch.isOn = isDarkModeEnabled
        overrideUserInterfaceStyle = isDarkModeEnabled ? .dark : .light
    }

    private func notifyLanguageChange() {
        NotificationCenter.default.post(name: NSNotification.Name("LanguageChanged"), object: nil)
    }

    private func updateUIForCurrentLanguage() {
        // Update the UI elements to reflect the selected language
        self.title = NSLocalizedString("LanguageSelectionTitle", comment: "")
    }
}
