//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by Noah Carpenter on 2024-10-28
//
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@noahdoescoding
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger
//

import SwiftUI

// ContentView struct that represents the profile card layout
struct ContentView: View {
    var body: some View {
        // Vertical stack to arrange the profile components
        VStack(spacing: 20) {
            // ZStack to layer the profile image and circular background
            ZStack{
                // Circle background with blue color for profile image
                Circle()
                    .fill(Color.blue)
                    .frame(width: 120, height: 120)
                
                // Profile image that scales and fits within the circle
                Image("bob-barker")
                    .resizable()
                    .scaledToFit()
                    .frame(width:100, height:100)
                    .foregroundStyle(Color.white) // Set image foreground color
                    .cornerRadius(50) // Make the image circular
            }
            
            // Vertical stack for the name and description below the image
            VStack(spacing: 10) {
                // Profile name with bold, large title font
                Text("Bob Barker")
                    .font(.title)
                    .fontWeight(.bold)
                
                // Short description with subheadline font and centered alignment
                Text("iOS Developer and SwiftUI Enthusiast")
                    .font(.subheadline)
                    .foregroundStyle(Color.green) // Green text color for description
                    .multilineTextAlignment(.center) // Center-align the text
            }
            
            // Horizontal stack for action buttons
            HStack(spacing:20){
                // Message button with an icon
                Button(action: {
                    print("Button Pressed") // Print when button is pressed
                }) {
                    Image(systemName: "message.fill")
                        .font(.title)
                        .foregroundStyle(Color.green) // Green color for the button icon
                }
                
                // Phone button with an icon
                Button(action: {
                    print("Phone Pressed") // Print when phone button is pressed
                }) {
                    Image(systemName: "phone.fill")
                        .font(.title)
                        .foregroundStyle(Color.blue) // Blue color for the button icon
                }
            }
        }
        .padding() // Add padding to the entire VStack
        .background(Color.gray) // Set the background color to gray
        .cornerRadius(10) // Apply rounded corners to the profile card
        .shadow(radius: 10) // Add shadow for a soft elevated effect
    }
}

// Preview of the ContentView for Xcode's live preview
#Preview {
    ContentView()
}
