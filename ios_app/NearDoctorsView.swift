import Foundation
import SwiftUI

struct NearDoctorsView: View {
    
    var body: some View {
        
            Text("Near Doctors")
            .font(Font.boldText16)
            .foregroundColor(Color.darkGrey)
            .frame(alignment: .leading)
    }
}

struct NearDoctorsView_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctorsView()
    }
}
