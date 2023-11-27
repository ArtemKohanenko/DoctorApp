import Foundation
import SwiftUI

struct CategoryIcon: View {
    var iconName: String;
    var text: String;

    var body: some
    View {
        Button(action: {}) {
            VStack {
                Image(iconName)
                    .frame(width: 24, height: 24)
                    .background(
                        Circle()
                            .foregroundColor(Palette.secondary)
                            .frame(width: 72, height: 72)
                    )
                Spacer().frame(height: 32)
                Text(text)
                    .foregroundColor(PaletteText.secondary)
                    .font(.system(size: 15))
                
            }
            .padding(8)
        }
    }
}
