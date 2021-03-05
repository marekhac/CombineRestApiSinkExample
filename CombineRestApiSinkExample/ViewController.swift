//
//  ViewController.swift
//  CombineRestApiSinkExample
//
//  Created by Marek Hac on 05/03/2021.
//

import UIKit
import Combine

class ViewController: UIViewController {

    private lazy var webService = WebService()
    
    // cancellable property life cycle is associated with ViewController life cycle.
    // Cancellable subscriber will call cancel() method when ViewController is released.
    // This way there's no retain cycle
    
    private var cancellable: AnyCancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchDailyActivity()
    }
    
    func fetchDailyActivity() {
        self.cancellable = webService.fetchActivity()
            .sink(receiveCompletion: { completion in
                switch completion {
                
                // publisher finished it's activity
                
                case .finished:
                    break
                case .failure(let error):
                    
                    // handle error
                    
                    print (error.localizedDescription)
                }
            }, receiveValue: { activity in
                
                // do something with received value
                
                print ("\nACTIVITY FOR TODAY: \(activity.activity)")
            })
    }
}


