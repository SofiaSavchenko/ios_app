import Foundation

import SwiftUI

struct IconsView: View {
var body: some View {
    
    HStack(alignment: .top, spacing: 23){
        CircleView(image: Image.sun, textName: Text.covid19)
        CircleView(image: Image.profileAdd, textName: Text.doctor)
        CircleView(image: Image.link, textName: Text.medicine)
        CircleView(image: Image.hospital, textName: Text.hospital)
    }.padding(.bottom, 32)
    .frame(width: .infinity)    }
}

struct CircleView: View {
var image: Image
var textName : Text

var body: some View {
    
    VStack(alignment: .center, spacing: 8){
        
        HStack{
            
            image.frame(width:24, height: 24)
            
        }.padding(24)
            .background(Color.grey)
            .cornerRadius(100)
        
        textName
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
