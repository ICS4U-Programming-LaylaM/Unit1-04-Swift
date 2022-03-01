//
//  DiceGame.swift
//
//  Created by Layla Michel
//  Created on 2022-02-28
//  Version 1.0
//  Copyright (c) 2022 IMH. All rights reserved.
//
//  The DiceGame program generates a random number between 1 and 6
// and asks the user to guess that number.

// Create min and max constants for range of random number
let MIN = 1
let MAX = 7
// Generate random number
let randomInt = Int.random(in: MIN..<MAX)
// Initialize guess to 1
var guesses = 1

outerloop: while true {
    // Ask user for guess
    print("Guess an integer from 1 to 6: ", terminator: "")
    let userString = readLine()

    // Check if guess is an integer
    // Returns -23847125624345235 if not an integer
    let userInt = Int(userString!) ?? -23847125624345235

    if userInt == -23847125624345235 {
        // Error message if guess isn't an integer
        print("Please enter a valid integer.")
    } else {
        // Check if guess is within range
        if userInt >= MAX || userInt < MIN {
            // Error message if guess isn't within range
            print("Must be between 1 and 6, try again.")
        } else {
            while true {
                // Check if guess is the same as the generated number
                if userInt == randomInt {
                    if guesses == 1 {
                        // Congratulation message if user guessed only once
                        print("You guessed correctly! It took you 1 try!")
                        break outerloop
                    } else {
                        // Congratulation message if user guessed more than once
                        print("You guessed correctly! It took you \(guesses) tries!")
                        break outerloop
                    }
                } else if userInt < randomInt {
                    // Outputted message if guess is lower than generated number
                    print("The number is higher.")
                    // Increase guess value by 1
                    guesses += 1
                    break
                } else {
                    // Outputted message if guess is higher than generated number
                    print("The number is lower.")
                    // Increase guess value by 1
                    guesses += 1
                    break
                }
            }
        }
    }
}
