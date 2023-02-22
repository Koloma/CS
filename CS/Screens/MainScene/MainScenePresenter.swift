//
//  MainScenePresenter.swift
//  CS
//
//  Created by Коломенский Александр on 22.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//


import UIKit

protocol MainScenePresentationLogic
{
  func presentSomething(response: MainScene.Something.Response)
}

class MainScenePresenter: MainScenePresentationLogic
{
  weak var viewController: MainSceneDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: MainScene.Something.Response)
  {
    let viewModel = MainScene.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
