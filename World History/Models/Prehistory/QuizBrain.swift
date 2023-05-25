//
//  QuizBrain.swift
//  World History
//
//  Created by Christopher Endress on 5/24/23.
//
import Foundation

struct QuizBrain {
  
  var questions: [Question]
  
  let allQuestions = [
    Question(text: "What is the process of adapting wild plants and animals for human use?", answers: ["Agriculture", "Domestication", "Gathering", "Hunting"], correctAnswer: "Domestication"),
    Question(text: "What is the transitional period between the Paleolithic and Neolithic eras called?", answers: ["Iron Age", "Mesolithic Era", "Bronze Age", "Stone Age"], correctAnswer: "Mesolithic Era"),
    Question(text: "What was the primary material used to make tools and weapons during the Paleolithic era?", answers: ["Bronze", "Iron", "Wood", "Stone"], correctAnswer: "Stone"),
    Question(text: "What major lifestyle change occurred during the Neolithic Revolution?", answers: ["Introduction of metalworking", "Shift from hunting-gathering to agriculture", "Discovery of fire", "Invention of the wheel"], correctAnswer: "Shift from hunting-gathering to agriculture"),
    Question(text: "Which was the first metal to be used by humans?", answers: ["Iron", "Gold", "Copper", "Silver"], correctAnswer: "Copper"),
    Question(text: "What does 'Paleolithic' literally mean?", answers: ["New Stone", "Old Stone", "Middle Stone", "Age of Stone"], correctAnswer: "Old Stone"),
    Question(text: "What was the primary food source for Paleolithic humans?", answers: ["Cereal grains", "Domesticated animals", "Wild plants and animals", "Farmed vegetables"], correctAnswer: "Wild plants and animals"),
    Question(text: "What term refers to the family that includes all species on the human side of the last common ancestors with the apes?", answers: ["Hominid", "Sapiens", "Neanderthals", "Caveman"], correctAnswer: "Hominid"),
    Question(text: "In which era did humans begin to settle in one place?", answers: ["Mesolithic", "Paleolithic", "Neolithic", "Bronze Age"], correctAnswer: "Neolithic"),
    Question(text: "The invention of pottery is most closely associated with which period?", answers: ["Mesolithic", "Neolithic", "Paleolithic", "Bronze Age"], correctAnswer: "Neolithic"),
    Question(text: "Where was the oldest known cave art discovered?", answers: ["Lascaux, France", "Altamira, Spain", "Chauvet, France", "Cueva de El Castillo, Spain"], correctAnswer: "Cueva de El Castillo, Spain"),
    Question(text: "What was a common purpose for prehistoric cave paintings?", answers: ["Decoration", "Communication", "Religious rituals", "Historical records"], correctAnswer: "Religious rituals"),
    Question(text: "Which tool, common in the Paleolithic Era, was used for chopping and scraping?", answers: ["Hand axe", "Spear", "Arrowhead", "Hammer"], correctAnswer: "Hand axe"),
    Question(text: "What was a typical dwelling for a Paleolithic human?", answers: ["Wooden hut", "Mud-brick house", "Cave or tent", "Stone castle"], correctAnswer: "Cave or tent"),
    Question(text: "Which species of early human first began to use fire?", answers: ["Homo habilis", "Homo erectus", "Homo sapiens", "Homo neanderthalensis"], correctAnswer: "Homo erectus"),
    Question(text: "During the Paleolithic era, how did humans primarily acquire food?", answers: ["By hunting and gathering", "Through farming", "Through trade", "By herding animals"], correctAnswer: "By hunting and gathering"),
    Question(text: "What did Neolithic people use to create cave paintings?", answers: ["Plants and berries", "Charcoal and ochre", "Blood and soil", "All of the above"], correctAnswer: "All of the above"),
    Question(text: "What tool did Paleolithic people use to make other tools?", answers: ["Hammerstone", "Spear", "Hand axe", "Chisel"], correctAnswer: "Hammerstone"),
    Question(text: "Which era is known as the Old Stone Age?", answers: ["Paleolithic Era", "Mesolithic Era", "Neolithic Era", "Bronze Age"], correctAnswer: "Paleolithic Era"),
    Question(text: "What is the Venus of Willendorf?", answers: ["A cave painting", "An early human settlement", "A Paleolithic tool", "A small sculpture of a woman"], correctAnswer: "A small sculpture of a woman")
  ]
  
  init() {
    questions = allQuestions
    questions.shuffle()
  }
}
