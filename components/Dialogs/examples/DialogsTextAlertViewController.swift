// Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import MaterialComponents.MaterialButtons
import MaterialComponents.MaterialDialogs

class DialogsTextAlertViewController: UIViewController {

  lazy var presentButton: MDCFlatButton = {
    let button = MDCFlatButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Present", for: .normal)
    button.addTarget(
      self,
      action: #selector(presentButtonTapped(_:)),
      for: .touchUpInside
    )
    return button
  }()

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = UIColor.white
    view.addSubview(presentButton)

    let xConstraint = NSLayoutConstraint(
      item: presentButton,
      attribute: .centerX,
      relatedBy: .equal,
      toItem: view,
      attribute: .centerX,
      multiplier: 1,
      constant: 0
    )

    let yConstraint = NSLayoutConstraint(
      item: presentButton,
      attribute: .centerY,
      relatedBy: .equal,
      toItem: view,
      attribute: .centerY,
      multiplier: 1,
      constant: 0
    )

    let heightConstraint = NSLayoutConstraint(
      item: presentButton,
      attribute: .height,
      relatedBy: .equal,
      toItem: nil,
      attribute: .notAnAttribute,
      multiplier: 1,
      constant: 50
    )

    let widthConstraint = NSLayoutConstraint(
      item: presentButton,
      attribute: .width,
      relatedBy: .equal,
      toItem: nil,
      attribute: .notAnAttribute,
      multiplier: 1,
      constant: 200
    )

    NSLayoutConstraint.activate(
      [xConstraint, yConstraint, heightConstraint, widthConstraint]
    )
  }

  @objc func presentButtonTapped(_ sender: MDCButton) {
    let alert = MDCAlertController(title: "Text Alert", message: "Sweet")
    present(alert, animated: true)
  }
}

// MARK: Catalog by convention
extension DialogsTextAlertViewController {
  class func catalogMetadata() -> [String: Any] {
    return [
      "breadcrumbs": ["Dialogs", "Text Alert"],
      "primaryDemo": false,
      "presentable": false,
    ]
  }
}
