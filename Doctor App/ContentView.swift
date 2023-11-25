//
//  ContentView.swift
//  Doctor App
//
//  Created by Абдуллах Алимов on 16.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Name"
    
    var body: some
    View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Hello,")
                            .font(.system(size: 16))
                            .foregroundColor(PaletteText.secondary)
                        Spacer()
                            .frame(height: 6)
                        Text("Hi " + name)
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(PaletteText.primary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                    Image("user_picture")
                        .resizable()
                        .frame(width: 56, height: 56)
                        .clipShape(Circle())
                }
                Spacer()
                    .frame(height: 32)
                DoctorCard()
                Spacer()
                    .frame(height: 20)
                SearchField()
                Spacer()
                    .frame(height: 24)
                CategoryList()
                Spacer()
                    .frame(height: 32)
                NearDoctorList()
            }
            .padding()
            .edgesIgnoringSafeArea(.top)
            .frame(maxHeight: .infinity)
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
