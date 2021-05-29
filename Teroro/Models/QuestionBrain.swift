//
//  QuestionBrain.swift
//  Teroro
//
//  Created by Kemal Poyraz on 08.02.21.
//

import Foundation

struct QuestionBrain {
    
    var storyNumber = 0
    
    let questions = [
        Question(
            title: "Müslüman mısın?",
            choice1: "Evet", choice1Destination: 1,
            choice2: "Hayır", choice2Destination: 7
        ),
        Question(
            title: "Türk müsün?",
            choice1: "Hayır", choice1Destination: 7,
            choice2: "Evet", choice2Destination: 2
        ),
        Question(
            title: "Kadın Haklarını savunuyor musun?",
            choice1: "Evet", choice1Destination: 7,
            choice2: "Hayır", choice2Destination: 3
        ),
        Question(
            title: "Asgari ücretle dört kişilik bir aileyi geçindirebilir misin?",
            choice1: "Evet", choice1Destination: 4,
            choice2: "Hayır", choice2Destination: 7
        ),
        Question(
            title: "LGBTI+ haklarını savunuyor musun?",
            choice1: "Evet", choice1Destination: 5,
            choice2: "Hayır", choice2Destination: 6
        ),
        Question(
            title: "Lezbiyen Mezbiyen misin?",
            choice1: "Evet", choice1Destination: 8,
            choice2: "Hayır", choice2Destination: 7
        ),
        Question(
            title: "Herhangi bir insan hakkını savunuyor musun?",
            choice1: "Evet", choice1Destination: 7,
            choice2: "Hayır", choice2Destination: 9
        ),
        Question(
            title: "Teröristsin!",
            choice1: "Baştan başla", choice1Destination: 0,
            choice2: "Terörö", choice2Destination: 0
        ),
        Question(
            title: "Sen aslında yoksun!",
            choice1: "Kızlı erkekli, ehlağkımızı bozuyorlar!", choice1Destination: 0,
            choice2: "Ben aslında yoğum", choice2Destination: 0
        ),
        Question(
            title: "Hala terörist olma ihtimaliniz var. Henüz tam liste açıklanmadı.",
            choice1: "Eğonomi çoh eyi", choice1Destination: 0,
            choice2: "Nasiii?", choice2Destination: 0
        )
    ]
    
    func getQuestionTitle() -> String {
        return questions[storyNumber].title
    }
    
    func getChoice1() -> String {
        return questions[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return questions[storyNumber].choice2
    }
    
    mutating func nextQuestion(userChoice: String) {
        
        let currentQuestion = questions[storyNumber]
        if userChoice == currentQuestion.choice1 {
            storyNumber = currentQuestion.choice1Destination
        }
        else if userChoice == currentQuestion.choice2 {
            storyNumber = currentQuestion.choice2Destination
        }
        else {
            //Error
        }
    }
}
