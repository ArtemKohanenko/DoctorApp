import Foundation
import SwiftUI

struct SearchField: View {
    @State private var text: String = ""
    var body: some
    View {
        HStack {
            Image("search-normal")
            Spacer()
                .frame(width: 12)
            TextField("Search doctor or health issue", text: $text)
            .font(.system(size: 15))
            
        }
        .foregroundColor(Palette.secondary)
        .cornerRadius(16)
        .padding(16)

    }
}
