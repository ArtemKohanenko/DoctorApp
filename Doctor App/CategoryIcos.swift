import Foundation
import SwiftUI

struct CategoryIcons: View {

    var body: some
    View {
        VStack {
            Image("sun")
                .frame(width: 24, height: 24)
        }
        .padding(24)
        .clipShape(Circle())
    }
}
