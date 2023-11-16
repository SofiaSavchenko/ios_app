import Foundation

import SwiftUI

struct CommentsView: View {
var body: some View {
    
    VStack(alignment: .leading, spacing: 12){
        
        CommentView(name: Text.person2,
                    status: Text.status2,
                    image: Image.person2,
                    raiting: Text.raiting2,
                    clock: Text.clock2,
                    distance: Text.distance2)
        CommentView(name: Text.person1,
                    status: Text.status1,
                    image: Image.person1,
                    raiting: Text.raiting1,
                    clock: Text.clock1,
                    distance: Text.distance1)
        
    }.padding(0)
                        
                
    }
}

struct CommentView: View {
    
    var name: Text
    var status: Text
    var image: Image
    var raiting: Text
    var clock: Text
    var distance: Text

    var body: some View {
    
        VStack(alignment: .center, spacing: 20){
        
            HStack(alignment: .center){
                
                HStack(alignment: .top, spacing: 10){
                    
                    image
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        name.font(Font.boldText16)
                            .foregroundColor(Color.darkGrey)
                        
                        status.font(Font.regularText14)
                        .foregroundColor(Color.darkBlue)                   }.padding(0)
                    
                }.padding(0)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 8){
                    
                    Image.location
                    
                    distance
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
                    
                    raiting
                        .font(Font.regularText12)
                        .foregroundColor(Color.orange)
                    
                }
                    .padding(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .center, spacing: 6){
                    
                    Image.clockBlue
                    
                    HStack(spacing: 0){
                        
                        Text.open
                            .font(Font.regularText12)
                        .foregroundColor(Color.blue)
                        
                        clock
                            .font(Font.regularText12)
                        .foregroundColor(Color.blue)
                    }
                    
                                    }
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
