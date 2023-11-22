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
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello,")
                        .font(.subheadline)
                        .foregroundColor(PaletteText.secondary)
                    Spacer()
                        .frame(height: 6)
                    Text("Hi " + name)
                        .font(.title)
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
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Color.white
                        .clipShape(Circle())
                        .frame(width: 48, height: 48)
                        .overlay(
                            Image("doctor_picture")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 48, height: 48)
                        )
                    VStack(alignment: .leading) {
                        Text("Dr. Imran Syahir")
                            .foregroundColor(PaletteText.lightPrimary)
                            .bold()
                        Text("General Doctor")
                            .foregroundColor(PaletteText.lightSecondary)
                    }
                }
                Color.white.opacity(0.15)
                    .frame(width: .infinity, height: 1)
                HStack {
                    Image("calendar-2")
                        .frame(width: 16, height: 16)
                    Spacer()
                        .frame(width: 8)
                    Text("Sundat 12, June")
                        .foregroundColor(PaletteText.lightPrimary)
                    Spacer()
                        .frame(width: 12)
                    Text("11:00 - 12:00 AM")
                        .foregroundColor(PaletteText.lightPrimary)
                }
            }
            .padding(20)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Palette.primary))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
