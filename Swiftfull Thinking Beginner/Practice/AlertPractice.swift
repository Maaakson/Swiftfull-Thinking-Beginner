//
//  AlertPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 14.12.2021.
//

import SwiftUI

struct AlertPractice: View {
    @State var alertPresentation: Bool = false
    @State var isLoading: Bool = false
    @State var alert: AlertType = .success
    
    enum AlertType {
        case success, failed
        
        var title: String {
            switch self {
            case .success:
                return "Congradulations"
            case .failed:
                return "Sorry"
            }
        }
        
        var message: String {
            switch self {
            case .success:
                return "Your Image was loaded successfully"
            case .failed:
                return "An error occured when loading your Image"
            }
        }
    }
    
    var body: some View {
        ZStack {
            VStack {
                ViewTitle
                ImageOnScreen
                UploadSelection
            }
            Overlay
        }
    }
    
    var Overlay: some View {
        ZStack {
            Color(uiColor: .secondarySystemBackground).opacity(0.8).edgesIgnoringSafeArea(.all)
            ProgressView().progressViewStyle(CircularProgressViewStyle()).tint(.black)
                .scaleEffect(1.5)
        }
        .opacity(isLoading ? 1 : 0)
    }
    
    var ViewTitle: some View {
        Text("Your Image")
            .font(.system(size: 25, weight: .light, design: .serif))
    }
    
    var ImageOnScreen: some View {
        Image("Car BMW-3")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 280, height: 180)
            .clipShape(
            RoundedRectangle(cornerRadius: 10)
            )
            .padding(.bottom)

    }
    
    var UploadSelection: some View {
        VStack {
            Text("Upload using")
                .font(.system(size: 15, weight: .light, design: .rounded))
            
            HStack {
                Button {
                    startTimer()
                    alert = .success
                } label: {
                    Text("WiFi")
                        .font(.system(size: 12))
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                        )
                }
                
                Button {
                    startTimer()
                    alert = .failed
                } label: {
                    Text("Cellular")
                        .font(.system(size: 12))
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                        )
                }
            }
            .alert(isPresented: $alertPresentation, content: getAlert)
        }
        .padding(.top)
    }
    
    func getAlert() -> Alert {
        switch alert {
        case .success:
            return Alert(title: Text(alert.title),
                         message: Text(alert.message),
                         dismissButton: .default(Text("OK")))
        case .failed:
            return Alert(title: Text(alert.title),
                         message: Text(alert.message),
                         primaryButton: .cancel(),
                         secondaryButton: .default(Text("Try again"), action: startTimer))
            
        }
    }
    
    func startTimer() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            isLoading = false
            alertPresentation.toggle()
        }
    }
}

struct AlertPractice_Previews: PreviewProvider {
    static var previews: some View {
        AlertPractice()
    }
}
