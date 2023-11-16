import Foundation

import SwiftUI

struct IconsView: View {
var body: some View {
    
    HStack(alignment: .top, spacing: 23){
        CircleView(image: Image.sun, textName: "Covid 19")
        CircleView(image: Image.profileAdd, textName: "Doctor")
        CircleView(image: Image.link, textName: "Medicine")
        CircleView(image: Image.hospital, textName: "Hospital")
    }.padding(.bottom, 32)
    .frame(width: .infinity)    }
}

struct CircleView: View {
var image: Image
var textName : String

var body: some View {
    
    VStack(alignment: .center, spacing: 8){
        
        HStack{
            
            image.frame(width:24, height: 24)
            
        }.padding(24)
            .background(Color.grey)
            .cornerRadius(100)
        
            Text(textName)
            .font(Font.regularText15)
            .foregroundColor(Color.darkBlue)
        
    }.padding(0)
    
            
    }
}

struct IconsView_Previews: PreviewProvider {
static var previews: some View {
    IconsView()
    }
}
