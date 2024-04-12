//
//  TabBarView.swift
//  Phonebook Test
//
//  Created by besim on 11/04/2024.
//

import SwiftUI

enum Tab: String, CaseIterable{
    case star = "star"
    case clock = "clock"
    case person = "person.circle"
    case keypad  = "circle.grid.3x3"
    case voicemail = "phone.down"
    
}

struct TabBarView: View {
    
    @Binding var selectedTab: Tab
    private var fillImage:String{
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases,id: \.rawValue){ tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .onTapGesture {
                            selectedTab = tab
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 40)
            .cornerRadius(10)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedTab: .constant(.star))
    }
}
