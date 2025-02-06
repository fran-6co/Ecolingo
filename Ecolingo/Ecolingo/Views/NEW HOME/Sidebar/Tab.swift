import SwiftUI

struct HomeTab: Identifiable {
    let id = UUID()
    let name: String
    var icon: ImageResource
    let selected: Bool
}

let tabs: [HomeTab] = [
    HomeTab(name: "Home", icon: .homeIcon, selected: false),
    HomeTab(name: "Challenges", icon: .challengesIcon, selected: false),
    HomeTab(name: "Garden", icon: .gardenIcon, selected: false),
    HomeTab(name: "Profile", icon: .profileIcon, selected: false),
]
