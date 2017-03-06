/*  SoccerCoordinator Project
 
    By Michael Guatambu Davis
    02/25/2017
 
    '\_(^.^)_/`
 
 
    PLEASE NOTE:  my code is not nearly as DRY as possible.  in fact that's where i got a bit stuck in this project in general.  i know my code gets repetitive, but i couldn't see how to get at the data in these dictionaries in a more concise way.  looking forward to any notes on this, though i suspect that if i were using more of an object oriented approach, perhaps this would be much simpler.  not sure of course.
        also, i gave more verbose names to the various data structures, variables, and constants because i like to err on the side of readability.  curious what your thoughts are on that, if you have the time and/or if you think it relevant to comment.
 
    Cheers and Thank You,
 
    Guatambu
 
    UPDATE NOTE (if you have time):  Thanks so much for your insightful comments.  a fella can't get be upset about not passing when it's constructuve like this.  so i am going to tackle your ideas.  
 
 
        one things i wanted to mention before diving in per your comment:
 
            *** "An alternate approach that can be used would be simply create two collections, one for experienced players, another for inexperienced players, and iterate through it to do the assignment. It is similar to yours but basically break it down into two steps."
 
        what i was trying to do was make this a universal application.  in that, i was envisioning a parent with no programmng abilities to use this.  the scenario further being that say another 6 kids signed up with varying experience, and then that parent would have to sort but not get called out for playing favorites or something.  so i was trying to make it "blind".
        i even thought about including a random generator for each player, experienced or not, so that the sorting would be totally independent of the parent generating the teams. but i wasn't sure if that was allowed since we didn't cover those tools like the 'random' and 'round'.  then using their random scores in addition to the experience to see who goes to what team.
        anyway, just some insight into what i was thinking about if that's of interest to you all.
        
        Cheers and Thanks again,
 
        Guatambu
 
 
*/


/* ------------------------------------

Let's start by organizing the spreadhseet info with an Array of Dictionaries of soccer players' information
 
 */


// First, we need to create the players' dictionaries

let player1 = [
        "Name": "Joe Smith",
        "Height": "42",
        "Soccer Experience": "yes",
        "Guardian Name": "Jim and Jan Smith"
    ]


let player2 = [
        "Name": "Jill Tanner",
        "Height": "36",
        "Soccer Experience": "yes",
        "Guardian Name": "Clara Tanner"
    ]


let player3 = [
        "Name": "Bill Bon",
        "Height": "43",
        "Soccer Experience": "yes",
        "Guardian Name": "Sara and Jenny Bon"
    ]

let player4 = [
        "Name": "Eva Gordon",
        "Height": "45",
        "Soccer Experience": "no",
        "Guardian Name": "Wendy and Mike Gordon"
    ]

let player5 = [
        "Name": "Matt Gill",
        "Height": "40",
        "Soccer Experience": "no",
        "Guardian Name": "Charles and Cynthia Gill"
    ]

let player6 = [
        "Name": "Kimmy Stein",
        "Height": "41",
        "Soccer Experience": "no",
        "Guardian Name": "Bill and Hillary Stein"
    ]

let player7 = [
        "Name": "Sammy Adams",
        "Height": "45",
        "Soccer Experience": "no",
        "Guardian Name": "Jeff Adams"
    ]

let player8 = [
        "Name": "Karl Saygan",
        "Height": "42",
        "Soccer Experience": "yes",
        "Guardian Name": "Heather Bledsoe"
    ]

let player9 = [
        "Name": "Suzanne Greenberg",
        "Height": "44",
        "Soccer Experience": "yes",
        "Guardian Name": "Henrietta Dumas"
    ]

let player10 = [
        "Name": "Sal Dali",
        "Height": "41",
        "Soccer Experience": "no",
        "Guardian Name": "Gala Dali"
    ]

let player11 = [
        "Name": "Joe Kavalier",
        "Height": "39",
        "Soccer Experience":"no",
        "Guardian Name": "Sam and Elaine Kavalier"
    ]

let player12 = [
        "Name": "Ben Finkelstein",
        "Height": "44",
        "Soccer Experience": "no",
        "Guardian Name": "Aaron and Jill Finkelstein"
    ]

let player13 = [
        "Name": "Diego Soto",
        "Height": "41",
        "Soccer Experience": "yes",
        "Guardian Name": "Robin and Sarika Soto"
    ]


let player14 = [
        "Name": "Chloe Alaska",
        "Height": "47",
        "Soccer Experience": "no",
        "Guardian Name": "David and Jamie Alaska"
    ]

let player15 = [
        "Name": "Arnold Willis",
        "Height": "43",
        "Soccer Experience": "no",
        "Guardian Name": "Claire Willis"
    ]


let player16 = [
        "Name": "Phillip Helm",
        "Height": "44",
        "Soccer Experience": "yes",
        "Guardian Name": "Thomas Helm and Eva Jones"
    ]

let player17 = [
        "Name": "Les Clay",
        "Height": "42",
        "Soccer Experience": "yes",
        "Guardian Name": "Wynonna Brown"
    ]

let player18 = [
        "Name": "Herschel Krustofski",
        "Height": "45",
        "Soccer Experience": "yes",
        "Guardian Name": "Hyman and Rachel Krustofski"
    ]


// Lastly, for the organization and set up, we need our array of dictionaries

let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


//Next up, empty arrays for the various kids' soccer teams, so we can sort the team members accordingly

var teamDragons = [Dictionary<String, String>]()

var teamRaptors = [Dictionary<String, String>]()

var teamSharks = [Dictionary<String, String>]()


/* ------------------------------
   
Now we want to sort kids to teams with an equal number of players and players with experience on each team
 
*/

// Let's set up a variable to help keep track of things

var totalNumberofPlayersWithExperience: Int = 0


// Let's create a function to create the three teams and make sure the kids with soccer experience are equally distributed amongst those teams


func teamBuilder() {
    
    var counterY1 = 0
    var counterN1 = 0
    for player in players {
        if ((player["Soccer Experience"]) == "yes" && counterY1 < 3) {
            teamDragons.append(player)
            counterY1 = counterY1 + 1
            totalNumberofPlayersWithExperience += 1
        } else if ((player["Soccer Experience"]) == "no" && counterN1 < 3) {
            teamDragons.append(player)
            counterN1 = counterN1 + 1
        } else if ((player["Soccer Experience"]) == "yes" && counterY1 < 6) {
            teamRaptors.append(player)
            counterY1 = counterY1 + 1
            totalNumberofPlayersWithExperience += 1
        } else if ((player["Soccer Experience"]) == "no" && counterN1 < 6) {
            teamRaptors.append(player)
            counterN1 = counterN1 + 1
        } else if ((player["Soccer Experience"]) == "yes" && counterY1 < 9) {
            teamSharks.append(player)
            counterY1 = counterY1 + 1
            totalNumberofPlayersWithExperience += 1
        } else if ((player["Soccer Experience"]) == "no" && counterN1 < 9) {
            teamSharks.append(player)
            counterN1 = counterN1 + 1
        }
    }
    
}


// Let's run the team builder function


teamBuilder()


/* --------------------------------------
 
 Now to print to console a letter a personalized letter to each of the guardians specifying:
 - the player’s name
 - guardian names
 - team name
 - date/time of their first team practice
    -- Dragons - March 17, 1pm
    -- Sharks - March 17, 3pm
    -- Raptors - March 18, 1pm
 
 */


// First, let's organize the teams and the practice times into Dictionaries


let dragons = [
    "Team":"Dragons",
    "Practice Time": "March 17, 1pm"
]

let raptors = [
    "Team": "Sharks",
    "Practice Time": "March 17, 3pm"
]

let sharks = [
    "Team": "Raptors",
    "Practice Time": "March 18, 1pm"
]


// Second, let's establish the empty letters array


var letters = [String]()


// Third, let's create a function composing the individualized team parent's letters and save to the letters array


func soccerLeagueLetterComposer() {

    for player in teamDragons {
        letters.append("Hi \(player["Guardian Name"]!), your child \(player["Name"]!) is on the \(dragons["Team"]!) soccer team.  Their first practice is \(dragons["Practice Time"]!).  Good luck this season!")
    }

    for player in teamRaptors {
        letters.append("Hi \(player["Guardian Name"]!), your child \(player["Name"]!) is on the \(raptors["Team"]!) soccer team.  Their first practice is \(raptors["Practice Time"]!).  Good luck this season!")
    }

    for player in teamSharks {
        letters.append("Hi \(player["Guardian Name"]!), your child \(player["Name"]!) is on the \(sharks["Team"]!) soccer team.  Their first practice is \(sharks["Practice Time"]!).  Good luck this season!")
    }

}


// Fourth, let's create a function to loop through the letters array and print the parent's letters to console


func letterPrinter() {
    for letter in letters {
        print(letter)
    }
}


// Lastly, let's run these functions to create the letters and print them to console


soccerLeagueLetterComposer()

letterPrinter()





/*  
    so i took a crack at the extra credit, but came up short of a good way of generating the necessary sorting  logic to acheive the 1.5 inch average height paramenters.
    here's what i did come up with if you are interested in reviewing it.

    i generated logic to find the average height of the existing teams i created, and of the total pool of players.
    the functions all work, i just didn't all them to keep the console print out clean for you.
*/


// average height for team Dragons

func dragonHeightGenerator() {
    var dragonHeights = [String]()
    for dragon in teamDragons{
        dragonHeights.append(dragon["Height"]!)
    }

    var dragonHeightsNumbers = [Int]()
    for dragonHeight in dragonHeights{
        dragonHeightsNumbers.append(Int(dragonHeight)!)
    }

    var sum1 = 0
    for n in dragonHeightsNumbers{
        sum1 += n
    }

    let averageDragonHeight = sum1 / (dragonHeightsNumbers.count)
    print("Team Dragons Players Average Height \(averageDragonHeight)")
}


// average height for team Raptors

func raptorHeightGenerator() {
    var raptorHeights = [String]()
    for raptor in teamRaptors{
        raptorHeights.append(raptor["Height"]!)
    }

    var raptorHeightsNumbers = [Int]()
    for raptorHeight in raptorHeights{
        raptorHeightsNumbers.append(Int(raptorHeight)!)
    }

    var sum2 = 0
    for n in raptorHeightsNumbers{
        sum2 += n
    }

    let averageRaptorHeight = sum2 / (raptorHeightsNumbers.count)
    print("Team Raptors Players Average Height \(averageRaptorHeight)")
}


// average height for team Sharks

func sharkHeightGenerator() {
    var sharkHeights = [String]()
    for shark in teamSharks{
        sharkHeights.append(shark["Height"]!)
    }

    var sharkHeightsNumbers = [Int]()
    for sharkHeight in sharkHeights{
        sharkHeightsNumbers.append(Int(sharkHeight)!)
    }

    var sum3 = 0
    for n in sharkHeightsNumbers{
        sum3 += n
    }

    let averageSharkHeight = sum3 / (sharkHeightsNumbers.count)
    print("Team Sharkss Players Average Height \(averageSharkHeight)")
}


// average height for the whole pool of players

func averagePlayersHeight() {
    var playerHeights = [String]()
        for player in players{
            playerHeights.append(player["Height"]!)
    }

    var playerHeightsNumbers = [Int]()
    for playerHeight in playerHeights{
        playerHeightsNumbers.append(Int(playerHeight)!)
    }

    var sum4 = 0
    for n in playerHeightsNumbers{
        sum4 += n
    }

    let averagePlayerHeight = sum4 / (playerHeightsNumbers.count)
    print("Soccer Players Average Height \(averagePlayerHeight)")
}


