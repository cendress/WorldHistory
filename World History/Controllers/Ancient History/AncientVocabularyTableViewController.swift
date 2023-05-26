//
//  AncientVocabularyTableViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/26/23.
//

import UIKit

class AncientVocabularyTableViewController: UITableViewController {
  
  let ancientVocabularyTerms: [VocabularyTerm] = [
    .init(term: "Civilization", definition: "Civilization refers to a complex society characterized by urban development, symbolic communication forms, and a perceived separation from and domination over the natural environment. It's marked by advancements in societal structure, agriculture, industry, and culture."),
    .init(term: "Sumerians", definition: "The Sumerians were the people of Sumer, the southernmost region of Mesopotamia, which is now modern-day Iraq. They are credited with the creation of one of the first civilizations and made significant advancements in technology, culture, and government."),
    .init(term: "Cuneiform", definition: "Cuneiform is one of the earliest known systems of writing, innovated by the Sumerians of Mesopotamia around 3200–3000 BCE. The script, inscribed on clay tablets with a reed stylus, includes pictographic, ideographic, and phonetic symbols and was used for several thousand years in a variety of Middle Eastern cultures."),
    .init(term: "Pharaoh", definition: "A Pharaoh was a ruler in ancient Egypt. The title of Pharaoh was used for those rulers of Ancient Egypt who ruled after the unification of Upper and Lower Egypt by Narmer during the Early Dynastic Period, approximately 3100 BC. However, the specific term 'Pharaoh' was not used to address the kings of Egypt by their contemporaries until the rule of Merneptah in the 19th Dynasty, c. 1200 BC."),
    .init(term: "Hieroglyphics", definition: "Hieroglyphics is an ancient writing system that used pictorial symbols to represent words or sounds. Primarily used by the ancient Egyptians, these picture symbols were utilized for a range of purposes, including recording royal decrees, religious texts, and administrative documents. This sophisticated writing system, which includes both logographic and alphabetic elements, was key to understanding the culture and civilization of Ancient Egypt."),
    .init(term: "Mummification", definition: "Mummification is a process in which the skin and flesh of a corpse can be preserved. The process can occur naturally or it can be intentional. If it's naturally preserved, such as the bodies were mummified in the arid desert heat, then it's referred to as an 'accidental mummy'. If it's deliberately preserved by applying animal oils, resins, and other substances, then it's an 'anthropogenic mummy'."),
    .init(term: "City-State", definition: "A city-state is a sovereign state that consists of a city and its dependent territories. Historically, this included famous cities like Rome, Athens, and Sparta, but today only a handful of sovereign city-states exist."),
    .init(term: "Democracy", definition: "Democracy is a form of government in which the people have the authority to choose their governing legislation. The word is derived from the Greek words 'dēmos' (people) and 'kratos' (rule)."),
    .init(term: "Philosophy", definition: "Philosophy is the study of fundamental questions about existence, reality, knowledge, values, reason, mind, and ethics. The Ancient Greek philosophers Plato, Socrates, and Aristotle were among the most influential philosophers who laid the groundwork for Western philosophy."),
    .init(term: "Empire", definition: "An empire is a political system in which a group of states is governed by a single entity, usually an emperor or empress. Empires often form after a single state or kingdom manages to extend its sovereignty over other territories."),
    .init(term: "Pax Romana", definition: "Pax Romana, Latin for 'Roman Peace', is a term referring to the state of comparative tranquillity throughout the Mediterranean world from the reign of Augustus (27 BC–AD 14) to the reign of Marcus Aurelius (AD 161–180)."),
    .init(term: "Confucianism", definition: "Confucianism is a tradition, a philosophy, and a religion, or sometimes said as a way of life or societal norm. Originated by the Chinese philosopher Confucius, it emphasizes personal and governmental morality, correctness of social relationships, justice, and sincerity.")
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
    return ancientVocabularyTerms.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TermCell", for: indexPath)
    let term = ancientVocabularyTerms[indexPath.row]
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
    let term = ancientVocabularyTerms[indexPath.row]
    let definitionVC = AncientDefinitionViewController(term: term)
    
    let backItem = UIBarButtonItem()
    backItem.title = "Back"
    self.navigationItem.backBarButtonItem = backItem
    
    navigationController?.pushViewController(definitionVC, animated: true)
  }
  
}
