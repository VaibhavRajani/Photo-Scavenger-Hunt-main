//
//  Task.swift
//  project4
//
//  Created by Vaibhav on 03/20/23
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your Favorite mountain.",
                 description: "Whats your favorite mountain?"),
            Task(title: "Your favorite waterfall.",
                 description: "Whats your favorite waterfall?"),
            Task(title: "Your favorite hiking place.",
                 description: "Whats your favorite hiking place?")
        ]
    }
}
