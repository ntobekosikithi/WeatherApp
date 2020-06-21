//
//  HttpService.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import Alamofire

class HttpService: HttpServicing {

    func GET<T: Codable>(url: String, parameters: [String: Any], success: @escaping (T) -> Void,
                                    error: @escaping (NetworkingError) -> Void) {
        let requestUrl = constants.baseURL + url
        Alamofire.request(requestUrl,
                          method: .post,
                          parameters: parameters,
                          encoding: URLEncoding.queryString).responseJSON { response in
            if response.error != nil {
                error(.requestFailed)
                return
            }
            if let data = response.data {
                do {
                    let jsonDecoder = JSONDecoder()
                    let model = try jsonDecoder.decode(T.self, from: data)
                    success(model)
                } catch _ {
                    error(.jsonConversionFailure)
                }
            }
        }
    }
}
