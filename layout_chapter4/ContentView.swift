//
//  ContentView.swift
//  layout_chapter4
//
//  Created by Mohammad Aboelnasr on 02/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.leading){
          
            VStack(alignment: .leading){
                HeaderView()
                Spacer()
                HStack(spacing: 24){
                    CardView(mainText: "Basic", priceText: "$9",backGroundColor: Color.purple,textColor: Color.white,myIcon: "nil")
                    ZStack {
                       
                        CardView(mainText: "Pro", priceText: "$20",backGroundColor: Color(red: 240/255, green: 240/255, blue: 240/255),textColor: Color.black,myIcon: "nil")
                        PromotionCard(location: 65, promotionText: "Best for designers")
                            
                    }
                }
                .padding(.all)
                ZStack {
                    CardView(mainText: "Team", priceText: "$299", backGroundColor: Color.black, textColor: Color.white,myIcon: "wand.and.rays")
                        .padding(.horizontal)
                    PromotionCard(location: 75, promotionText: "Best for Teams")
                }
               Spacer()
            }
           
          
           
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Choose")
                .font(.system(.largeTitle,design: .rounded))
                .fontWeight(.black)
                .multilineTextAlignment(.leading)
            
            Text("your plan")
                .font(.system(.largeTitle,design: .rounded))
                .fontWeight(.black)
                .multilineTextAlignment(.leading)
            
        }
        .padding(.horizontal)
        
        
    }
}

struct CardView: View {
    var mainText:String
     var priceText:String
   
     var backGroundColor:Color
     var textColor:Color
    var myIcon:String
    var body: some View {
        VStack{
            Image(systemName: myIcon)
                .foregroundColor(Color.white)
                
                
            Text(mainText)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(priceText)
            .font(.system(size: 40,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text("Per Month")
            .font(.system(size: 16,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 100)
        .padding()
        .background(backGroundColor)
        .cornerRadius(10)
    }
}

struct PromotionCard: View {
    var location:Double
    var promotionText:String
    var body: some View {
        Text(promotionText)
            .foregroundColor(Color.white)
        
            .background(Color(red: 255/255, green: 183/255, blue: 37/255))
            .offset(x: 0,y: location)
    }
}
