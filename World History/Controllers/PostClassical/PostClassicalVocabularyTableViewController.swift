//
//  PostClassicalVocabularyTableViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/26/23.
//

import UIKit

class PostClassicalVocabularyTableViewController: UITableViewController {
  
  let postClassicalVocabularyTerms: [VocabularyTerm] = [
    .init(term: "Feudalism", definition: "Feudalism was a combination of legal, economic, military, and cultural customs that flourished in Medieval Europe between the 9th and 15th centuries. It structured society around relationships derived from the holding of land in exchange for service or labor."),
    .init(term: "Manorialism", definition: "Manorialism, also known as the manor system, was the method of economic and political organization in the Middle Ages in Europe. Land was owned by the lord and worked by serfs or peasants who were bound to the estate."),
    .init(term: "Scholasticism", definition: "Scholasticism was a Medieval school of philosophy that employed a critical method of philosophical analysis presupposed upon a Latin Catholic theistic curriculum."),
    .init(term: "Crusades", definition: "The Crusades were a series of religious wars initiated, supported, and sometimes directed by the Latin Church in the medieval period. The best known of these Crusades were the campaigns in the Eastern Mediterranean aimed at recovering the Holy Land from Islamic rule."),
    .init(term: "Renaissance", definition: "The Renaissance was a period in European history marking the transition from the Middle Ages to Modernity and covering the 15th and 16th centuries."),
    .init(term: "Humanism", definition: "Humanism is a philosophical stance that emphasizes the value and agency of human beings, individually and collectively. During the Renaissance, it was a cultural movement that turned away from medieval scholasticism and revived interest in ancient Greek and Roman thought."),
    .init(term: "Samurai", definition: "Samurai were the hereditary military nobility and officer caste of medieval and early-modern Japan from the late 12th century to their abolition in the 1870s."),
    .init(term: "Bushido", definition: "Bushido, literally 'the way of the warrior', is a Japanese code of conduct and a way of life, analogous to the concept of chivalry in Europe. It originates from the samurai moral values, most commonly stressing some combination of sincerity, frugality, loyalty, martial arts mastery, and honor until death."),
    .init(term: "Shogunate", definition: "The Shogunate was the hereditary military dictatorship of Japan during the period from 1192 to 1867. In this period, the shōguns were the de facto rulers of the country, although they were nominally appointed by the Emperor."),
    .init(term: "Silk Road", definition: "The Silk Road was an ancient network of trade routes that connected the East and West, and was central to cultural interaction between the regions for many centuries."),
    .init(term: "Caliphate", definition: "A caliphate is an Islamic state under the leadership of an Islamic steward with the title of caliph, a person considered a religious successor to the Islamic prophet Muhammad and a leader of the entire Muslim community."),
    .init(term: "Mongol Empire", definition: "The Mongol Empire existed during the 13th and 14th centuries and was the largest contiguous land empire in history, originating in Mongolia in East Asia."),
    .init(term: "Byzantine Empire", definition: "The Byzantine Empire, also referred to as the Eastern Roman Empire, was the continuation of the Roman Empire in its eastern provinces during Late Antiquity and the Middle Ages, when its capital city was Constantinople."),
    .init(term: "Gothic Architecture", definition: "Gothic architecture is a style that flourished in Europe during the High and Late Middle Ages. It evolved from Romanesque architecture and was succeeded by Renaissance architecture."),
    .init(term: "Black Death", definition: "The Black Death, also known as the Pestilence and the Plague, was the deadliest pandemic recorded in human history. The Black Death resulted in the deaths of up to 75–200 million people in Eurasia and North Africa, peaking in Europe from 1347 to 1351.")
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
    return postClassicalVocabularyTerms.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TermCell", for: indexPath)
    let term = postClassicalVocabularyTerms[indexPath.row]
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
    let term = postClassicalVocabularyTerms[indexPath.row]
    let definitionVC = DefinitionViewController(term: term)
    
    let backItem = UIBarButtonItem()
    backItem.title = "Back"
    self.navigationItem.backBarButtonItem = backItem
    
    navigationController?.pushViewController(definitionVC, animated: true)
  }
  
}
