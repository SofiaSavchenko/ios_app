import Foundation

import SwiftUI

struct IconsView: View {
var body: some View {
    
    HStack(alignment: .top, spacing: 13){
        CircleView(imageName: "sun", textName: "Covid 19")
        CircleView(imageName: "profile-add", textName: "Doctor")
        CircleView(imageName: "link", textName: "Medicine")
        CircleView(imageName: "hospital", textName: "Hospital")
    }.padding(.bottom, 32)
    .frame(width: .infinity)    }
}

struct CircleView: View {
var imageName: String
var textName : String

var body: some View {
    
    VStack(alignment: .center, spacing: 8){
        
        HStack{
            
            Image(imageName).frame(width:24, height: 24)
            
            
        }.padding(24)
            .background(Color("search_background"))
            .cornerRadius(100)
        
            Text(textName)
            .font(Font.custom("Poppins-Regular", size: 15))
        .foregroundColor(Color("dark_blue"))
        
    }.padding(0)
            
    }
}

struct IconsView_Previews: PreviewProvider {
static var previews: some View {
    IconsView()
    }
}
