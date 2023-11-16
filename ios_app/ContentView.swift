import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HelloView()
            PersonView()
            SearchView()
            IconsView()
            Text("Near Doctors")
                .font(Font.custom("Poppins-Bold", size: 16))
            .foregroundColor(Color("dark_grey"))
            
            CommentsView()
            
            BottomButtonsView()
            
            Spacer()
        }
        .padding(.horizontal, 24)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
