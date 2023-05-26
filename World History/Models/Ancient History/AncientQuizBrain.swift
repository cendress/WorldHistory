//
//  AncientQuizBrain.swift
//  World History
//
//  Created by Christopher Endress on 5/26/23.
//

import Foundation

struct AncientQuizBrain {
  
  var questions: [Question]
  
  let allQuestions = [
    Question(text: "Which civilization was known for its emphasis on balance and order?", answers: ["Ancient Greek", "Ancient Egypt", "Ancient Rome", "Ancient India"], correctAnswer: "Ancient Egypt"),
    Question(text: "Which ancient civilization was known as the cradle of democracy?", answers: ["Ancient Egypt", "Ancient India", "Ancient Rome", "Ancient Greece"], correctAnswer: "Ancient Greece"),
    Question(text: "The Hanging Gardens were one of the Seven Wonders of the Ancient World. Which civilization was it associated with?", answers: ["Ancient Rome", "Ancient Greece", "Babylon", "Ancient Egypt"], correctAnswer: "Babylon"),
    Question(text: "Who were the Patricians in ancient Rome?", answers: ["The warrior class", "The common citizens", "The enslaved people", "The elite or noble families"], correctAnswer: "The elite or noble families"),
    Question(text: "What was the Mandate of Heaven in Ancient China?", answers: ["A legal code", "The emperor's divine right to rule", "A military strategy", "A form of currency"], correctAnswer: "The emperor's divine right to rule"),
    Question(text: "Which Ancient Indian text provides valuable insights into ancient Indian society?", answers: ["Ramayana", "Mahabharata", "Vedas", "Upanishads"], correctAnswer: "Mahabharata"),
    Question(text: "Which civilization was located along the Nile River?", answers: ["Ancient Greece", "Ancient Rome", "Ancient Egypt", "Ancient India"], correctAnswer: "Ancient Egypt"),
    Question(text: "The Olympic games originated in which ancient civilization?", answers: ["Ancient Rome", "Ancient Greece", "Ancient Egypt", "Ancient India"], correctAnswer: "Ancient Greece"),
    Question(text: "The concept of 'zero' was first recognized by which civilization?", answers: ["Ancient Greece", "Ancient Rome", "Ancient Egypt", "Ancient India"], correctAnswer: "Ancient India"),
    Question(text: "Which empire was known for its well-organized road systems?", answers: ["Babylon", "Ancient Greece", "Ancient Rome", "Ancient Egypt"], correctAnswer: "Ancient Rome"),
    Question(text: "What was the primary writing system of ancient Egypt?", answers: ["Cuneiform", "Alphabet", "Hieroglyphics", "Script"], correctAnswer: "Hieroglyphics"),
    Question(text: "Which civilization is credited with the creation of the first code of laws?", answers: ["Ancient Rome", "Ancient Greece", "Babylon", "Ancient Egypt"], correctAnswer: "Babylon"),
    Question(text: "What is 'Pax Romana' in the context of ancient Rome?", answers: ["A Roman God", "A military strategy", "A period of relative peace and stability", "A legal document"], correctAnswer: "A period of relative peace and stability"),
    Question(text: "What is Socratic Method that originated in ancient Greece?", answers: ["A form of government", "A military strategy", "A method of teaching", "A form of writing"], correctAnswer: "A method of teaching"),
    Question(text: "The Great Wall was built for defense by which civilization?", answers: ["Ancient Rome", "Ancient Egypt", "Ancient India", "Ancient China"], correctAnswer: "Ancient China"),
    Question(text: "Who was the famous philosopher from ancient China who taught about harmony, morality, and respect?", answers: ["Laozi", "Sun Tzu", "Confucius", "Han Feizi"], correctAnswer: "Confucius"),
    Question(text: "What is the 'Bhagavad Gita' in the context of ancient India?", answers: ["A city", "A king", "A war", "A sacred text"], correctAnswer: "A sacred text"),
    Question(text: "The Library of Alexandria was a notable landmark in which civilization?", answers: ["Ancient Greece", "Ancient Rome", "Babylon", "Ancient Egypt"], correctAnswer: "Ancient Egypt"),
    Question(text: "What is 'polis' in the context of ancient Greece?", answers: ["A style of art", "A type of food", "A city-state", "A military unit"], correctAnswer: "A city-state"),
    Question(text: "Who was Julius Caesar in ancient Rome?", answers: ["A philosopher", "A general and statesman", "A playwright", "An architect"], correctAnswer: "A general and statesman")
  ]
  
  init() {
    questions = allQuestions
    questions.shuffle()
  }
}
