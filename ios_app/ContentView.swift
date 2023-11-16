import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HelloView()
            PersonView()
            SearchView()
            IconsView()
            NearDoctorsView()
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
