import SwiftUI

struct Octal: View {
    
    @State var input = ""
    
    var convertDecimal: Int {
        if let str = Int(input, radix: 8) {
            return str
        }
        return 0
    }
    
    var convertBinary: String {
        if let str = Int(input, radix: 8) {
            let number = String(str, radix: 2)
            return number
        }
        return "0"
    }
    
    var convertHexadecimal: String {
        if let str = Int(input, radix: 8) {
            let number = String(str, radix: 16)
            return number
        }
        return "0"
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Enter an Octal Number to Convert")) {
                    TextField("Enter a number", text: $input)
                        .keyboardType(.numberPad)
                }
                
                Section(header: Text("Decimal")) {
                    Text(String(convertDecimal))
                }
                
                Section(header: Text("Binary")) {
                    Text(convertBinary)
                }
                
                Section(header: Text("Hexadecimal")) {
                    Text(convertHexadecimal)
                }
            }.navigationBarTitle("Octal")
            .onTapGesture {
                      self.hideKeyboard()
            }
        }
        .tabItem {
            Image(systemName: "o.square")
            Text("Octal")
        }
    }
}

struct Octal_Previews: PreviewProvider {
    static var previews: some View {
        Octal()
    }
}
