//
//  VocabularyTableViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/23/23.
//

import UIKit

class VocabularyTableViewController: UITableViewController {
  
  let vocabularyTerms: [VocabularyTerm] = [
    .init(term: "Hominid", definition: "Hominid refers to any member of the family Hominidae, which is a biological classification that includes all species on the human lineage since the point of divergence with the ape lineage. This family of species is noteworthy for its bipedal locomotion and high degree of intelligence relative to other species."),
    .init(term: "Paleolithic Era", definition: "The Paleolithic Era, also known as the Old Stone Age, is a crucial period in human prehistory that is primarily characterized by the emergence and predominance of stone tools, utilized by early humans for survival. This was the era where our ancestors made significant strides in cognitive and technological development, as seen through the creation of tools, cave paintings, and various symbolic artifacts."),
    .init(term: "Mesolithic Era", definition: "The Mesolithic Era serves as the transitional phase between the Paleolithic and Neolithic eras. Also referred to as the Middle Stone Age, it signifies a period when humans began to develop more refined tools and started settling in specific areas due to the advent of favourable climatic conditions."),
    .init(term: "Neolithic Era", definition: "The Neolithic Era, commonly known as the New Stone Age, is a significant period in human history characterized by the development of agriculture, settled life, pottery-making, and the construction of monumental architecture. This period marked the shift from nomadic hunter-gatherer communities to agrarian societies, providing the foundation for modern civilizations."),
    .init(term: "Domestication", definition: "Domestication refers to the long-term process whereby humans intervene and manipulate the breeding patterns of wild plants and animals, ultimately making these species more useful for human societies. These domesticated species can provide various resources such as food, work assistance, clothing, medicinal products, and even companionship. It was a crucial development that significantly impacted human lifestyle and civilization."),
    .init(term: "Hunter-Gatherers", definition: "Hunter-Gatherers were early humans whose survival primarily depended on hunting animals and gathering plants, rather than farming or domesticating animals. These nomadic groups were highly adapted to their environments and made use of all available food resources to sustain themselves."),
    .init(term: "Agriculture", definition: "Agriculture is a sophisticated blend of the science and art of cultivating plants and rearing livestock. It played a pivotal role in the rise of sedentary human civilization by providing a stable food source, which led to an increase in population, the formation of communities, and eventually complex societies."),
    .init(term: "Metallurgy", definition: "Metallurgy is a specialized branch of science and technology that focuses on the study of the physical and chemical behavior of metals and their alloys. This field is heavily concerned with procedures related to the extraction, production, and purification of various metals."),
    .init(term: "Bronze Age", definition: "The Bronze Age is a historical period characterized by the widespread use of bronze in tools, weapons, and ornaments, early writing systems, and the initial stages of urban civilization. This period was marked by increasing social complexity and technological advancement."),
    .init(term: "Cuneiform", definition: "Cuneiform is one of the earliest known systems of writing, innovated by the Sumerians of Mesopotamia around 3200–3000 BCE. The script, inscribed on clay tablets with a reed stylus, includes pictographic, ideographic and phonetic symbols and was used for several thousand years in a variety of Middle Eastern cultures."),
    .init(term: "Hieroglyphics", definition: "Hieroglyphics is an ancient writing system that used pictorial symbols to represent words or sounds. Primarily used by the ancient Egyptians, these picture symbols were utilized for a range of purposes, including recording royal decrees, religious texts, and administrative documents. This sophisticated writing system, which includes both logographic and alphabetic elements, was key to understanding the culture and civilization of Ancient Egypt."),
    .init(term: "Archaeology", definition: "Archaeology is the scientific study of human history and prehistory through meticulous excavation of archaeological sites and the in-depth analysis of artifacts and other physical remains. The discipline provides an invaluable perspective on the human past, exploring various aspects such as cultures, behaviors, and societal development. It spans the period from the earliest human origins to the present day.")
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupTabBar()
    setupTableView()
  }
  
  private func setupTabBar() {
    guard let tabBar = tabBarController?.tabBar else { return }
    
    tabBar.isTranslucent = false
    tabBar.barTintColor = UIColor(named: "BackgroundColor2")
  }
  
  private func setupTableView() {
    tableView.dataSource = self
    tableView.tintColor = UIColor(named: "TextColor")
    navigationController?.navigationBar.tintColor = UIColor(named: "TextColor")
  }
  
  // MARK: - Table view data source
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return vocabularyTerms.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TermCell", for: indexPath)
    let term = vocabularyTerms[indexPath.row]
    configureCell(cell, with: term)
    return cell
  }
  
  private func configureCell(_ cell: UITableViewCell, with term: VocabularyTerm) {
    cell.textLabel?.text = term.term
    cell.textLabel?.font = UIFont(name: "Avenir", size: 20)
    cell.textLabel?.textColor = UIColor(named: "TextColor")
    
    cell.detailTextLabel?.text = term.definition
    cell.detailTextLabel?.font = UIFont(name: "Avenir", size: 16)
    cell.detailTextLabel?.textColor = UIColor(named: "TextColor")
    
    cell.backgroundColor = UIColor(named: "BackgroundColor")
    cell.accessoryType = .disclosureIndicator
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80.0
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    showDefinitionForTerm(at: indexPath)
  }
  
  private func showDefinitionForTerm(at indexPath: IndexPath) {
    let term = vocabularyTerms[indexPath.row]
    let definitionVC = DefinitionViewController(term: term)
    
    let backItem = UIBarButtonItem()
    backItem.title = "Back"
    self.navigationItem.backBarButtonItem = backItem
    
    navigationController?.pushViewController(definitionVC, animated: true)
  }
}

