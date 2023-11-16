import Foundation

import SwiftUI

struct CommentsView: View {
var body: some View {
    
    VStack(alignment: .leading, spacing: 12){
        
        CommentView(name: "Dr. Joseph Brostito",
                    status: "Dental Specialist",
                    image: Image.person2,
                    raiting: "4.8 (120 Rewiews)",
                    clock: "17:00",
                    distance: "1.2")
        CommentView(name: "Dr. Imran Syahir",
                    status: "General Doctor",
                    image: Image.person1,
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
                        
                        Text(name).font(Font.boldText16)
                            .foregroundColor(Color.darkGrey)
                        
                        Text(status).font(Font.regularText14)
                        .foregroundColor(Color.darkBlue)                   }.padding(0)
                    
                }.padding(0)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 8){
                    
                    Image.location
                    
                    Text(distance + " KM")
                        .font(Font.regularText14)
                        .foregroundColor(Color.darkBlue)
                    
                    
                }.padding(0)
                
            }.padding(0)
                .frame(width: .infinity, alignment: .center)
            
            Image.vector
                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
                .overlay(Rectangle()
                    .stroke(Color.grey, lineWidth:1))
            
            HStack(alignment: .top, spacing: 12){
                
                HStack(alignment: .center, spacing: 6){
                    
                    Image.clockOrange
                    
                    Text(raiting)
                        .font(Font.regularText12)
                        .foregroundColor(Color.orange)
                    
                }
                    .padding(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .center, spacing: 6){
                    
                    Image.clockBlue
                    
                    Text("Open at " + clock)
                        .font(Font.regularText12)
                    .foregroundColor(Color.blue)                }
                    .padding(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }.padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        
        }.padding(.horizontal, 16)
            .padding(.vertical, 20)
            .background(.white)
            .cornerRadius(12)
            .shadow(color: Color.grey.opacity(0.04),radius: 10, x:2, y:12)
    }
}

struct Comments_Previews: PreviewProvider {
static var previews: some View {
    CommentsView()
    }
}
