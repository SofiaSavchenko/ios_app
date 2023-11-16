import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HelloView(name: "James")
            PersonView2(name: "Dr. Imran Syahir",
                       status: "General Doctor",
                       image: Image("person_1"))
            SearchView()
            IconsView()
            Text("Near Doctors")
                .font(Font.custom("Poppins-Bold", size: 16))
            .foregroundColor(Color("dark_grey"))
            
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
