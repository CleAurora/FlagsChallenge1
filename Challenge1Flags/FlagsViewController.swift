//
//  FlagsViewController.swift
//  Challenge1Flags
//
//  Created by Cleís Aurora Pereira on 24/06/22.
//

import UIKit

final class FlagsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    private let flagTableView = UITableView()
    private let flags = FlagAPI.getFlags()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(flagTableView)

        flagTableView.translatesAutoresizingMaskIntoConstraints = false
        flagTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        flagTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        flagTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        flagTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        flagTableView.dataSource = self
        flagTableView.register(FlagTableViewCell.self, forCellReuseIdentifier: "flagCell")
        flagTableView.delegate = self

        setUpNavigation()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "flagCell", for: indexPath) as! FlagTableViewCell

        cell.flag = flags[indexPath.row]

        return cell
    }

    func setUpNavigation() {
        navigationItem.title = "Flags"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.24, green: 0.76, blue: 0.84, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1)]
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = FlagDetailViewController()

        detailViewController.flag = flags[indexPath.row]

        navigationController?.pushViewController(detailViewController, animated: true)
    }

}
