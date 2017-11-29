//
//  MainCoordinatorProtocols.swift
//  DisType
//
//  Created by Mike Kholomeev on 11/23/17.
//  Copyright © 2017 NixSolutions. All rights reserved.
//

import Foundation

protocol HomeDelegate {
    func didEntered(_ text:String)
    func speak(_ text:String, with languageCode:String?)
    func addNewChat()
    func updateCurrentChat(_ _text:String?)
    func deleteCurrentChat(_ complition: @escaping (IndexPath)->())
    func beepSound()
    func showMenu()
    func finish()
}

protocol CategoryManagerDelegate {
    func didSelect(_ category:Category)
    func willAddNewCategory(_ complition: @escaping allertReturn)
    func didDelete(_ category:Category)
    func willRename(_ category:Category, complition: @escaping allertReturn)
}

protocol MessageManagerDelegate {
    func currentCategory() -> Category
    func didSelect(_ message:Message)
    func willAddNewMessage(for category:Category, complition: @escaping allertReturn)
    func didDelete(_ message:Message)
    func willRename(_ message:Message, complition: @escaping allertReturn)
}
