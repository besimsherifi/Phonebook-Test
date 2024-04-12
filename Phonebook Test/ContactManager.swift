//
//  ContactManager.swift
//  Phonebook Test
//
//  Created by besim on 11/04/2024.
//

import Foundation

class ContactManager: ObservableObject{
    @Published var contacts: [Contact] = [
        Contact(name: "Charlie Brown", phoneNumber: "345-678-9012", notes: nil),
        Contact(name: "John Doe", phoneNumber: "345-678-9012", notes: nil)
    ]
    
    func addContact(contact: Contact){
        contacts.append(contact)
    }
}
