//
//  ViewController.swift
//  ExEnum
//
//  Created by 김종권 on 2022/10/02.
//

import UIKit

enum Fruit {
  case apple
  case banana
  case orange
  
  private var nameValue: String {
    switch self {
    case .apple:
      return "apple"
    case .banana:
      return "banana"
    case .orange:
      return "orange"
    }
  }
  
  init?(_ name: String) {
    switch name {
    case .apple:
      self = .apple
    case .banana:
      self = .banana
    case .orange:
      self = .orange
    default:
      return nil
    }
  }
  
  static func ~=(lhs: Self, rhs: String) -> Bool {
    return lhs.nameValue == rhs
  }
}

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let fruit = "banana"
    let type = Fruit(fruit)
    print(type) // Optional(Fruit.banana)

  }
}
