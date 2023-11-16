import Foundation

import SwiftUI

struct PersonView2: View {
    
    var name: String
    var status: String
    var image: Image
    
    var body: some View {
        
        PersonView2(name: name, status: status, image: image)
    }
    
    @ViewBuilder
    
    private func PersonView2(name: String, status: String, image: Image) -> some View {
        
        VStack(alignment: .center, spacing: 16){
            
            HStack(alignment: .center){
                
                HStack(alignment: .center, spacing: 12){
                    
                    image
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        Text(name)
                            .font(
                                Font.custom("Poppins", size: 16)
                                    .weight(.bold)
                            )
                            .foregroundColor(.white)
                        
                        Text(status)
                            .font(
                                Font.custom("Poppins", size: 14)
                                    .weight(.bold)
                            )
                            .foregroundColor(Color("light_blue"))
                        
                    }.padding(0)
                    
                }.padding(0)
                
                Spacer()
                
                Image("arrow-right").padding(.top, 12)
                
                
            }.padding(0)
                .frame(maxWidth: .infinity, alignment: .center)
            
            Image("Vector 1")
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
                .overlay(
                    Rectangle()
                        .stroke(.white.opacity(0.15), lineWidth: 1))
            
            HStack(alignment: .top, spacing: 12){
                
                HStack(alignment: .center, spacing: 8){
                    
                    Image("calendar-2")
                    Text("Sunday, 12 June")
                        .font(Font.custom("Poppins-Regular", size:12))
                        .foregroundColor(.white)
                    
                }.padding(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .center, spacing: 8){
                    
                    Image("clock")
                    Text("11:00 - 12:00 AM").font(Font.custom("Poppins-Regular", size:12))
                    .foregroundColor(.white)                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
            
        }.padding(20)
            .frame(width: .infinity, alignment: .top)
            .background(Color("person_background"))
            .cornerRadius(12)
            .padding(.bottom, 20)
    }
    
}
    

struct PersonView2_Previews: PreviewProvider {
    static var previews: some View {
        PersonView2(name: "James", status: "General Doctor", image: Image("person_1"))
    }
}
