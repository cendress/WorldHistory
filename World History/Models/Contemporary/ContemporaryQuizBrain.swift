//
//  ContemporaryQuizBrain.swift
//  World History
//
//  Created by Christopher Endress on 5/28/23.
//

import Foundation

struct ContemporaryQuizBrain {
  
  var questions: [Question]
  
  let allQuestions = [
    Question(text: "Which technology continues to shape the contemporary period with constant evolution?", answers: ["Artificial Intelligence", "Steam Engine", "Telegraph", "Printing Press"], correctAnswer: "Artificial Intelligence"),
    Question(text: "What are some of the major environmental challenges of the contemporary period?", answers: ["Deforestation", "Air Pollution", "Climate Change", "All of the above"], correctAnswer: "All of the above"),
    Question(text: "Who has a leading role in the fight for equality and justice in contemporary society?", answers: ["Politicians", "Activists", "Scientists", "All of the above"], correctAnswer: "Activists"),
    Question(text: "Which emerging technology has raised concerns about data privacy and cyber threats?", answers: ["Radio", "Television", "Internet", "Telegraph"], correctAnswer: "Internet"),
    Question(text: "What event drastically affected the way we live, work, and connect with one another in the contemporary period?", answers: ["World War II", "The fall of the Berlin Wall", "The COVID-19 pandemic", "The invention of the telephone"], correctAnswer: "The COVID-19 pandemic"),
    Question(text: "What type of power structure is emerging in the global politics of the contemporary period?", answers: ["Monopolar", "Bipolar", "Multipolar", "Unipolar"], correctAnswer: "Multipolar"),
    Question(text: "What is the contemporary period's approach to addressing environmental challenges?", answers: ["Ignorance", "Denial", "Collective action and sustainable solutions", "No specific approach"], correctAnswer: "Collective action and sustainable solutions"),
    Question(text: "What has been the effect of the internet and digital media on culture in the contemporary period?", answers: ["Reduction in cultural exchange", "Creation of a global 'melting pot'", "Increased cultural isolation", "No significant effect"], correctAnswer: "Creation of a global 'melting pot'"),
    Question(text: "Which type of warfare has increased with the proliferation of digital technology in the contemporary period?", answers: ["Nuclear warfare", "Cyber warfare", "Guerrilla warfare", "Conventional warfare"], correctAnswer: "Cyber warfare"),
    Question(text: "What is a defining characteristic of the contemporary era?", answers: ["Feudalism", "Colonialism", "Technological innovation", "Agrarian society"], correctAnswer: "Technological innovation"),
    Question(text: "Which international event led to a global economic crisis in the contemporary period?", answers: ["The Great Depression", "The 2008 Financial Crisis", "The 1929 Stock Market Crash", "World War II"], correctAnswer: "The 2008 Financial Crisis"),
    Question(text: "What social movement in the 21st century advocates for equality and protection of diverse sexual orientations and gender identities?", answers: ["Feminism", "Civil Rights Movement", "LGBTQ+ Movement", "Environmental Movement"], correctAnswer: "LGBTQ+ Movement"),
    Question(text: "What 21st-century conflict highlighted the issues of terrorism and international security?", answers: ["World War II", "Vietnam War", "Cold War", "War on Terror"], correctAnswer: "War on Terror"),
    Question(text: "What significant shift occurred in the global economy due to the technological innovations of the contemporary period?", answers: ["From agriculture to manufacturing", "From manufacturing to service", "From service to agriculture", "From manufacturing to agriculture"], correctAnswer: "From manufacturing to service"),
    Question(text: "Which international organization plays a major role in maintaining peace and security around the world during the contemporary period?", answers: ["The League of Nations", "The United Nations", "The European Union", "NATO"], correctAnswer: "The United Nations"),
    Question(text: "Which of the following diseases has caused a global health crisis in the 21st century?", answers: ["Smallpox", "Black Death", "COVID-19", "Spanish Flu"], correctAnswer: "COVID-19"),
    Question(text: "Which phenomenon, heightened by social media, has been a significant issue in contemporary politics?", answers: ["Public debates", "Election fraud", "Disinformation or 'Fake News'", "Campaign financing"], correctAnswer: "Disinformation or 'Fake News'"),
    Question(text: "What significant milestone did humanity achieve in space exploration during the contemporary period?", answers: ["First man on the moon", "First man in space", "Launch of the Hubble Space Telescope", "Landing of rovers on Mars"], correctAnswer: "Landing of rovers on Mars"),
    Question(text: "What is a significant challenge for societies in the contemporary era due to rapid technological advancement?", answers: ["Loss of traditional cultures", "Technological unemployment", "Increased literacy", "Decreased global connections"], correctAnswer: "Technological unemployment"),
    Question(text: "Which of the following has become a significant source of energy in the contemporary period?", answers: ["Coal", "Solar Power", "Wood", "Oil"], correctAnswer: "Solar Power")
  ]
  
  init() {
    questions = allQuestions
    questions.shuffle()
  }
}

