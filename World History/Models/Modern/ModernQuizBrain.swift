//
//  ModernQuizBrain.swift
//  World History
//
//  Created by Christopher Endress on 5/27/23.
//

import Foundation

struct ModernQuizBrain {
  
  var questions: [Question]
  
  let allQuestions = [
    Question(text: "What event is often marked as the beginning of the Early Modern Period?", answers: ["The fall of the Byzantine Empire", "The Discovery of America", "The Protestant Reformation", "The French Revolution"], correctAnswer: "The Discovery of America"),
    Question(text: "Who was a key figure in sparking the Protestant Reformation?", answers: ["Martin Luther", "John Calvin", "Henry VIII", "Pope Leo X"], correctAnswer: "Martin Luther"),
    Question(text: "What was the dominant ideology during the Enlightenment?", answers: ["Feudalism", "Absolutism", "Capitalism", "Rationalism"], correctAnswer: "Rationalism"),
    Question(text: "What revolution marked the transition to new manufacturing processes in Europe?", answers: ["Agricultural Revolution", "Industrial Revolution", "French Revolution", "American Revolution"], correctAnswer: "Industrial Revolution"),
    Question(text: "The French Revolution began in which year?", answers: ["1789", "1776", "1804", "1812"], correctAnswer: "1789"),
    Question(text: "Who led the unification of Italy during the 19th century?", answers: ["Napoleon Bonaparte", "Giuseppe Garibaldi", "Benito Mussolini", "Victor Emmanuel II"], correctAnswer: "Giuseppe Garibaldi"),
    Question(text: "What term is used to describe the widespread colonization by European powers during the 19th and 20th centuries?", answers: ["Imperialism", "Nationalism", "Capitalism", "Feudalism"], correctAnswer: "Imperialism"),
    Question(text: "Who is considered the father of psychoanalysis?", answers: ["Carl Jung", "Sigmund Freud", "Alfred Adler", "Ivan Pavlov"], correctAnswer: "Sigmund Freud"),
    Question(text: "World War I began in which year?", answers: ["1914", "1917", "1919", "1922"], correctAnswer: "1914"),
    Question(text: "What event during the late modern period caused an economic depression in many countries?", answers: ["The Great Famine", "The Stock Market Crash of 1929", "The Black Plague", "The World War II"], correctAnswer: "The Stock Market Crash of 1929"),
    Question(text: "What major event led to widespread decolonization in the mid-20th century?", answers: ["World War I", "World War II", "The Cold War", "The Korean War"], correctAnswer: "World War II"),
    Question(text: "Who was a significant leader during the civil rights movement in the United States?", answers: ["Malcolm X", "Martin Luther King Jr.", "Rosa Parks", "All of the above"], correctAnswer: "All of the above"),
    Question(text: "What was the period of geopolitical tension between the United States and the Soviet Union following World War II called?", answers: ["The World War III", "The Imperial Age", "The Cold War", "The Space Race"], correctAnswer: "The Cold War"),
    Question(text: "What significant event marked the end of apartheid in South Africa?", answers: ["The election of Nelson Mandela", "The assassination of Martin Luther King Jr.", "The Soweto uprising", "The Sharpeville massacre"], correctAnswer: "The election of Nelson Mandela"),
    Question(text: "What term describes the period of rapid growth in the use of digital technology and information systems in the late 20th century?", answers: ["The Digital Revolution", "The Industrial Revolution", "The Technological Era", "The Age of Information"], correctAnswer: "The Digital Revolution"),
    Question(text: "What was the main cause of the French Revolution?", answers: ["Economic crisis", "Religious conflict", "Foreign invasion", "Desire for industrialization"], correctAnswer: "Economic crisis"),
    Question(text: "Who is considered the founder of modern science?", answers: ["Isaac Newton", "Galileo Galilei", "Albert Einstein", "Nicolaus Copernicus"], correctAnswer: "Galileo Galilei"),
    Question(text: "What was the movement of African Americans from the rural south to the urban north in the United States called?", answers: ["The Harlem Renaissance", "The Great Migration", "The Civil Rights Movement", "The American Dream"], correctAnswer: "The Great Migration"),
    Question(text: "What was the first successful vaccine developed for?", answers: ["Polio", "Smallpox", "Tuberculosis", "Measles"], correctAnswer: "Smallpox"),
    Question(text: "What was the main objective of the feminist movement in the 1960s and 1970s, often referred to as the 'Second Wave'?", answers: ["Suffrage rights", "Workplace equality", "Reproductive rights", "All of the above"], correctAnswer: "All of the above")
  ]
  
  init() {
    questions = allQuestions
    questions.shuffle()
  }
}
