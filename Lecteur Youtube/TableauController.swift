//
//  TableauController.swift
//  Lecteur Youtube
//
//  Created by Julien on 18/08/2018.
//  Copyright © 2018 Julien. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    
    let identifiantCell = "ChansonCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let cool = Chanson(artiste: "Casseurs Flowters", titre: "Ils sont cools", code: "_DT-4-jJTZc")
        chansons.append(cool)
        let bien = Chanson(artiste: "Orelsan", titre: "Tout va bien", code: "dq6G2YWoRqA")
        chansons.append(bien)
        let basique = Chanson(artiste: "Orelsan", titre: "Basique", code: "2bjk26RwjyU")
        chansons.append(basique)
        let ronde = Chanson(artiste: "Orelsan", titre: "La terre est ronde", code: "oGdhZyS2ozo")
        chansons.append(ronde)
        let san = Chanson(artiste: "Orelsan", titre: "San", code: "PejyoeG_TmA")
        chansons.append(san)
        let seul = Chanson(artiste: "Orelsan", titre: "Si seul", code: "cz-PLtXh7Lo")
        chansons.append(seul)
        let inacheves = Chanson(artiste: "Casseurs Flowters", titre: "Inachevés", code: "Mw1eQZ_PEb4")
        chansons.append(inacheves)
        
        // ReloadDate nous permet de recharger les données et de le MAJ SB
        tableView.reloadData()
        
    }
}
