import Foundation

import SwiftUI

struct SearchView2: View {
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            Image("search-normal")
            
            Text("Search doctor or health issue").font(Font.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color("dark_blue"))
        }
        .padding(16)
        .frame(width: .infinity, height: 56)
        .background(Color("search_background"))
        .cornerRadius(12)
    }
}
