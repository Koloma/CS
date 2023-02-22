//
//  MainSceneInteractor.swift
//  CS
//
//  Created by Коломенский Александр on 22.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//


import UIKit

protocol MainSceneBusinessLogic
{
  func doSomething(request: MainScene.Something.Request)
}

protocol MainSceneDataStore
{
  //var name: String { get set }
}

class MainSceneInteractor: MainSceneBusinessLogic, MainSceneDataStore
{
  var presenter: MainScenePresentationLogic?
  var worker: MainSceneWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: MainScene.Something.Request)
  {
    worker = MainSceneWorker()
    worker?.doSomeWork()
    
    let response = MainScene.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
