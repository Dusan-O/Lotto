//
//  ViewController.swift
//  Lotto
//
//  Created by Dusan Orescanin on 09/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
// MARK: IBOutlet
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var playButton: UIButton!
    
    let lottoCount = 6
    let lottoRange = 1...49
    
    fileprivate func setupUI() {
        /// Change btn GO cornerRadius
        playButton.layer.cornerRadius = 10
        /// Empty the 5 labels
        stackView.arrangedSubviews.forEach { item in
            /// First recuperate the label
            let label = item.subviews.first as? UILabel /// label is a subView of our item that's a view
            label?.text = "" /// Label is an optionnal
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
// MARK: IBAction
    @IBAction func playAction(_ sender: Any) {
        // lottoDraw is not nil, si debug mode it will go throug assertionFailure, then crash, if no debug mode, assertionFailure won't do anything
        
        guard let lottoDraw = Draw(count: lottoCount, range: lottoRange) else {
            assertionFailure("Invalid lotto parameters")
            return
        }
    // Recuperate labels from StackView
        let labels = stackView.arrangedSubviews.compactMap { item in
            item.subviews.first as? UILabel
        }
    // number of result lottoDrow == number of result label
//        guard lottoCount == labels.count else {
//            assertionFailure("Lotto parameters and Stack View are inconsistent")
//            return
//        }
        // Sequence containes coulples labels and result
        let list = zip(labels, lottoDraw.result)
        list.forEach { item in
            let label = item.0
            let value = item.1
            label.text = String(value)
        }
    }
}

