//
//  ContentView.swift
//  G_Sohal_Lab2
//
//  Created by Ricky Singh on 9/20/26.
//

import SwiftUI

struct ContentView: View {
    @State private var companyName: String = ""
    @State private var address: String = ""
    @State private var city: String = ""
    @State private var state: String = ""
    @State private var zipCode: String = ""
    @State private var phoneNumber: String = ""
    @State private var emailAddress: String = ""
    @State private var mobileNumber: String = ""
    @State private var mobileCarrier: String = ""
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var reenteredPassword: String = ""
    @State private var dataFormError: Bool = false
    @State private var errorMessage: String = ""
    @State private var statesList: [String] = ["NY", "NJ", "CT"]
    @State private var mobileCarriersList: [String] = ["T-MOBILE", "VERIZON", "AT&T"]
    @State private var dataFormValid: Bool = false;
    
    var body: some View {
        VStack(spacing: -5) {
            Text("User Data Entry Form")
                .font(.title)
                .bold()
            
            TextField("Enter Company Name", text: $companyName)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Enter Address", text: $address)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Enter City", text: $city)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Enter State", text: $state)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Enter Zipcode", text: $zipCode)
                .textFieldStyle(.roundedBorder)
                .textContentType(.postalCode)
                .padding()
            
            TextField("Enter Email Address", text: $emailAddress)
                .textFieldStyle(.roundedBorder)
                .textContentType(.emailAddress)
                .padding()
            TextField("Enter Phone Number", text: $phoneNumber)
                .textFieldStyle(.roundedBorder)
                .textContentType(.telephoneNumber)
                .padding()
        
            TextField("Enter Mobile Carrier", text: $mobileCarrier)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Enter Username", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Enter Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Reenter Password", text: $reenteredPassword)
                .textFieldStyle(.roundedBorder)
                .padding()
        
            Spacer()
                .frame(height: 40)
            
            Button(
                action: {
                    Task {
                        validateUserForm()
                    }
                },
                label: {
                    Text(!dataFormValid ? "SUBMIT" : "New Customer was Added!")
                        .frame(width: !dataFormValid ? 150 : 300, height: 10)
                        .padding()
                        .foregroundColor(.white)
                        .background(!dataFormValid ? .blue : .green)
                        .cornerRadius(25)
                    
                }
            )
            .disabled(dataFormValid)
        
        
            
        }
        .padding()
        .alert("Data Form Error", isPresented: $dataFormError) {
            Button("Ok", role: .cancel) {
                dataFormError = false
            }
        } message: {
            Text("\(errorMessage)")
        }
    }
    
    func validateUserForm() {
        if companyName.isEmpty || companyName.count < 5 {
            dataFormError = true
            errorMessage = "Company Name is invalid"
            return
        }
        if address.isEmpty || address.count < 5 {
            dataFormError = true;
            errorMessage = "Address is invalid"
            return
        }
        if city.isEmpty || city.count < 5 {
            dataFormError = true;
            errorMessage = "City is invalid"
            return
        }
        
        if state.isEmpty || state.count > 2 || !statesList.contains(state.uppercased()){
            dataFormError = true;
            errorMessage = "State is invalid"
            return
        }
        
        if  zipCode.count != 5 || !zipCode.allSatisfy{ $0.isNumber } {
            dataFormError = true;
            errorMessage = "Zip Code is invalid"
            return
        }
        
        if  emailAddress.count < 5 || !emailAddress.contains("@") || !emailAddress.contains("."){
            dataFormError = true;
            errorMessage = "Email Address is invalid"
            return
        }
        
        if  phoneNumber.count != 10 || !phoneNumber.allSatisfy{$0.isNumber}{
            dataFormError = true;
            errorMessage = "Phone Number is invalid"
            return
        }
        
        if mobileCarrier.isEmpty || !mobileCarriersList.contains(mobileCarrier.uppercased()){
            dataFormError = true;
            errorMessage = "State is invalid"
            return
        }
        
        if userName.count < 10 || userName.contains(" "){
            dataFormError = true;
            errorMessage = "UserName is invalid"
            return
        }
        
        if password.count < 10 || !password.contains {$0.isUppercase}{
            dataFormError = true;
            errorMessage = "Password is invalid"
            return
        }
        
        if reenteredPassword.count < 10 || !reenteredPassword.contains{$0.isUppercase} || password != reenteredPassword{
            dataFormError = true;
            errorMessage = "Password is invalid"
            return
        }
        
        dataFormValid = true;
    }
}
#Preview {
    ContentView()
}

