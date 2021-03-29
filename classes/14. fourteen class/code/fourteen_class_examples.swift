
import PlaygroundSupport
import UIKit


struct Pokemon {
    
    //Raw value
    enum PType: String, CaseIterable {
        case fire = "Fuego"
        case water = "Agua"
        case grass = "Hierba"
        case electric = "Eléctrico"
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

let raichu = Pokemon(name: "Raichu",
                     attack: "Thunder punch",
                     ptype: .electric,
                     imageURL: "https://cdn.bulbagarden.net/upload/8/88/026Raichu.png")

let charmander = Pokemon(name: "Charmander",
                         attack: "Fire punch",
                         ptype: .fire,
                         imageURL: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png")

let bulbasur = Pokemon(name: "Bulbasur",
                       attack: "Razer leaf",
                       ptype: .grass,
                       imageURL: "https://cdn.bulbagarden.net/upload/2/21/001Bulbasaur.png")


var pokedexData: [Pokemon] = [pikachu, charmander, bulbasur, raichu]

func pokemonFor(_ type: Pokemon.PType) -> [Pokemon] { //electric
    var pokemonForType: [Pokemon] = [] //[pikachu, raichu]
    
    for pokemon in pokedexData {
        if pokemon.ptype == type {
            pokemonForType.append(pokemon)
        }
    }
    
    return pokemonForType
}


class PokedexViewController: UIViewController {
    
    var pokemonImageView: UIImageView!
    var nameLabel: UILabel!
    
    var selectedType: Pokemon.PType = .fire
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.backgroundColor = .red
        
        
        let url = URL(string: "https://pngimg.com/uploads/pokemon_logo/pokemon_logo_PNG10.png")!
        let data = try! Data(contentsOf: url)
        let image = UIImage(data: data)
        
        nameLabel = UILabel()
        nameLabel.text = "Pokedex"
        nameLabel.textColor = UIColor.white
        nameLabel.font = UIFont.boldSystemFont(ofSize: 40)
        nameLabel.textAlignment = .center
        
        
        
        let logoView = UIImageView(image: image)
        logoView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapLogo))
        //pan gesture
        tap.numberOfTapsRequired = 3
        logoView.addGestureRecognizer(tap)
        
        
        let table = UIPickerView()
        table.dataSource = self
        table.delegate = self
        
        
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
        self.view.addSubview(nameLabel)
        
        logoView.translatesAutoresizingMaskIntoConstraints = false
        table.translatesAutoresizingMaskIntoConstraints = false
        displayView.translatesAutoresizingMaskIntoConstraints = false
        pokemonImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            logoView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            logoView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            logoView.heightAnchor.constraint(equalToConstant: 400),
            
            
            table.bottomAnchor.constraint(equalTo: logoView.topAnchor),
            table.topAnchor.constraint(equalTo: self.view.topAnchor),
            table.widthAnchor.constraint(equalToConstant: 300),
            //            table.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            table.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            
            nameLabel.bottomAnchor.constraint(equalTo: displayView.topAnchor),
            nameLabel.topAnchor.constraint(equalTo: self.view.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: table.trailingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
            displayView.bottomAnchor.constraint(equalTo: logoView.topAnchor),
            displayView.leadingAnchor.constraint(equalTo: table.trailingAnchor),
            displayView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            displayView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
            pokemonImageView.bottomAnchor.constraint(equalTo: logoView.topAnchor),
            pokemonImageView.leadingAnchor.constraint(equalTo: table.trailingAnchor),
            pokemonImageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            pokemonImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
        
    }
    
    @objc func didTapLogo() { //ANY
        let colors: [UIColor] = [.blue, .red, .orange, .systemPink, .black, .brown, .cyan, .clear]
        let randomIndex = Int.random(in: 0..<colors.count)
        
        self.view.backgroundColor = colors[randomIndex]
    }
    
}

extension PokedexViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return Pokemon.PType.allCases.count
        }
        else if component == 1 {
//            [pikachu, charmander, bulbasur, raichu] --> 4
//            selectedType --> fire
            let pokemonForType = pokemonFor(selectedType) //[charmander]
            return pokemonForType.count
        }
        else {
            return 0
        }
        
    }
}

extension PokedexViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            let typeName = Pokemon.PType.allCases[row] //[.fire, .water, .grass, .electric] --> Pokemon.Ptype.fire
            return typeName.rawValue
        }
        else if component == 1 {
            //            [pikachu, charmander, bulbasur, raichu] --> 4
            //            selectedType --> fire
            let pokemonForType = pokemonFor(selectedType)
            return pokemonForType[row].name
        }
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            let pokemonTypes = Pokemon.PType.allCases
            selectedType = pokemonTypes[row]
            pickerView.reloadComponent(1)
        }
    }
}

PlaygroundPage.current.liveView = PokedexViewController()


// replace the table with an UIPickerView

