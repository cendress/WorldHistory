//
//  ContemporaryVocabularyTableViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/28/23.
//

import UIKit

class ContemporaryVocabularyTableViewController: UITableViewController {
  
  let contemporaryVocabularyTerms: [VocabularyTerm] = [
    .init(term: "Cold War", definition: "A period of geopolitical tension between the Soviet Union and the United States and their respective allies after World War II, lasting from 1947 to 1991."),
    .init(term: "Globalization", definition: "The process of interaction and integration among people, companies, and governments worldwide. An ongoing process that involves interconnectedness of different aspects of society, including economic, political, and cultural."),
    .init(term: "Decolonization", definition: "The undoing of colonialism, where a nation establishes and maintains its domination on overseas territories. The term refers particularly to the dismantlement of the colonial empires established prior to World War II."),
    .init(term: "Information Age", definition: "The current era characterized by the ability of individuals to transfer information freely, and to have instant access to information that would have been difficult or impossible to find previously."),
    .init(term: "Digital Revolution", definition: "The change from analog, mechanical, and electronic technology to digital technology that began during the 1980s and continues to the present day."),
    .init(term: "Climate Change", definition: "A long-term shift in global or regional climate patterns, often referring specifically to the rise in global temperatures from the mid-20th century to present."),
    .init(term: "Internet", definition: "A global network of computers that works on the basis of standardized communication protocols, allowing connectivity among any set of interconnected networks. It has significant impacts on society and culture."),
    .init(term: "Human Rights", definition: "Moral principles or norms that describe certain standards of human behavior and are regularly protected as natural and legal rights in municipal and international law."),
    .init(term: "Feminism", definition: "A range of social movements, political movements, and ideologies that share a common goal: to define, establish, and achieve the political, economic, personal, and social equality of the sexes."),
    .init(term: "Civil Rights", definition: "A struggle for social justice that took place mainly during the 1950s and 1960s for blacks to gain equal rights under the law in the United States."),
    .init(term: "Terrorism", definition: "The unlawful use of violence and intimidation, especially against civilians, in the pursuit of political aims."),
    .init(term: "Genetic Engineering", definition: "The direct manipulation of an organism's genes using biotechnology."),
    .init(term: "Artificial Intelligence", definition: "The simulation of human intelligence processes by machines, especially computer systems. These processes include learning, reasoning, problem-solving, perception, and language understanding."),
    .init(term: "Cybersecurity", definition: "The state of being protected against the criminal or unauthorized use of electronic data, or the measures taken to achieve this."),
    .init(term: "LGBTQ+ Rights", definition: "Civil rights for all LGBTQ+ individuals. The struggle for legal rights and protections for LGBTQ+ people began in earnest during the late 20th and early 21st centuries."),
    .init(term: "Postmodernism", definition: "A broad movement that developed in the mid- to late 20th century across philosophy, the arts, architecture, and criticism, marking a departure from modernism."),
    .init(term: "Renewable Energy", definition: "Energy that is collected from resources which are naturally replenished on a human timescale, such as sunlight, wind, rain, tides, waves, and geothermal heat."),
    .init(term: "COVID-19 Pandemic", definition: "An ongoing pandemic of coronavirus disease 2019 (COVID-19) caused by severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2). The virus was first identified in December 2019 in Wuhan, China."),
    .init(term: "Social Media", definition: "Interactive digitally-mediated technologies that facilitate the creation or sharing/exchange of information, ideas, career interests, and other forms of expression via virtual communities and networks.")
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
    return contemporaryVocabularyTerms.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TermCell", for: indexPath)
    let term = contemporaryVocabularyTerms[indexPath.row]
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
    let term = contemporaryVocabularyTerms[indexPath.row]
    let definitionVC = DefinitionViewController(term: term)
    
    let backItem = UIBarButtonItem()
    backItem.title = "Back"
    self.navigationItem.backBarButtonItem = backItem
    
    navigationController?.pushViewController(definitionVC, animated: true)
  }
  
}
