import Foundation

import SwiftUI

struct HelloView: View {
    
    var body: some View {
    
        HelloView(name: Text.name)
    }
    
    @ViewBuilder
    
    private func HelloView(name: Text) -> some View {
        
        HStack(alignment: .center){
            
            VStack(alignment: .leading, spacing: 6){
                
                Text.hello
                    .font(Font.regularText16)
                    .foregroundColor(Color.darkBlue)
                
                HStack(spacing: 0){
                    
                    Text.hi
                        .font(Font.boldText20)
                        .foregroundColor(Color.darkGrey)
                    
                    Text.name.font(Font.boldText20)
                    .foregroundColor(Color.darkGrey)
                    
                }
                
                
            }.padding(0)
            
            Spacer()
            
            Image.logo.frame(width:56, height: 56)
        }
        .frame(width: .infinity, alignment: .center)
        .padding(.bottom, 32)
        //.padding(.top, 64)
    
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}
