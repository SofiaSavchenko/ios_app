import Foundation

import SwiftUI

struct HelloView: View {
    
    var body: some View {
    
        HelloView(name: "James")
    }
    
    @ViewBuilder
    
    private func HelloView(name: String) -> some View {
        
        HStack(alignment: .center){
            
            VStack(alignment: .leading, spacing: 6){
                
                Text("Hello,")
                    .font(Font.regularText16)
                    .foregroundColor(Color.darkBlue)
                
                Text("Hi " + name)
                    .font(Font.boldText20)
                    .foregroundColor(Color.darkGrey)
            }.padding(0)
            
            Spacer()
            
            Image.logo.frame(width:56, height: 56)
        }
        .frame(width: .infinity, alignment: .center)
        .padding(.bottom, 32)
        .padding(.top, 64)
    
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}

