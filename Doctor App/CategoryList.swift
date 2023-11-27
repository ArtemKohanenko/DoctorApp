import Foundation
import SwiftUI

struct CategoryList: View {

    var body: some
    View {
        HStack(spacing: 13) {
            CategoryIcon(iconName: "sun", text: "Covid 19")
            CategoryIcon(iconName: "profile-add", text: "Doctor")
            CategoryIcon(iconName: "link", text: "Medicine")
            CategoryIcon(iconName: "hospital", text: "Hospital")
        }
    }
}
