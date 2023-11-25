import Foundation
import SwiftUI

struct DoctorCard: View {

    var body: some
    View {
            
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
                            .font(.system(size: 16))
                            .bold()
                            .lineLimit(1)
                        Text("General Doctor")
                            .foregroundColor(PaletteText.lightSecondary)
                            .font(.system(size: 14))
                            .lineLimit(1)
                    }.frame(width: .infinity)
                    Spacer()
                    Button(action: {}) {
                        Image("arrow-right").frame(width: 24, height: 24)                    }
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
                        .font(.system(size: 12))
                    Spacer()
                        .frame(width: 12)
                    Image("clock")
                        .frame(width: 16, height: 16)
                    Spacer()
                        .frame(width: 8)
                    Text("11:00 - 12:00 AM")
                        .foregroundColor(PaletteText.lightPrimary)
                    .font(.system(size: 12))                }
            }
            .frame(maxWidth: .infinity)
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Palette.primary))
        }	
}
