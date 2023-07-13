//
//  ContentView.swift
//  AboutMe
//
//  Created by scholar on 7/13/23.
//

import SwiftUI

struct CustomColor {
    static let sageGreen = Color("sageGreen")
    // Add more here...
}

struct ContentView: View {
    @State private var presentAlertCamera = false
    @State private var presentAlertYarn = false
    @State private var presentAlertPlant = false
    
    var body: some View {
            ZStack {
                Color("sageGreen")
                    .ignoresSafeArea()
                VStack {
                    VStack(alignment: .leading, spacing: 20.0) {
                        
                        Image("sarahBain")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                        
                        HStack(spacing: 20.0) {
                            Text("Sarah Wen")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("sageGreen"))
                            
                            Text("Class of 2025")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("sageGreen"))
                        }
                        
                        Text("Student at Nikola Tesla STEM High School. Forever language learner - Spanish, Italian, Greek, Scottish Gaelic. Avid Swiftie. Speak Now (TV) & folklore girlie.")
                            .foregroundColor(Color("sageGreen"))
                    }
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 20.0) {
                
                        HStack (spacing: 20.0) {
                            Button (
                                action : { presentAlertCamera = true},
                                label : { Text("📸")
                                    .font(.system(size: 50))
                                    .padding()
                                    .background(Rectangle()
                                        .foreg roundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 5)
                                    .padding()
                            })
                            .alert(isPresented: $presentAlertCamera,
                                   content : { Alert(
                            title: Text("Photography!"),
                            message: Text("Taking pictures is super fun for me, especially with all of the aesthetic angles 🌸. Making people look tall is my specialty!")
                            )})
                            
//-----------------------------------------------------------------------------------------
                            Button (
                                action : { presentAlertYarn = true},
                                label : {Text("🧵")
                                    .font(.system(size: 50))
                                    .padding()
                                    .background(Rectangle()
                                    .foregroundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 5)
                                    .padding()
                            })
                            .alert(isPresented: $presentAlertYarn,
                                   content : { Alert(
                            title: Text("Crochet!"),
                            message: Text("In December, I took up crochet! Mainly, my trio of friends in Spanish are extremely in love with crochet and all sorts of yarn!")
                            )})
                            
//-----------------------------------------------------------------------------------------
                            Button (
                                action : { presentAlertPlant = true},
                                label : {Text("🪴")
                                    .font(.system(size: 50))
                                    .padding()
                                    .background(Rectangle()
                                    .foregroundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 5)
                                    .padding()
                            })
                            .alert(isPresented: $presentAlertPlant,
                                   content : { Alert(
                            title: Text("Environment!!"),
                            message: Text("I am super passionate about sustainability and environmental protections and regulations. Ever since my WM/APES internship, I've been more concious about my carbon footprint and impact on surrounding ecosystems.")
                            )})
                            
                        }
                        
                    }

                }
                
                
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
