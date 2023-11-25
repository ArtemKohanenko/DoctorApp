import Foundation
import SwiftUI

struct NearDoctorCard: View {
    var doctorData: DoctorData;
    var body: some
    View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Color.white
                    .clipShape(Circle())
                    .frame(width: 48, height: 48)
                    .overlay(
                        Image(doctorData.pictureName)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 48, height: 48)
                    )
                VStack(alignment: .leading) {
                    Text(doctorData.name)
                        .foregroundColor(PaletteText.primary)
                        .font(.system(size: 16))
                        .bold()
                        .lineLimit(1)
                    Text(doctorData.speciality)
                        .foregroundColor(PaletteText.secondary)
                        .font(.system(size: 14))
                        .lineLimit(1)
                    
                }
                Spacer()
                HStack(spacing: 8) {
                    Text(String(doctorData.distance) + " KM")
                        .foregroundColor(PaletteText.secondary)
                        .font(.system(size: 14))
                    Image("location").frame(width: 16, height: 16)
                    
                }
                
                
            }
            Color.white.opacity(0.15)
                .frame(width: .infinity, height: 1)
            HStack {
                Image("clock_color1")
                    .frame(width: 16, height: 16)
                Spacer()
                    .frame(width: 8)
                Text(String(doctorData.rate) + " (" + String(doctorData.reviewCount) + " Reviews)")
                    .foregroundColor(PaletteText.colored1)
                    .font(.system(size: 12))
                Spacer()
                    .frame(width: 12)
                Image("clock_color2")
                    .frame(width: 16, height: 16)
                Spacer()
                    .frame(width: 8)
                Text("Open at " + doctorData.openAt)
                    .foregroundColor(PaletteText.colored2)
                    .font(.system(size: 12))
                
            }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .padding(.horizontal, 16)
            .shadow(color: Palette.shadow, radius: 2, x: 12, y: 20)
            .background(Palette.background)
            .cornerRadius(10)
        }
}
