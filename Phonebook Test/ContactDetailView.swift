//
//  ContactDetailView.swift
//  Phonebook Test
//
//  Created by besim on 11/04/2024.
//

import SwiftUI

struct ContactDetailView: View {
    let contact: Contact
       
       var body: some View {
           VStack(alignment: .leading) {
               Text(contact.name)
                   .font(.title)
               Text(contact.phoneNumber)
                   .font(.subheadline)
               Text(contact.notes ?? "")
                   .font(.subheadline)
               Spacer()
           }
           .padding()
           .navigationTitle(contact.name)
       }
   }

//#Preview {
//    ContactDetailView()
//}
