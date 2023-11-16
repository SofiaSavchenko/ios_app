import Foundation

import SwiftUI

struct PersonView: View {
    
    var body: some View {
        
        PersonView(name: Text.person1,
                   status: Text.status1,
                   image: Image.person1)
    }
    
    @ViewBuilder
    
    private func PersonView(name: Text, status: Text, image: Image) -> some View {
        
        VStack(alignment: .center, spacing: 16){
            
            HStack(alignment: .center){
                
                HStack(alignment: .center, spacing: 12){
                    
                    image
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        name
                            .font(
                                Font.boldText16
                            )
                            .foregroundColor(.white)
                        
                        status
                            .font(
                                Font.regularText14
                            )
                            .foregroundColor(Color.lightBlue)
                        
                    }.padding(0)
                    
                }.padding(0)
                
                Spacer()
                
                Image.arrowRight.padding(.top, 12)
                
                
            }.padding(0)
                .frame(maxWidth: .infinity, alignment: .center)
            
            Image.vector
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
                .overlay(
                    Rectangle()
                        .stroke(.white.opacity(0.15), lineWidth: 1))
            
            HStack(alignment: .top, spacing: 12){
                
                HStack(alignment: .center, spacing: 8){
                    
                    Image.calendar2
                    Text.dataPerson1
                        .font(Font.regularText12)
                        .foregroundColor(.white)
                    
                }.padding(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .center, spacing: 8){
                    
                    Image.clock
                    Text.timePerson1.font(Font.regularText12)
                    .foregroundColor(.white)                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
            
        }.padding(20)
            .frame(width: .infinity, alignment: .top)
            .background(Color.blue)
            .cornerRadius(12)
            .padding(.bottom, 20)
    }
    
}
    

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
