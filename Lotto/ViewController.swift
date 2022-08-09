//
//  ViewController.swift
//  Lotto
//
//  Created by Dusan Orescanin on 09/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var playButton: UIButton!
    
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
        setupUI()()
    }

    @IBAction func playAction(_ sender: Any) {
    }
    
}

