//
//  VocabularyTableViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/23/23.
//

import UIKit

class VocabularyTableViewController: UITableViewController {
  
  let vocabularyTerms = [
    ["term": "Hominid", "definition": "Members of the family Hominidae, which includes all species on the human side of the last common ancestors with the apes."],
    ["term": "Paleolithic Era", "definition": "Also known as the Old Stone Age, this period of prehistory is characterized by the use of stone tools by early humans."],
    ["term": "Mesolithic Era", "definition": "The transitional period between the Paleolithic and Neolithic eras, also known as the Middle Stone Age."],
    ["term": "Neolithic Era", "definition": "Also known as the New Stone Age, this period is marked by the development of agriculture and settled life."],
    ["term": "Domestication", "definition": "The process of adapting wild plants and animals for human use. Domestic species are raised for food, work, clothing, medicine, and many other uses."],
    ["term": "Hunter-Gatherers", "definition": "Early humans who lived by hunting animals and gathering plants rather than by agriculture."],
    ["term": "Agriculture", "definition": "The science and art of cultivating plants and livestock. Agriculture was the key development in the rise of sedentary human civilization."],
    ["term": "Metallurgy", "definition": "The branch of science and technology concerned with the properties of metals and their production and purification."],
    ["term": "Bronze Age", "definition": "A historical period characterized by the use of bronze, early writing systems, and the early development of urban civilization."],
    ["term": "Cuneiform", "definition": "One of the earliest systems of writing, developed by the Sumerians of Mesopotamia c. 3200–3000 BCE."],
    ["term": "Hieroglyphics", "definition": "A writing system using picture symbols, used in ancient Egypt."],
    ["term": "Archaeology", "definition": "The study of human history and prehistory through the excavation of sites and the analysis of artifacts and other physical remains."]
  ]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tabBarController?.tabBar.isTranslucent = false
    tabBarController?.tabBar.barTintColor = UIColor(named: "BackgroundColor2")
    tableView.tintColor = UIColor(named: "TextColor")
    navigationController?.navigationBar.tintColor = UIColor(named: "TextColor")
    
    tableView.dataSource = self
  }
  
  // MARK: - Table view data source
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return vocabularyTerms.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TermCell", for: indexPath)
    let term = vocabularyTerms[indexPath.row]
    cell.textLabel?.text = term["term"]
    cell.textLabel?.font = UIFont(name: "Avenir", size: 20)
    cell.textLabel?.textColor = UIColor(named: "TextColor")
    cell.detailTextLabel?.text = term["definition"]
    cell.detailTextLabel?.font = UIFont(name: "Avenir", size: 16)
    cell.detailTextLabel?.textColor = UIColor(named: "TextColor")
    cell.backgroundColor = UIColor(named: "BackgroundColor")
    cell.accessoryType = .disclosureIndicator
    return cell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80.0
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)
      
      let term = vocabularyTerms[indexPath.row]
      
      let definitionVC = DefinitionViewController()
      definitionVC.term = term["term"]
      definitionVC.definition = term["definition"]
      
      navigationController?.pushViewController(definitionVC, animated: true)
  }

}
