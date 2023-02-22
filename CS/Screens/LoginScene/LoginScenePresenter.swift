//
//  LoginScenePresenter.swift
//  CS
//
//  Created by Коломенский Александр on 22.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//


import UIKit

protocol LoginScenePresentationLogic
{
  func presentSomething(response: LoginScene.Something.Response)
}

class LoginScenePresenter: LoginScenePresentationLogic
{
  weak var viewController: LoginSceneDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: LoginScene.Something.Response)
  {
    let viewModel = LoginScene.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
