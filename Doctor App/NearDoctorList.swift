import Foundation
import SwiftUI

struct DoctorData: Hashable {
    let pictureName: String
    let name: String
    let speciality: String
    let distance: Float
    let rate: Float
    let reviewCount: Int
    let openAt: String
    
}

let doctors = [
    DoctorData(pictureName: "doctor_picture", name : "Dr. Joseph Brostito", speciality: "Dental Specialist", distance: 1.2, rate: 4.8, reviewCount: 120, openAt: "17.00"),
    DoctorData(pictureName: "doctor-picture2", name : "Dr. Imran Syahir", speciality: "General Doctor", distance: 1.2, rate: 4.8, reviewCount: 120, openAt: "17.00")]

struct NearDoctorList: View {

    var body: some
    View {
        HStack(spacing: 13) {
            VStack(alignment: .leading) {
                Text("Near Doctor")
                    .font(.system(size: 15))
                    .bold()
                Spacer()
                    .frame(height: 16)
                ForEach(doctors, id:\.self) {
                    item in
                    NearDoctorCard(doctorData: item).padding(.bottom, 12)
                }
                
            }
        }
    }
}
