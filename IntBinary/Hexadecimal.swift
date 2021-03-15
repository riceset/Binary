import SwiftUI

struct Hexadecimal: View {
    
    @State var input = ""
    
    var convertDecimal: Int {
        if let str = Int(input, radix: 16) {
            return str
        }
        return 0
    }
    
    var convertBinary: String {
        if let str = Int(input, radix: 16) {
            let number = String(str, radix: 2)
            return number
        }
        return "0"
    }
    
    var convertOctal: String {
        if let str = Int(input, radix: 16) {
            let number = String(str, radix: 8)
            return number
        }
        return "0"
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Enter a Hexadecimal Number to Convert")) {
                    TextField("Enter a number", text: $input)
                }
                
                Section(header: Text("Decimal")) {
                    Text(String(convertDecimal))
                }
                
                Section(header: Text("Binary")) {
                    Text(convertBinary)
                }
                
                Section(header: Text("Octal")) {
                    Text(convertOctal)
                }
            }.navigationBarTitle("Hexadecimal")
            .onTapGesture {
                      self.hideKeyboard()
            }
        }
        .tabItem {
            Image(systemName: "h.square")
            Text("Hexadecimal")
        }
    }
}

struct Hexadecimal_Previews: PreviewProvider {
    static var previews: some View {
        Hexadecimal()
    }
}
