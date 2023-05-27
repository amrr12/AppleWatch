//
//  ContentView.swift
//  Shared
//
//  Created by amr on 19/07/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {


    var body: some View {
      
        Details()
        
    }
}


struct Home : View {
    
    @State var index = "ALL"
    @State var tab = 0
    
    var body: some View {
    
     ZStack {
        
        Color.black.opacity(0.06).ignoresSafeArea(.all)
        
        VStack {
            
            HStack{
                
                Button {
                    
                } label: {
                    Image(systemName: "line.horizontal.3.decrease.circle")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                }

                
            }
            .padding(.vertical)
            
            HStack{
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Welcome !")
                    Text("Discovery")
                        .font(.title)
                        .fontWeight(.bold)
                    
                }
                .foregroundColor(.black)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.black)
                }

            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach(menu,id : \.self) { i in
                        
                        Button {
                            
                            self.index = i
                            
                        } label: {
                            
                            Text(i)
                                .foregroundColor(self.index == i ? Color("Color1") : Color.black.opacity(0.6))
                                .fontWeight(.bold)
                        
                        }
                        
                    }
                    
                }
                .padding(.horizontal)
                
            }
            
            ScrollView(.horizontal,showsIndicators: false){
                
                HStack(spacing : 25){
                    
                    ForEach(data,id: \.self) { watch in
                        
                        ZStack(alignment: .bottom){
                            
                            Color("Color")
                                .frame(height: UIScreen.main.bounds.height / 3)
                                .cornerRadius(20)
                            
                            VStack(spacing:20) {
                                
                                Image(watch.image)
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width / 1.7)
                                
                                
                                HStack(){
                                
                                    VStack(alignment: .leading) {
                                        
                                        Text(watch.title)
                                        
                                        Text("Apple Watch")
                                            .fontWeight(.bold)
                                            .font(.title2)
                                        
                                    }
                                    .foregroundColor(.white)
                                    
                                    Spacer()
                                    
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "plus")
                                            .font(.title3)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(Color("Color1"))
                                            .clipShape(Circle())
                                    }

                                    
                                }
                                
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            
                        }
                    }
                }
                .padding(.horizontal,20)
                .padding(.vertical,25)
                
            }
            
            Spacer(minLength: 0)
            
            HStack {
                
                Button {
                    
                    self.tab = 0
                    
                } label: {
                    
                    Image(systemName: "suit.heart.fill")
                        .font(.title)
                        .foregroundColor( self.tab == 0 ? Color.black : Color.black.opacity(0.25) )
                }
                
                Spacer()
                
                Button {
                    self.tab = 1
                } label: {
                    
                    Image(systemName: "safari")
                        .font(.title)
                        .foregroundColor( self.tab == 1 ? Color.black : Color.black.opacity(0.25) )
                }
                
                Spacer()
                
                Button {
                    self.tab = 2
                } label: {
                    
                    Image(systemName: "person.circle")
                        .font(.title)
                        .foregroundColor( self.tab == 2 ? Color.black : Color.black.opacity(0.25) )
                }
                
                
            }
            .padding(.horizontal,20)
            .padding(.top,10)
            .padding(.bottom,30)
            .background(Color.white)
            .clipShape(CShape())
            
            
        }
        
    }
     .edgesIgnoringSafeArea(.bottom)
 }
}



struct Details : View {
     
    @State var txt = ""
    var detail : Watch = data[0]
    @State var index = 0
    
    var bottom = UIApplication.shared.windows.first?.safeAreaInsets.bottom
    
    var body: some View {
        
        ZStack{
            
            Color("Color").edgesIgnoringSafeArea(.all)
            
            VStack{
                
                
                HStack{
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "cart")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                    }

                    
                }
                .padding(.bottom,5)
                
                
                
                HStack(spacing : 15){
                    
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.gray)
                    
                    TextField("Want to search anything " , text: self.$txt)
                        .foregroundColor(.black)
                    
                }
                .padding(.all,7)
                .background(.white)
                .cornerRadius(8)
                .padding(.horizontal)
                
                
                HStack {
                    VStack(alignment: .leading, spacing: 10){
                     
                        Text(self.detail.title)
                        Text("Apple Watch serie 5")
                            .font(.title)
                            .fontWeight(.bold)
                        
                    }
                    .foregroundColor(.white)
                    Spacer()
                }
                .padding(.top,5)
                .padding(.horizontal)
                
                
                HStack{
                     
                    VStack(alignment: .leading) {
                        
                        Text("Color")
                            .foregroundColor(Color.white.opacity(0.6))
                        
                        Text(self.detail.color)
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                        
                        Text("Price")
                            .foregroundColor(Color.white.opacity(0.6))
                            .padding(.top,10)
                        
                        Text(self.detail.price)
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer(minLength: 0)
                    
                    Image(self.detail.image)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 2.5)
                        .rotationEffect(.init(degrees: 10))
                }
                .padding(.bottom,-40)
                .zIndex(5)
                .padding(.horizontal)
                
                
                ZStack (alignment: .topLeading){
                   
                    VStack {
                        
                        ScrollView(.init(),showsIndicators: false) {
                            
                            VStack{
                                
                                HStack{
                                    
                                    Button {
                                        
                                        self.index = 0
                                        
                                    } label: {
                                    
                                        Text("Details")
                                            .foregroundColor(self.index == 0 ? .white : Color.black.opacity(0.6))
                                            .padding(.vertical, 10)
                                            .padding(.horizontal,25)
                                            .background(self.index == 0 ?  Color("Color1") : Color.clear)
                                            .cornerRadius(8)
                                        
                                    }
                                    
                                    Button {
                                        self.index = 1
                                    } label: {
                                    
                                        Text("Descriptions")
                                            .foregroundColor(self.index == 1 ? .white : Color.black.opacity(0.6))
                                            .padding(.vertical, 10)
                                            .padding(.horizontal,25)
                                            .background(self.index == 1 ?  Color("Color1") : Color.clear)
                                            .cornerRadius(8)
                                        
                                    }
                                    
                                    Spacer()
                                    
                                }
                                .padding(.top, 30)
                                .padding(.horizontal,15)
                                
                              
                                if self.index == 0 {
                                    
                                    HStack(spacing: 20){
                                        
                                        VStack(spacing: 10){
                                            
                                            Text("15mm")
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .foregroundColor(.black.opacity(0.8))
                                            Text("Strip width")
                                                .foregroundColor(.black.opacity(0.4))
                                            
                                        }
                                        
                                        VStack(spacing: 10){
                                            
                                            Text("Leather")
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .foregroundColor(.black.opacity(0.8))
                                            Text("Strip material")
                                                .foregroundColor(.black.opacity(0.4))
                                            
                                        }
                                        
                                        VStack(spacing: 10){
                                            
                                            Text("50m")
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .foregroundColor(.black.opacity(0.8))
                                            Text("Water resist")
                                                .foregroundColor(.black.opacity(0.4))
                                            
                                        }
                                        
                                    }
                                    .padding(.top)
                                    
                                    
                                }else {
                                    
                                    Text("The Appele watch serie 5 features a new always-on display, built-in compass for advanced navigation features, and a titanium case option. ")
                                        .foregroundColor(.black)
                                        .padding(.top)
                                        .padding(.horizontal)
                                    
                                }
                               
                               
                                
                                
                                
                            }
                            .padding(.vertical, 25)
                            
                        }
                        
                        HStack{
                            
                            Button {
                                
                            } label: {
                                Text("Add to cart")
                                    .foregroundColor(.white)
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width / 1.5)
                                    .background(Color("Color1"))
                                    .cornerRadius(10)
                            }
                            .shadow(radius: 5)
                            
                            Button {
                                
                            } label: {
                                
                                Image(systemName: "xmark")
                                    .foregroundColor(Color.black.opacity(0.8))
                                    .padding(.horizontal)
                                
                            }


                            
                        }
                        .padding(.top,10)
                        .padding(.bottom,self.bottom! == 0 ? 15 : self.bottom)

                    }
                    .background(Color.white)
                    .clipShape(CShape())
                    
                    Button {
                        
                        
                         
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("Color1"))
                            .clipShape(Circle())
                            
                    }
                    .padding(.leading,30)
                    .offset(y:-35)
                    
                }
                
                
            }
            
            
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}


var menu = ["ALL","CLASSIC","GRAND","FORMAL","ORIGINAL","TREND"]


struct Watch : Identifiable,Hashable {
    var id : Int
    var color : String
    var price : String
    var image: String
    var title: String
    
}


var data = [ Watch(id: 0, color: "Dark Black", price: "$500", image: "black", title: "Classic Black") ,
             Watch(id: 1, color: "Light Yellow", price: "$450", image: "yellow", title: "Classic Yellow") ,
             Watch(id: 2, color: "Rose Gold", price: "$600", image: "gold", title: "Classic Gold") ,
             Watch(id: 3, color: "Red", price: "$500", image: "red", title: "Classic Red") ,
             Watch(id: 4, color: "White", price: "$700", image: "white", title: "Classic White")
]



struct CShape : Shape {
    
    func path(in rect : CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight]
        ,cornerRadii: CGSize(width: 45, height: 45)
        )
        return Path(path.cgPath)
    }
    
}
