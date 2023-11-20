import Foundation

import SwiftUI

struct BottomButtonsView: View {
    
    var body: some View {
    
        BottomButtonsView()
    }
    
    @ViewBuilder
    
    private func BottomButtonsView() -> some View {
        
        HStack(alignment: .center, spacing: 12){
                    
                    Button(action: {}){
                        
                        HStack{
                            
                            Image.home
                                
                            Text.hello
                                .font(
                                    Font.boldText14)
                                .foregroundColor(Color.blue)                       }
                        
                    }
                .background(Color.transparentBlue.opacity(0.1))
                .cornerRadius(12)
            
                    Button(action: {}){
                        
                        Image.calendar
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
            
                    Button(action: {}){
                        
                        Image.message
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
            
                    Button(action: {}){
                        
                        Image.profile
                    
                
                    }
                .frame(maxWidth: .infinity, alignment: .center)
            
        }.padding(.horizontal, 24)
            .padding(.vertical, 16)
            .frame(width: 375, alignment: .center)
            .background(.white)
            
    }
}

struct ButtonButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        BottomButtonsView()
    }
}
