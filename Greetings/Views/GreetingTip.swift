//
//  GreetingTip.swift
//  Greetings
//
//  Created by Jesus Ervin Chapi Suyo on 2/10/24.
//

import SwiftUI
import TipKit
struct GreetingTip : Tip{
    var title: Text {
        Text("Click on text and disc")
    }
    
    var message: Text {
        Text("text will be randonly generated and observe ince animation!")
    }
    
    var asset: Image?{
        Image(systemName: "figure.walk.motion")
    }
    

}

//#Preview {
//    GreetingTip()
//}
