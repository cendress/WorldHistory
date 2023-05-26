//
//  PostClassicalQuizBrain.swift
//  World History
//
//  Created by Christopher Endress on 5/26/23.
//

import Foundation

struct PostClassicalQuizBrain {
  
  var questions: [Question]
  
  let allQuestions = [
    Question(text: "What event marked the beginning of the Early Middle Ages, also known as the Dark Ages?", answers: ["The fall of the Western Roman Empire", "The coronation of Charlemagne", "The Viking invasions", "The establishment of the Abbasid Caliphate"], correctAnswer: "The fall of the Western Roman Empire"),
    Question(text: "Which ruler was crowned as the Emperor of the Romans by Pope Leo III in 800 AD?", answers: ["Otto I", "Louis the Pious", "Charlemagne", "Clovis I"], correctAnswer: "Charlemagne"),
    Question(text: "What was the dominant religion in Europe during the Early Middle Ages?", answers: ["Paganism", "Islam", "Judaism", "Christianity"], correctAnswer: "Christianity"),
    Question(text: "The Byzantine Empire was a continuation of which empire?", answers: ["Ottoman Empire", "Holy Roman Empire", "Western Roman Empire", "Eastern Roman Empire"], correctAnswer: "Eastern Roman Empire"),
    Question(text: "The Islamic Golden Age began with the establishment of which caliphate?", answers: ["Umayyad Caliphate", "Abbasid Caliphate", "Fatimid Caliphate", "Rashidun Caliphate"], correctAnswer: "Abbasid Caliphate"),
    Question(text: "What were the Vikings known for during the Early Middle Ages?", answers: ["Their peaceful trading", "Their agricultural advancements", "Their seafaring raids, trades, and exploration", "Their scientific discoveries"], correctAnswer: "Their seafaring raids, trades, and exploration"),
    Question(text: "What socio-political structure was created by the system of mutual obligations known as feudalism?", answers: ["The system of the Middle Ages", "The structure of the Roman Empire", "The system of the Byzantine Empire", "The structure of the Islamic Caliphates"], correctAnswer: "The system of the Middle Ages"),
    Question(text: "What were the Crusades?", answers: ["A series of holy wars fought between Christians and Muslims", "A period of peace and prosperity in Europe", "A series of political alliances between European powers", "A period of great cultural and intellectual activity"], correctAnswer: "A series of holy wars fought between Christians and Muslims over control of the Holy Land"),
    Question(text: "What was a major technological advancement in agriculture during the High Middle Ages?", answers: ["The creation of the heavy plow", "The invention of the printing press", "The discovery of new crop rotation techniques", "The development of advanced irrigation systems"], correctAnswer: "The creation of the heavy plow"),
    Question(text: "Who was a significant contributor to philosophy, theology, medicine, and jurisprudence during the Muslim Golden Age?", answers: ["Dante Alighieri", "Charlemagne", "Averroes (Ibn Rushd)", "Thomas Aquinas"], correctAnswer: "Averroes (Ibn Rushd)"),
    Question(text: "Which empire was the largest contiguous land empire in history?", answers: ["The Roman Empire", "The Ottoman Empire", "The Mongol Empire", "The British Empire"], correctAnswer: "The Mongol Empire"),
    Question(text: "What event in the Late Middle Ages caused widespread hunger and mortality?", answers: ["The Great Famine", "The Hundred Years' War", "The Black Death", "The Peasants' Revolt"], correctAnswer: "The Great Famine"),
    Question(text: "What societal changes were brought about by the Black Death?", answers: ["Decreased social mobility", "Increased feudalism", "Rise of the mercantile class", "Fall of the Church"], correctAnswer: "Rise of the mercantile class"),
    Question(text: "What was the Hundred Years' War?", answers: ["A conflict between the Kingdom of England and the Kingdom of France", "A civil war within the Holy Roman Empire", "A conflict between Christian and Muslim powers in the Holy Land", "A war between the Byzantine Empire and the Ottoman Empire"], correctAnswer: "A conflict between the Kingdom of England and the Kingdom of France"),
    Question(text: "Who was a significant author during the Late Middle Ages?", answers: ["William Shakespeare", "Geoffrey Chaucer", "Homer", "Virgil"], correctAnswer: "Geoffrey Chaucer"),
    Question(text: "Which dynasty marked a period of stability and wealth in China after the collapse of the Yuan dynasty?", answers: ["Qing dynasty", "Ming dynasty", "Tang dynasty", "Song dynasty"], correctAnswer: "Ming dynasty"),
    Question(text: "Which American empires emerged as sophisticated societies with complex political systems during the Late Middle Ages?", answers: ["The Aztec and Inca Empires", "The Maya and Olmec civilizations", "The Apache and Navajo tribes", "The Cherokee and Sioux tribes"], correctAnswer: "The Aztec and Inca Empires"),
    Question(text: "What period followed the Late Middle Ages, marking the start of the modern age?", answers: ["The Renaissance and the Age of Exploration", "The Age of Enlightenment", "The Industrial Revolution", "The Roman Era"], correctAnswer: "The Renaissance and the Age of Exploration")
  ]
  
  init() {
    questions = allQuestions
    questions.shuffle()
  }
}
