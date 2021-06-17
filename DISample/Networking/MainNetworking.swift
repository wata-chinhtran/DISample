//
//  MainNetworking.swift
//  DISample
//
//  Created by NguyenHoang on 6/17/21.
//

import UIKit
import Moya
import DINetworking

public struct UserInfo: Codable {
    var userName:String = "text account"
    var token:String = "xxxxx"
}

enum MainNetworkingAPI {
    case doLogin
}
extension MainNetworkingAPI: BaseRequest {
    
    public var path: String {
      switch self {
      case .doLogin: return "/login"
      }
    }
    
    public var method: Moya.Method {
      switch self {
        case .doLogin: return .get
      }
    }
    
}

extension NetworkManager {
    
    func doLogin(completion: @escaping (Result<UserInfo, Error>) -> ()) {
        request(target: MultiTarget(MainNetworkingAPI.doLogin), completion: { (results) in
            completion(results)
        })
      }
}
