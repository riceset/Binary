import SwiftUI

struct Binary: View {
    
    @State var input = ""
    
    var convertDecimal: Int {
        if let str = Int(input, radix: 2) {
            return str
        }
        return 0
    }
    
    var convertHexadecimal: String {
        if let str = Int(input, radix: 2) {
            let number = String(str, radix: 16)
            return number
            
        }
        return "0"
    }
    
    var convertOctal: String {
        if let str = Int(input, radix: 2) {
            let number = String(str, radix: 8)
            return number
        }
        return "0"
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Enter a Binary Number to Convert")) {
                    TextField("Enter a number", text: $input)
                        .keyboardType(.numberPad)
                }
                
                Section(header: Text("Decimal")) {
                    Text(String(convertDecimal))
                }
                
                Section(header: Text("Hexadecimal")) {
                    Text(convertHexadecimal)
                }
                
                Section(header: Text("Octal")) {
                    Text(convertOctal)
                }
            }.navigationBarTitle("Binary")
            .onTapGesture {
                      self.hideKeyboard()
            }
        }
        .tabItem {
            Image(systemName: "b.square")
            Text("Binary")
        }
    }
}

struct Binary_Previews: PreviewProvider {
    static var previews: some View {
        Binary()
    }
}
