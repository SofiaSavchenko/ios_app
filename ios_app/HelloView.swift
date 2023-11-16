import Foundation

import SwiftUI

struct HelloView: View {
    var name: String
    
    var body: some View {
    
        HelloView(name: "James")
    }
    
    @ViewBuilder
    
    private func HelloView(name: String) -> some View {
        
        HStack(alignment: .center){
            
            VStack(alignment: .leading, spacing: 6){
                
                Text("Hello,")
                    .font(Font.custom("Poppins-Regular", size: 16))
                    .foregroundColor(Color("dark_blue"))
                
                Text("Hi " + name)
                    .font(Font.custom("Poppins-Bold", size: 20).weight(.bold))
                    .foregroundColor(Color("dark_grey"))
            }.padding(0)
            
            Spacer()
            
            Image("logo").frame(width:56, height: 56)
        }
        .frame(width: .infinity, alignment: .center)
        .padding(.bottom, 32)
        .padding(.top, 64)
    
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView(name: "James")
    }
}

