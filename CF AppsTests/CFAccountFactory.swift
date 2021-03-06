import Foundation
import SwiftyJSON

@testable import CF_Apps

class CFAccountFactory {
    static let username = "cfUser"
    static let password = "cfPass"
    static let target = "https://api.test.io"
    static let oauthToken = "testToken"
    
    class func info() -> CFInfo {
        let bundle = NSBundle.mainBundle()
        let path = bundle.pathForResource("PlugIns/CF Apps Tests.xctest/info", ofType: "json")
        let data = NSData(contentsOfFile: path!)
        let json = JSON(data: data!)
        return CFInfo(json: json)
    }
    
    class func account() -> CFAccount {
        return CFAccount(
            target: target,
            username: username,
            password: password,
            info: info()
        )
    }
}