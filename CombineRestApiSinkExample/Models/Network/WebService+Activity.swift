//
//  WebService+Activity.swift
//  CombineRestApiSinkExample
//
//  Created by MARXSOFT Marek Hac on 04/03/2021.
//

import Foundation
import Combine

extension WebService {
    func fetchActivity() -> AnyPublisher<ActivityModel, Error> {
    
        // url to JSON with random activity
        
        let url = URL(string: "https://www.boredapi.com/api/activity")
        
        return URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data } // take only data
            .decode(type: ActivityModel.self, decoder: JSONDecoder()) // decode data to activity model
            .subscribe(on: DispatchQueue.global()) // process request on background thread
            .receive(on: DispatchQueue.main) // process received data in main thread
            .eraseToAnyPublisher() // wrap publisher to AnyPublisher<ActivityModel, Error>
    }
}
