//
//  ContentView.swift
//  Phonebook Test
//
//  Created by besim on 11/04/2024.
//

import SwiftUI


struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let phoneNumber: String
    let notes: String?
}


struct ContentView: View {
    
    @State private var showingAddContactView = false
    @StateObject private var contactManager = ContactManager()

    
    var body: some View {
        NavigationView {
            List(contactManager.contacts) { contact in
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    Text(contact.name)
                }
            }
            .navigationTitle("Contacts")
            .navigationBarItems(trailing: addButton)
        }
    }
    
    var addButton: some View {
           Button(action: {
               showingAddContactView = true
           }) {
               Image(systemName: "plus")
           }
           .sheet(isPresented: $showingAddContactView) {
               AddContactView(isPresented: $showingAddContactView, contactManager: contactManager)
           }
       }
}

#Preview {
    ContentView()
}
