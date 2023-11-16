//import Foundation

import SwiftUI

struct PersonView: View {
    
    var name: String
    var status: String
    var image: Image
    
    var body: some View {
        
        PersonView(name: name, status: status, image: image)
    }
    
    @ViewBuilder
    
    private func PersonView(name: String, status: String, image: Image) -> some View {
        
        ZStack{
            
            VStack(alignment: .leading){
                
                HStack{
                    
                    image.padding(.trailing, 12)
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        Text(name)
                            .font(Font.custom("Poppins-Bold", size: 16))
                            .foregroundColor(Color("white"))
                            
                        Text(status)
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("light_blue"))
                        
                    }
                    
                    Spacer()
                    
                    Image("arrow-right").padding(.top, 12)
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, 16)
                
                Divider()
                    .frame(height: 1)
                    .foregroundColor(Color("white"))
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                
                
                HStack{
                    
                    HStack{
                        
                        Image("calendar-2")
                        Text("Sunday, 12 June")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color("white"))
                    }
                    
                    Spacer()
                    
                    HStack{
                        
                        Image("clock")
                        Text("11:00 - 12:00 AM")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color("white"))
                    }
                    
                }.padding(.horizontal, 20)
            }
            
        }
            .frame(height: 138)
            .background(Color("person_background"))
            .cornerRadius(12)
            //.padding(.horizontl, 20)
            .padding(.bottom, 20)
        
    }
    
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(name: "James", status: "General Doctor", image: Image("person_1"))
    }
}
