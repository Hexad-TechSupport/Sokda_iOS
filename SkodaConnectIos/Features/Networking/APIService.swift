//
//  APIService.swift
//  SkodaConnectIos
//
//  Created by Utkarsh Jaiswal on 25/10/24.
//

//import Alamofire
//
//class APIService {
//    static let shared = APIService()
//
//    func request<T: Decodable>(_ url: String, method: HTTPMethod, parameters: [String: Any]?, completion: @escaping (Result<T, AFError>) -> Void) {
//        AF.request(url, method: method, parameters: parameters, encoding: JSONEncoding.default)
//            .validate()
//            .responseDecodable(of: T.self) { response in
//                completion(response.result)
//            }
//    }
//}
//	
