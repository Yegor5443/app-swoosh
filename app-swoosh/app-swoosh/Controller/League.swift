//
//  League.swift
//  app-swoosh
//
//  Created by Егор Меховской  on 3/8/19.
//  Copyright © 2019 Yehor Mekhovskyi. All rights reserved.
//

import UIKit

class League: UIViewController {
    var player:Player!
    
    
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    @IBAction func toNextTablet(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func mensWasTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func wamensWasTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func coWasTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType;
        nextBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
}
