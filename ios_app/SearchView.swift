import Foundation

import SwiftUI

struct SearchView: View {

    var body: some View {
    
        HStack(alignment: .center, spacing: 12){
            
            
                
                Image("search-normal")//.padding(.trailing, 12)
                Text("Search doctor or health issue").font(Font.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color("dark_blue"))
                
            
            
        }.padding(16)
            .frame(width: 327, alignment: .leading)
            .background(Color("search_background"))
            .cornerRadius(12)
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
