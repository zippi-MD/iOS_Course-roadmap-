//import PlaygroundSupport
//import UIKit
//struct Pokemon {
//    let name: String
//    let trainer: String
//    let attack: String
//    var color: UIColor?
//}
//let pikachu: Pokemon = Pokemon(name: "Pikachu", trainer: "Zippy", attack: "⚡️⚡️⚡️Thunder⚡️⚡️⚡️", color: .yellow)
//let charmander: Pokemon = Pokemon(name: "Charmander", trainer: "Metallica", attack: ":fire::fire::fire:Fireball:fire::fire::fire:")
//let squirtle: Pokemon = Pokemon(name: "Squirtle", trainer: "Oscar", attack: ":sweat_drops::sweat_drops::sweat_drops:Hydro Pump :sweat_drops::sweat_drops::sweat_drops:")
//let bulbasaur: Pokemon = Pokemon(name: "Bulbasaur", trainer: "Semi", attack: ":leaves::leaves::leaves:Razor Blades :leaves::leaves::leaves:")
//let evvee: Pokemon = Pokemon(name: "Evvee", trainer: "Ash", attack: "Quick :sparkles::sparkles::sparkles:Attack:sparkles::sparkles::sparkles:")
//
//let myPokemons: [Pokemon] = [pikachu, charmander, squirtle, bulbasaur, evvee]
//
//
//
//class PokedexViewController: UITableViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.title = "Pokedex"
//        //self.navigationController?.navigationBar.prefersLargeTitles = true
//
//    }
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return myPokemons.count
//    }
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell: UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
//        cell.accessoryType = .disclosureIndicator
//        cell.textLabel?.text = myPokemons[indexPath.row].name
//
//        return cell
//    }
//override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedPokemon: Pokemon = myPokemons[indexPath.row]
//        let pokemonDetaill: PokemonInfoViewController = PokemonInfoViewController()
//        pokemonDetaill.pokemonName = selectedPokemon.name
//        pokemonDetaill.trainerName = selectedPokemon.trainer
//        pokemonDetaill.attackName = selectedPokemon.attack
//    pokemonDetaill.background = selectedPokemon.color
//        self.navigationController?.pushViewController(pokemonDetaill, animated: true)
//    }
//}
//class PokemonInfoViewController: UIViewController {
//    var pokemonName: String?
//    var trainerName: String?
//    var attackName: String?
//    var background: UIColor?
//
//    var attackLabel: UILabel?
//    var attackButton: UIButton?
//
//    var isAttacking: Bool = false
//
//    override func loadView() {
//        super.loadView()
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//    override func viewDidAppear( _ animated: Bool) {
//        super.viewDidAppear(animated)
//        self.title = pokemonName
//        self.view.backgroundColor = background
//        let trainerLabel = UILabel(frame:CGRect(x: 0, y: 0, width: 500, height: 200))
//        trainerLabel.text = "My trainer is : \(trainerName ?? "Missing trainer name")"
//
//        attackLabel = UILabel(frame: CGRect(x: 0, y: 200,width: 500, height: 200))
//        attackLabel?.text = ""
//        attackButton = UIButton(frame: CGRect(x: 0, y: 400, width: 500, height: 200))
//        attackButton?.setTitle("Attack", for: .normal)
//        attackButton?.setTitle("Release to Stan by", for: .highlighted)
//        attackButton?.addTarget(self, action: #selector(makeAttack), for: .touchUpInside)
////        attackButton.addTarget(self, action: #selector(reset), for: .touchUpInside)
//
//
//        if let attackButton = attackButton {
//            self.view.addSubview(attackButton)
//        }
//
//        self.view.addSubview(trainerLabel)
//
//        if let attackLabel = attackLabel {
//            self.view.addSubview(attackLabel)
//        }
//    }
//
//    @objc func makeAttack() {
//
//        let buttonTitle: String
//        let labelTitle: String
//
//        if isAttacking {
//            labelTitle = ""
//            buttonTitle = "Attack"
//        }
//        else {
//            labelTitle = "\(attackName ?? "Fuck u")"
//            buttonTitle = "Reset"
//        }
//
//        attackLabel?.text = labelTitle
//        attackButton?.setTitle(buttonTitle, for: .normal)
//        isAttacking.toggle()
//    }
//    @objc func reset() {
//        attackLabel?.text = ""
//    }
//}
//
//let pokedex: PokedexViewController = PokedexViewController()
//let navigation: UINavigationController = UINavigationController(rootViewController: pokedex)
//PlaygroundPage.current.liveView = navigation
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

import PlaygroundSupport
import UIKit


// Model
struct Pokemon {
    
    enum PType {
        case fire, water, grass, electric
    }
    
    let name: String
    let attack: String
    let ptype: PType
    var imageURL: String?
}

let pikachu = Pokemon(name: "Pikachu",
                      attack: "Thunderbolt",
                      ptype: .electric,
                      imageURL: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png")

let charmander = Pokemon(name: "Charmander",
                         attack: "Fire punch",
                         ptype: .fire,
                         imageURL: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png")

let bulbasur = Pokemon(name: "Bulbasur",
                       attack: "Razer leaf",
                       ptype: .grass,
                       imageURL: "https://cdn.bulbagarden.net/upload/2/21/001Bulbasaur.png")

let pokedexData: [Pokemon] = [pikachu, charmander, bulbasur]


class PokedexViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var pokemonImageView: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.backgroundColor = .red
        
        // dirección --> Internet
//        https://pngimg.com/uploads/pokemon_logo/pokemon_logo_PNG10.png
        let url = URL(string: "https://pngimg.com/uploads/pokemon_logo/pokemon_logo_PNG10.png")!
        let data = try! Data(contentsOf: url)
        let image = UIImage(data: data)
        
        let logoView = UIImageView(image: image)
        
        
        let table = UITableView()
        table.dataSource = self
        table.delegate = self
        // DataSource --> Información necesaria para presentar sus elementos
        // Table Delegate --> Ser capaz de responder a los eventos de una table
        
        let displayView = UIView()
        displayView.backgroundColor = UIColor(red: 83.0/255.0,
                                              green: 124.0/255.0,
                                              blue: 110.0/255.0,
                                              alpha: 1.0)
        
        pokemonImageView = UIImageView()
        pokemonImageView.contentMode = .scaleAspectFit
        
        self.view.addSubview(logoView)
        self.view.addSubview(table)
        self.view.addSubview(displayView)
        self.view.addSubview(pokemonImageView)
        
        logoView.translatesAutoresizingMaskIntoConstraints = false
        table.translatesAutoresizingMaskIntoConstraints = false
        displayView.translatesAutoresizingMaskIntoConstraints = false
        pokemonImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            logoView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            logoView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            logoView.heightAnchor.constraint(equalToConstant: 500),
            
            
            table.bottomAnchor.constraint(equalTo: logoView.topAnchor),
            table.topAnchor.constraint(equalTo: self.view.topAnchor),
            table.widthAnchor.constraint(equalToConstant: 300),
//            table.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            table.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            
            displayView.bottomAnchor.constraint(equalTo: logoView.topAnchor),
            displayView.leadingAnchor.constraint(equalTo: table.trailingAnchor),
            displayView.topAnchor.constraint(equalTo: self.view.topAnchor),
            displayView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
            pokemonImageView.bottomAnchor.constraint(equalTo: logoView.topAnchor),
            pokemonImageView.leadingAnchor.constraint(equalTo: table.trailingAnchor),
            pokemonImageView.topAnchor.constraint(equalTo: self.view.topAnchor),
            pokemonImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
        
    }
    
    //Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokedexData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        let selectedPokemon = pokedexData[indexPath.row]
        
        cell.textLabel?.text = selectedPokemon.name
        
        return cell
        
    }
    
    //Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPokemon = pokedexData[indexPath.row]
        
        let image = UIImage(data: try! Data(contentsOf: URL(string: selectedPokemon.imageURL!)!))
        
        pokemonImageView.image = image
        
    }
    
}

PlaygroundPage.current.liveView = PokedexViewController()


// Protocolos?
// - Contrato
// - Lo que tenemos que saber hacer hacer para poder llevar a cabo un trabajo




// revisar protocolos
// puntos vs pixeles iOS
// url vs uri

// deque cell table view (reuse identifier of a cell)

// Agregar label del nombre del pokemon

