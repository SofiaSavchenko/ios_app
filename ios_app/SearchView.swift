import Foundation

import SwiftUI

struct SearchView: View {
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            Image.search
            
            Text("Search doctor or health issue").font(Font.regularText15)
                .foregroundColor(Color.darkBlue)
        }
        .padding(16)
        .frame(width: .infinity, height: 56)
        .background(Color.grey)
        .cornerRadius(12)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
