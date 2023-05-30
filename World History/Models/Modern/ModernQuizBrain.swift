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
    Question(text: "What was the main cause of the French Revolution?", answers: ["Economic crisis", "Religious conflict", "Foreign invasion", "Desire for industrialization"], correctAnswer: "Economic crisis"),
    Question(text: "Who is considered the founder of modern science?", answers: ["Isaac Newton", "Galileo Galilei", "Albert Einstein", "Nicolaus Copernicus"], correctAnswer: "Galileo Galilei"),
    Question(text: "What was the first successful vaccine developed for?", answers: ["Polio", "Smallpox", "Tuberculosis", "Measles"], correctAnswer: "Smallpox"),
    Question(text: "What event, taking place from 1845 to 1852, caused mass starvation and emigration in Ireland?", answers: ["The Great Famine", "The French Revolution", "The Industrial Revolution", "The Irish Rebellion"], correctAnswer: "The Great Famine"),
    Question(text: "Who invented the light bulb in 1879?", answers: ["Thomas Edison", "Nikola Tesla", "Alexander Graham Bell", "Isaac Newton"], correctAnswer: "Thomas Edison"),
    Question(text: "Which country was the first to implement compulsory universal education?", answers: ["England", "Germany", "United States", "France"], correctAnswer: "Germany"),
    Question(text: "What major social and economic change was prompted by the introduction of the steam engine?", answers: ["The Industrial Revolution", "The Renaissance", "The Enlightenment", "The Reformation"], correctAnswer: "The Industrial Revolution"),
    Question(text: "In 1911, which Chinese dynasty was overthrown, leading to the establishment of the Republic of China?", answers: ["Qing Dynasty", "Ming Dynasty", "Han Dynasty", "Tang Dynasty"], correctAnswer: "Qing Dynasty"),
    Question(text: "Which U.S. constitutional amendment, ratified in 1920, granted women the right to vote?", answers: ["15th Amendment", "19th Amendment", "21st Amendment", "26th Amendment"], correctAnswer: "19th Amendment")
  ]
  
  init() {
    questions = allQuestions
    questions.shuffle()
  }
}
