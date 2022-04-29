//
//  RandomView.swift
//  Choice
//
//  Created by Hyemin Choi on 2022/04/28.
//

import SwiftUI

struct RandomView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("bgColor").ignoresSafeArea()
                
                VStack {
                    ZStack {
                        Image("honne")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 310, height: 310)
                            .cornerRadius(25)
                            .shadow(color: Color("shadowColor"), radius: 100, x:0, y:8)
                        
                        Image(systemName: "play.circle.fill")
                            .font(.system(size: 84))
                            .foregroundColor(.white)
                            .opacity(0.8)
                    }
                    
                    VStack {
                        Text("no song without you")
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                            .font(.system(size: 22, weight: .semibold))
                        Text("HONNE")
                            .padding(.bottom, 15)
                            .font(.system(size: 27, weight: .medium))
                        Text("얼터너티브 · 2020년")
                            .font(.system(size: 16, weight: .medium))
                    }
                    .padding(.bottom, 100)
                    .padding(.top, 15)
                    .foregroundColor(Color("fontColor"))
                    
                    Button(action: {
                        //Random Music select
                    }) {
                        HStack{
                            Image(systemName: "shuffle")
                            Text("랜덤추천")
                        }
                        .frame(width: 350, height: 60)
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                    }
                    .padding(EdgeInsets(top: 12, leading: 15, bottom: 12, trailing: 15))
                    .cornerRadius(50)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color("pointColor"))
                            .frame(width: 350, height: 60)
                            
                            )
                    .shadow(color: Color("shadowColor"), radius: 100, x:0, y:8)
                }
            }
    }
}

struct RandomView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}
}
