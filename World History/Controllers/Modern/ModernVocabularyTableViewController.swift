//
//  ModernVocabularyTableViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/27/23.
//

import UIKit

class ModernVocabularyTableViewController: UITableViewController {
  
  let modernVocabularyTerms: [VocabularyTerm] = [
    .init(term: "Industrial Revolution", definition: "The Industrial Revolution was a period of major industrialization that took place during the late 1700s and early 1800s. It was a time of significant change that began in Britain and subsequently spread across the world."),
    .init(term: "Capitalism", definition: "Capitalism is an economic system in which private individuals or businesses own capital goods. The production of goods and services is based on supply and demand in the general market."),
    .init(term: "Nationalism", definition: "Nationalism is a political ideology which advocates for the interest of a particular nation, especially with the aim of gaining and maintaining the nation's sovereignty over its homeland."),
    .init(term: "Colonialism", definition: "Colonialism is the policy of a foreign polity seeking to extend or retain its authority over other people or territories, generally with the aim of economic dominance."),
    .init(term: "Enlightenment", definition: "The Enlightenment was an intellectual and philosophical movement that dominated the world of ideas in Europe during the 17th and 18th centuries."),
    .init(term: "Darwinism", definition: "Darwinism is a theory of biological evolution developed by Charles Darwin, stating that all species of organisms arise and develop through the natural selection of small, inherited variations that increase the individual's ability to compete, survive, and reproduce."),
    .init(term: "Freudian Psychology", definition: "Freudian psychology is based on the work of Sigmund Freud, who developed the theory of psychoanalysis. It focuses on the influence of the unconscious mind on behavior."),
    .init(term: "Marxism", definition: "Marxism is a social, political, and economic theory originated by Karl Marx, which focuses on the struggle between capitalists and the working class."),
    .init(term: "World War I", definition: "World War I was a global conflict that took place primarily in Europe from 1914 to 1918. It led to significant geopolitical change, including revolutions in many of the nations involved."),
    .init(term: "Russian Revolution", definition: "The Russian Revolution was a period of political and social revolution across the territory of Russia, commencing in 1917 with the abolition of the monarchy and concluding in 1923 with the ascension of the Soviet Union."),
    .init(term: "Impressionism", definition: "Impressionism is an art movement that originated in France in the 19th century. It is characterized by small, thin, yet visible brush strokes, open composition, emphasis on accurate depiction of light in its changing qualities."),
    .init(term: "Surrealism", definition: "Surrealism is a cultural movement that began in the early 1920s, best known for its visual artworks and writings. It aimed to resolve the previously contradictory conditions of dream and reality."),
    .init(term: "Modernism", definition: "Modernism is a philosophical movement that, along with cultural trends and changes, arose from wide-scale and far-reaching transformations in Western society in the late 19th and early 20th centuries."),
    .init(term: "Second Industrial Revolution", definition: "The Second Industrial Revolution, also known as the Technological Revolution, was a phase of the larger Industrial Revolution corresponding to the latter half of the 19th century until World War I. It is characterized by developments in machinery, transportation, and industrialization."),
    .init(term: "Imperialism", definition: "Imperialism is a policy or ideology by a nation to extend its power and influence over weaker nations through diplomacy or military force. This was particularly prevalent during the 19th and early 20th centuries."),
    .init(term: "Suffragette Movement", definition: "The Suffragette Movement refers to the campaign for women's right to vote in the late 19th and early 20th centuries."),
    .init(term: "Prohibition", definition: "Prohibition was a constitutional ban on the production, importation, transportation, and sale of alcoholic beverages. In the United States, it lasted from 1920 to 1933."),
    .init(term: "Roaring Twenties", definition: "The Roaring Twenties is a term for the 1920s in the Western world. It was a period of economic prosperity and cultural dynamism, with major shifts in lifestyle and culture, particularly in the United States."),
    .init(term: "Great Depression", definition: "The Great Depression was a severe worldwide economic depression that took place during the 1930s, beginning in the United States. The timing varied across nations, but in most countries, it started in 1929 and lasted until the late 1930s.")
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
    return modernVocabularyTerms.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TermCell", for: indexPath)
    let term = modernVocabularyTerms[indexPath.row]
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
    let term = modernVocabularyTerms[indexPath.row]
    let definitionVC = DefinitionViewController(term: term)
    
    let backItem = UIBarButtonItem()
    backItem.title = "Back"
    self.navigationItem.backBarButtonItem = backItem
    
    navigationController?.pushViewController(definitionVC, animated: true)
  }
  
}
