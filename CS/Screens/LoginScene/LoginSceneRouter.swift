//
//  LoginSceneRouter.swift
//  CS
//
//  Created by Коломенский Александр on 22.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//


import UIKit

@objc protocol LoginSceneRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol LoginSceneDataPassing
{
  var dataStore: LoginSceneDataStore? { get }
}

class LoginSceneRouter: NSObject, LoginSceneRoutingLogic, LoginSceneDataPassing
{
  weak var viewController: LoginSceneViewController?
  var dataStore: LoginSceneDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: LoginSceneViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: LoginSceneDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
