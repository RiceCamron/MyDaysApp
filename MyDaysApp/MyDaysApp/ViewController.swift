//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Artur Avdeev on 12.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
//    @IBOutlet weak var resultBtn: UIButton!
    
    private var numberOfDays: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        resultBtn.layer.cornerRadius = 12
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
//        let range = sender.date..<Date.now
        let now = Date()
        let selectedDate = sender.date
        let lowerBound = now < selectedDate ? now : selectedDate
        let upperBound = now > selectedDate ? now : selectedDate
        let range = lowerBound..<upperBound
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    @IBAction func resultBtnTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
    
}

