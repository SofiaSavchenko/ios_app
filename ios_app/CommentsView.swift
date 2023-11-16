import Foundation

import SwiftUI

struct CommentsView: View {
var body: some View {
    
    VStack(alignment: .leading, spacing: 12){
        
        CommentView(name: "Dr. Joseph Brostito",
                    status: "Dental Specialist",
                    image: Image("person_2"),
                    raiting: "4.8 (120 Rewiews)",
                    clock: "17:00",
                    distance: "1.2")
        CommentView(name: "Dr. Imran Syahir",
                    status: "General Doctor",
                    image: Image("person_1"),
                    raiting: "4.8 (120 Rewiews)",
                    clock: "17:00",
                    distance: "1.2")
        
    }.padding(0)
                        
                
    }
}

struct CommentView: View {
    
    var name: String
    var status: String
    var image: Image
    var raiting: String
    var clock: String
    var distance: String

    var body: some View {
    
        VStack(alignment: .center, spacing: 20){
        
            HStack(alignment: .center){
                
                HStack(alignment: .top, spacing: 10){
                    
                    image
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        Text(name).font(Font.custom("Poppins-Bold", size: 16).weight(.bold))
                            .foregroundColor(Color("dark_grey"))
                        
                        Text(status).font(Font.custom("Poppins-Regular", size: 14).weight(.bold))
                        .foregroundColor(Color("dark_blue"))                   }.padding(0)
                    
                }.padding(0)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 8){
                    
                    Image("location")
                    
                    Text(distance + " KM")
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("dark_blue"))
                    
                    
                }.padding(0)
                
            }.padding(0)
                .frame(width: .infinity, alignment: .center)
            
            Image("Vector 1")
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
                .overlay(Rectangle()
                    .stroke(Color("grey"), lineWidth:1))
            
            HStack(alignment: .top, spacing: 12){
                
                HStack(alignment: .center, spacing: 6){
                    
                    Image("clock_orange")
                    
                    Text(raiting)
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color("orange"))
                    
                }
                    .padding(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .center, spacing: 6){
                    
                    Image("clock_blue")
                    
                    Text("Open at " + clock)
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color("person_background"))                }
                    .padding(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }.padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        
        }.padding(.horizontal, 16)
            .padding(.vertical, 20)
            .background(.white)
            .cornerRadius(12)
            .shadow(color: Color("grey").opacity(0.04),radius: 10, x:2, y:12)
    }
}

struct Comments_Previews: PreviewProvider {
static var previews: some View {
    CommentsView()
    }
}
