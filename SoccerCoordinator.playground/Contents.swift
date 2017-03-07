/*  SoccerCoordinator Project
 
    By Michael Guatambu Davis
    02/25/2017
 
    '\_(^.^)_/`
 
 
    PLEASE NOTE:  
 
    all functions that print to console and generate the desired are commented out to start.
    i didn't want to inundate you while reviewing this.
 
    my code is not nearly as DRY as possible.  in fact that's where i got a bit stuck in this project in general.
    i know my code gets repetitive, but i couldn't see how to get at the data in these dictionaries in a more concise way.
    looking forward to any notes on this, though i suspect that if i were using more of an object oriented approach, perhaps this would be much simpler.  not sure of course.
    also, i gave more verbose names to the various data structures, variables, and constants because i like to err on the side of readability.  
    curious what your thoughts are on that, if you have the time and/or if you think it relevant to comment.
 
 
    Cheers and Thank You,
 
 
    Guatambu
 
 
    UPDATE NOTE (if you have time):  Thanks so much for your insightful comments.  a fella can't get be upset about not passing when it's constructuve like this.  so i am going to tackle your ideas at the bottom.
 
 
        one things i wanted to mention before diving in per your comment:
 
            *** "An alternate approach that can be used would be simply create two collections, one for experienced players, another for inexperienced players, and iterate through it to do the assignment. It is similar to yours but basically break it down into two steps."
 
        i was trying to make this an universal application.  in that, i was envisioning a parent with no programming abilities using this.  the scenario further being that say another 6 kids signed up with varying experience, and then that parent would have to include and sort the kids while avoiding accusations of playing favorites.  so, i was trying to make it "blind".
 
        i even thought about including a random generator for each player, experienced or not, so that the sorting would be totally independent of the parent generating the teams. but i wasn't sure if that was allowed since we didn't cover those tools like the 'random' and 'round'.  then using their random scores in addition to the experience to see who goes to what team.
 
        anyway, just some insight into what i was thinking about if that's of interest to you all.
 
        
        Cheers and Thanks again,
 
        Guatambu
 
 
        ps
        
        i am likely going to have to learn to curb my gamer tendencies which are to do everything a game/challenge/quest offers.  diminishing returns and all.  this challenge was fun all the same, even though i came up short, so thank you for the chance to try it out.  ;')
 
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


// Lastly, for the organization and set up, we need our array of dictionaries for a fair shot at randomness.
// Essentially trying to make it anonymous.

let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


// Next up, empty arrays for the various kids' soccer teams, so we can sort the team members accordingly

var teamDragons = [Dictionary<String, String>]()

var teamRaptors = [Dictionary<String, String>]()

var teamSharks = [Dictionary<String, String>]()


/* ------------------------------
   
Now we want to sort kids to teams with an equal number of players and players with experience on each team
 
*/


// Let's create a function to create the three teams and make sure the kids with soccer experience are equally distributed amongst those teams

// Let's set up a variable to help keep track of things

var totalNumberofPlayersWithExperience: Int = 0

var totalNumberofPlayersWithNoExperience: Int = 0


// Now let's build the teams based on Experience

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

// letterPrinter()



/* ------------------------------

 EXTRA CREDIT
 
 
 Now let's take another crack at sorting for the height per reviewer's recommendations:
 
 *** "As for the height, one height, for the experienced/inexperienced collection, try sorting the first one by height in one order, and the the other one in opposite order. After that, you can simply pick the first player from each collection and assign them to the teams."
 
 */


// From here, let's sort the players into two macro groups... with experience and without experience
// (again the goal is a measure of blind sorting for fairness)


var yesExperienceArray = [Dictionary<String, String>]()

var noExperienceArray = [Dictionary<String, String>]()

func experienceSorter() {
    for player in players {
        if (player["Soccer Experience"]) == "yes" {
            yesExperienceArray.append(player)
            totalNumberofPlayersWithExperience += 1
        } else if (player["Soccer Experience"]) == "no" {
            noExperienceArray.append(player)
            totalNumberofPlayersWithNoExperience += 1
            
        }
    }
    print("Experienced Players: \(yesExperienceArray)")
    print("Players with NO Experience: \(noExperienceArray)")
    print("Curent number of players WITH Experience: \(totalNumberofPlayersWithExperience)")
    print("Curent number of players WITH NO Experience: \(totalNumberofPlayersWithNoExperience)")
}

// experienceSorter()


/*
 
 UPDATE:  well, i am stuck on how to do this programatically. i can hardcode it by building the arrays myself, but i can't figure out how to get at the key value pairs of these dictionaries to then sort them in an array based on height.  i have searched the swift documentaiton, and maybe i can't find it because i don't know where to look.  in asking the internet it seems that this is something that requires more tools than we have learned thus far.
 
 Help?
 
 as an example, here is what i was trying to do with the problem i ran into (un-commenting it out gives the compiler error)...
 
 given array of dictionaries:
 

 
let myArray = [
    ["a": "1", "b": "3"],
    ["a": "2", "b": "4"]
 ]
 

myArray.sort {
    return $0 < $1
}
 
 print(myArray)
 

 -----------------------
 
 */
 

 /*
 
 this is me hardcoding it in from here on out for the extra credit.  i don't expect to get credit, because i can't efficiently scale this program.
 
 here are the arrays:
 
 */
 

var playersTallestToShortestExperienced = [
    ["Height": "45", "Soccer Experience": "yes", "Guardian Name": "Hyman and Rachel Krustofski", "Name": "Herschel Krustofski"],
    ["Height": "44", "Soccer Experience": "yes", "Guardian Name": "Thomas Helm and Eva Jones", "Name": "Phillip Helm"],
    ["Height": "44", "Soccer Experience": "yes", "Guardian Name": "Henrietta Dumas", "Name": "Suzanne Greenberg"],
    ["Height": "43", "Soccer Experience": "yes", "Guardian Name": "Sara and Jenny Bon", "Name": "Bill Bon"],
    ["Height": "42", "Soccer Experience": "yes", "Guardian Name": "Jim and Jan Smith", "Name": "Joe Smith"],
    ["Height": "42", "Soccer Experience": "yes", "Guardian Name": "Heather Bledsoe", "Name": "Karl Saygan"],
    ["Height": "42", "Soccer Experience": "yes", "Guardian Name": "Wynonna Brown", "Name": "Les Clay"] ,
    ["Height": "41", "Soccer Experience": "yes", "Guardian Name": "Robin and Sarika Soto", "Name": "Diego Soto"],
    ["Height": "36", "Soccer Experience": "yes", "Guardian Name": "Clara Tanner", "Name": "Jill Tanner"]
]

var playersShortestToTallestNotExperienced = [
    ["Height": "39", "Soccer Experience": "no", "Guardian Name": "Sam and Elaine Kavalier", "Name": "Joe Kavalier"],
    ["Height": "40", "Soccer Experience": "no", "Guardian Name": "Charles and Cynthia Gill", "Name": "Matt Gill"],
    ["Height": "41", "Soccer Experience": "no", "Guardian Name": "Gala Dali", "Name": "Sal Dali"],
    ["Height": "41", "Soccer Experience": "no", "Guardian Name": "Bill and Hillary Stein", "Name": "Kimmy Stein"],
    ["Height": "43", "Soccer Experience": "no", "Guardian Name": "Claire Willis", "Name": "Arnold Willis"],
    ["Height": "44", "Soccer Experience": "no", "Guardian Name": "Aaron and Jill Finkelstein", "Name": "Ben Finkelstein"],
    ["Height": "45", "Soccer Experience": "no", "Guardian Name": "Jeff Adams", "Name": "Sammy Adams"],
    ["Height": "45", "Soccer Experience": "no", "Guardian Name": "Wendy and Mike Gordon", "Name": "Eva Gordon"],
    ["Height": "47", "Soccer Experience": "no", "Guardian Name": "David and Jamie Alaska", "Name": "Chloe Alaska"]
]

// Next up, empty arrays for the various kids' soccer teams, so we can sort the team members accordingly

var teamDragonsHeight = [Dictionary<String, String>]()

var teamRaptorsHeight = [Dictionary<String, String>]()

var teamSharksHeight = [Dictionary<String, String>]()

// another team builder function focusing on height

func teamBuilderHeight() {
    
    var counterY2 = 0
    var counterN2 = 0
    
    for player in playersTallestToShortestExperienced {
        if (counterY2 < 3) {
            teamDragonsHeight.append(player)
            counterY2 = counterY2 + 1
        } else if (counterY2 < 6) {
            teamRaptorsHeight.append(player)
            counterY2 = counterY2 + 1
        } else if (counterY2 < 9) {
            teamSharksHeight.append(player)
            counterY2 = counterY2 + 1
        }
    }
    
    for player in playersShortestToTallestNotExperienced {
        if (counterN2 < 3) {
            teamDragonsHeight.append(player)
            counterN2 = counterN2 + 1
        } else if (counterN2 < 6) {
            teamRaptorsHeight.append(player)
            counterN2 = counterN2 + 1
        } else if (counterN2 < 9) {
            teamSharksHeight.append(player)
            counterN2 = counterN2 + 1
        }
    }
    
    print("Team Dragons based on Height and Experience: \(teamDragonsHeight)")
    print("Team Raptors based on Height and Experience: \(teamRaptorsHeight)")
    print("Team Sharks based on Height and Experience: \(teamSharksHeight)")
}

// teamBuilderHeight()



/*
    i generated logic to find the average height of the existing teams i created, and of the total pool of players.
    the functions all work, i just didn't call them to keep the console print out clean for you.
*/


// average height for team Dragons

func dragonHeightGenerator() {
    var dragonHeights = [String]()
    for dragon in teamDragonsHeight{
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
    for raptor in teamRaptorsHeight{
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
    for shark in teamSharksHeight{
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

/*
 
dragonHeightGenerator()
raptorHeightGenerator()
sharkHeightGenerator()
averagePlayersHeight()
 
*/


