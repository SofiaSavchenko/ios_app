import Foundation

import SwiftUI

struct BottomButtonsView: View {
    
    var body: some View {
    
        BottomButtonsView()
    }
    
    @ViewBuilder
    
    private func BottomButtonsView() -> some View {
        
        HStack(alignment: .center, spacing: 12){
                
                HStack(alignment: .center, spacing: 8){
                    
                    Button(action: {}){
                        
                        Image("home")
                            
                        Text("Home")
                            .font(
                                Font.custom("Poppis-Bold", size:14).weight(.bold))
                            .foregroundColor(Color("person_background"))
                    }
                
            }.padding(12)
                .background(Color("person_background").opacity(0.1))
                .cornerRadius(12)
        
            
            HStack(alignment: .center, spacing: 8){
                
                HStack(spacing: 0){
                    
                    Button(action: {}){
                        
                        Image("calendar")
                    }
                    
                }.frame(width:24, height: 24)
                
            }
            .padding(12)
            .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
            
            HStack(spacing: 8){
                HStack(spacing: 0){
                    
                    Button(action: {}){
                        
                        Image("message")
                    }
                }
                .frame(width: 24, height: 24)
            }
            .padding(12)
            .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
            
            HStack(alignment: .center, spacing: 8){
                
                HStack(spacing: 0){
                    
                    Button(action: {}){
                        
                        Image("profile")
                        
                    }
                    
                }.frame(width:24, height: 24)
            }
            .padding(12)
            .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
            
        }.padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
        .frame(width: 375, height: 80)
        .background(.white)
            
                  }
}
                  

struct ButtonButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        BottomButtonsView()
    }
}
