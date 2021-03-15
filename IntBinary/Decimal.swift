import SwiftUI

struct Decimal: View {
    
    @State var input = ""
    
    var convertBinary: String {
        let number = Int(input) ?? 0
        let str = String(number, radix: 2)
        return str
    }
    
    var convertHexadecimal: String {
        let number = Int(input) ?? 0
        let str = String(number, radix: 16)
        return str
    }
    
    var convertOctal: String {
        let number = Int(input) ?? 0
        let str = String(number, radix: 8)
        return str
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Enter a Decimal Number to Convert")) {
                    TextField("Enter a number", text: $input)
                        .keyboardType(.numberPad)
                }
                
                Section(header: Text("Binary")) {
                    Text(convertBinary)
                }
                
                Section(header: Text("Hexadecimal")) {
                    Text(convertHexadecimal)
                }
                
                Section(header: Text("Octal")) {
                    Text(convertOctal)
                }
            }.navigationBarTitle("Decimal")
            .onTapGesture {
                      self.hideKeyboard()
            }
        }
        .tabItem {
            Image(systemName: "d.square")
            Text("Decimal")
        }
    }
}

struct Decimal_Previews: PreviewProvider {
    static var previews: some View {
        Decimal()
    }
}
