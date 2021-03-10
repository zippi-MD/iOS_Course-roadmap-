
import PlaygroundSupport
import UIKit
//UITableViewController --> UIViewController
// protocols for a Table View on iOS
//Model
struct Pokemon {
    let name: String
    let trainer: String
}
let pikachu: Pokemon = Pokemon(name: "Pikachu", trainer: "Zippi")
let charmander: Pokemon = Pokemon(name: "Charmander", trainer: "Metallica")
let squirtle: Pokemon = Pokemon(name: "Squirtle", trainer: "Oscar")

let myPokemons: [Pokemon] = [pikachu, charmander, squirtle]

//Controller
class PokedexViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pokedex"
//          self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPokemons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = myPokemons[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPokemon: Pokemon = myPokemons[indexPath.row]
        let pokemonDetail: PokemonInfoViewController = PokemonInfoViewController()
        pokemonDetail.pokemonName = selectedPokemon.name
        pokemonDetail.trainerName = selectedPokemon.trainer
        self.navigationController?.pushViewController(pokemonDetail, animated: true)
    }
}

class PokemonInfoViewController: UIViewController {
    
    var pokemonName: String?
    var trainerName: String?
    var attackLabel: UILabel?
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemPink
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.title = pokemonName
        
        let trainerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 200))
            //Constraints?
        trainerLabel.text = "My trainer is: \(trainerName ?? "Missing trainer name")"
        
        attackLabel = UILabel(frame: CGRect(x: 0, y: 200, width: 500, height: 200))
        attackLabel?.text = "Here goes the pokemon attack"
        
        let attackButton = UIButton(frame: CGRect(x: 0, y: 400, width: 500, height: 200))
        attackButton.setTitle("Attack", for: .normal)
        attackButton.setTitle("Release to attack", for: .highlighted)
        attackButton.addTarget(self, action: #selector(makeAttack), for: .touchUpInside)
        
        self.view.addSubview(attackButton)
        self.view.addSubview(trainerLabel)
        if let label = attackLabel {
            self.view.addSubview(label)
        }
    }
    
    @objc func makeAttack() {
        // utf8?
        attackLabel?.text = "⚡️Thunderbolt⚡️"
    }
}


let pokedex: PokedexViewController = PokedexViewController()
let navigation: UINavigationController = UINavigationController(rootViewController: pokedex)
PlaygroundPage.current.liveView = navigation


    // Protocols for table view for iOS
    // Constraints on iOS? 
    // utf8
    // Add 2 pokemon 
    // each pokemon have a unique attack
    // optional
    // Update button state after attack to remove attack
    // optional view background color specific for each pokemon

