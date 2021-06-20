//
//  ViewController.swift
//  LocalizationWithTDD
//
//  Created by Oliver Jordy Pérez Escamilla on 19/06/21.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    title = NSLocalizedString("MAIN_TITLE", comment: "The title for the main view")
  }


}

