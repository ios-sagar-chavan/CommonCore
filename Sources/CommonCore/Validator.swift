//
//  File.swift
//  
//
//  Created by Amol B on 12/03/20.
//

import Foundation

open class Validator {
    
   // let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}" --> // ^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$
    
  //  let phoneRegEx = "^\\d{3}-\\d{3}-\\d{4}$"
    
  //  let passwordRegEx = "((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W_]).{8,16})"
    
    public static let `default` = Validator()
    
    open func validateValueUsingRegEx(regEx : String, value : String) -> Bool {
        
        let regExPred = NSPredicate(format:"SELF MATCHES %@", regEx)
        
        return regExPred.evaluate(with: value)
        
    }
    
}
