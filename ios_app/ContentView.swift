import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            
            HelloView()
            
            ScrollView(){
                
                VStack(alignment: .leading){
                    
                    PersonView()
                    SearchView()
                    IconsView()
                    NearDoctorsView()
                    CommentsView()
                    
                }
                
            }
            
            BottomButtonsView()
            
        }.padding(.horizontal, 24)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
