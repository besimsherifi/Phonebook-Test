//
//  MainView.swift
//  Phonebook Test
//
//  Created by besim on 11/04/2024.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedTab: Tab = .person
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    
    var body: some View {
        ZStack{
            VStack{
                TabView(selection: $selectedTab) {
                    ContentView()
                        .tag(Tab.star)
                    
                    ContentView()
                        .tag(Tab.clock)
                    
                    ContentView()
                        .tag(Tab.person)
                    
                    ContentView()
                        .tag(Tab.keypad)
                    
                    ContentView()
                        .tag(Tab.voicemail)
                    
                }
                Spacer()
                TabBarView(selectedTab: $selectedTab)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
