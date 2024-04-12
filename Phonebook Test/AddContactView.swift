//
//  AddContactView.swift
//  Phonebook Test
//
//  Created by besim on 11/04/2024.
//

import SwiftUI

struct AddContactView: View {
    
    @Binding var isPresented: Bool
    @ObservedObject var contactManager: ContactManager
    
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var phoneNumber: String = ""
    @State private var notes: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Number", text: $phoneNumber)
                        .keyboardType(.phonePad)
                }
                
                Section(header: Text("Notes")) {
                    TextEditor(text: $notes)
                        .frame(height: 100)
                }
            }
            .navigationTitle("New Contact")
            .navigationBarItems(leading: cancelButton, trailing: saveButton)
        }
    }
    
    
    var cancelButton: some View {
        Button("Cancel") {
            isPresented = false
        }
    }
    
    
    var saveButton: some View {
           Button("Save") {
               let newContact = Contact(name: "\(firstName) \(lastName)", phoneNumber:  phoneNumber, notes: notes.isEmpty ? nil : notes)
               contactManager.addContact(contact: newContact)
               isPresented = false
           }
           .disabled(!isFormValid)
       }
    
    private var isFormValid: Bool {
            !firstName.isEmpty && !lastName.isEmpty && !phoneNumber.isEmpty
        }
}
