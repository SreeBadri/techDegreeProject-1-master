//: Playground - noun: a place where people can play

import UIKit

/*
 You have volunteered to be the coordinator for your town’s youth soccer league. As part of your job you need to divide the 18 children who have signed up for the league into three even teams — Dragons, Sharks, and Raptors. In years past, the teams have been unevenly matched, so this year you are doing your best to fix that. For each child, you will have the following information:
 
 Name,
 Height (in inches),
 Whether or not they have played soccer before, and
 Their guardians’ names.
 The project has three major parts. For each part, choose only from the tools we have covered in the courses so far.
 
 Native types and collections to store data (Dictionary, Array, Int, String, etc)
 Accessing, appending and counting arrays
 Accessing dictionaries and arrays
 Creating control flow
 Use of comparison operators
 String interpolation
 Use of comments
 Please don’t employ more advanced tools we haven’t covered yet, even if they are right for the job. (Yes, that means no classes, structs or filters on Project 1.)
 
 ** Part 1: ** We have provided information for the 18 players in the Player Info spreadsheet. Please choose an appropriate data type to store the information for each player. In addition, create an empty collection constant to hold all the players’ data. Once you have decided on what tools to use, manually enter the player data so it can be used in Part 2.
 
 ** Part 2: ** Create logic to iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own collection for use in Part 3. Please note: your logic should work correctly regardless of the initial ordering of the players and the number of players. This solution should work if there are 18 players or 100.
 
 Also, if you would like to attain an “exceeds expectations” rating for this project, write code to ensure that each team's average height is within 1.5 inches of the others.
 
 ** Part 3: ** Write code that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardian names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows:
 
 Dragons - March 17, 1pm
 Sharks - March 17, 3pm
 Raptors - March 18, 1pm
 When your complete code is run in a playground the letters should be stored in a collection named 'letters'. When the code is run, the letters should be visible in the console.
 
 You can reference the resources provided in the Project Resources area for additional information on how to implement and use the Swift Collections.
 
 As always, meaningful and concise code comments are expected. Your code should be written and refined in an Xcode playground. Be sure to upload it to GitHub, as per the instructions provided in the Soccer Coordinator Video Instruction (see the link below).
 
 One note regarding the usage of GitHub. Since it is a version control tool, and it is best to do an incremental check in when you completed a feature, fix, or enhancement. Also when adding comment to each check-in, a good practice is to add comments for the specific things that's changed, e.g. "added logic for height based assignment", "fixed duplicate printing of dragon team". This way you can go back and know exactly where certain enhancements/bugs might be introduced.
 
 Please also note the specific naming requirements for variables in the detailed instructions below as these are required for your project to pass. Good luck, and happy coding!
 */

//--------------------------------------- Start --------------------------------------

//creating key variables for array dictionary
let playerNameKey = "name"
let playerHeightKey = "height"
let playerParentKey = "parent"
let playerExperienceKey = "experience?"
let playerTeam = "Team"
let playerGameDetail = "Game Detail"

//Creating variables to store experience key in boolean value to help in itterating through array of dictionary
let experiencedPlayer = true
let notExperiencedPlayer = false


//creating variables for 3 different teams
var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []


//Creating Dictonary for each player and player detail.
let players1:[String: Any] =
    [playerNameKey: "Joe Smith", playerHeightKey: 42.0, playerExperienceKey: experiencedPlayer, playerParentKey: "Jim and Jan Smith"]
let players2:[String: Any] =    [playerNameKey: "Jill Tanner", playerHeightKey: 36.0, playerExperienceKey: experiencedPlayer, playerParentKey: "Clara Tanner"]
let players3:[String: Any] =    [playerNameKey: "Bill Bon", playerHeightKey: 43.0, playerExperienceKey: experiencedPlayer, playerParentKey: "Sara and Jenny Bon"]
let players4:[String: Any] =    [playerNameKey: "Eva Gordon", playerHeightKey: 45.0, playerExperienceKey: notExperiencedPlayer, playerParentKey: "Wendy and Mike Gordon"]
let players5:[String: Any] =    [playerNameKey: "Matt Gill", playerHeightKey: 40.0, playerExperienceKey: notExperiencedPlayer, playerParentKey: "Charles and Sylvia Gill"]
let players6:[String: Any] =    [playerNameKey: "Kimmy Stein", playerHeightKey: 41.0, playerExperienceKey: notExperiencedPlayer, playerParentKey: "Bill and Hillary Stein"]
let players7:[String: Any] =    [playerNameKey: "Sammy Adams", playerHeightKey: 45.0, playerExperienceKey: notExperiencedPlayer, playerParentKey: "Jeff Adams"]
let players8:[String: Any] =    [playerNameKey: "Karl Saygan", playerHeightKey: 42.0, playerExperienceKey: experiencedPlayer, playerParentKey: "Heather Bledsoe"]
let players9:[String: Any] =    [playerNameKey: "Suzane Greenberg", playerHeightKey: 44.0, playerExperienceKey: experiencedPlayer, playerParentKey: "Henrietta Dumas"]
let players10:[String: Any] =   [playerNameKey: "Sal Dali", playerHeightKey: 41.0, playerExperienceKey: notExperiencedPlayer, playerParentKey: "Gala Dali"]
let players11:[String: Any] =   [playerNameKey: "Joe Kavalier", playerHeightKey: 39.0, playerExperienceKey: notExperiencedPlayer, playerParentKey: "Sam and Elaine Kavalier"]
let players12:[String: Any] =   [playerNameKey: "Ben Finkelstein", playerHeightKey: 44.0, playerExperienceKey: notExperiencedPlayer, playerParentKey: "Aaron and Jill Finkelstein"]
let players13:[String: Any] =   [playerNameKey: "Diego Soto", playerHeightKey: 41.0, playerExperienceKey: experiencedPlayer, playerParentKey: "Robin and Sarika Soto"]
let players14:[String: Any] =   [playerNameKey: "Chloe Alaska", playerHeightKey: 47.0, playerExperienceKey: notExperiencedPlayer, playerParentKey: "David and Jamie Alaska"]
let players15:[String: Any] =   [playerNameKey: "Arnold Willis", playerHeightKey: 43.0, playerExperienceKey: notExperiencedPlayer, playerParentKey: "Claire Willis"]
let players16:[String: Any] =   [playerNameKey: "Phillip Helm", playerHeightKey: 44.0, playerExperienceKey: experiencedPlayer, playerParentKey: "Thomas Helm and Eva Jones"]
let players17:[String: Any] =   [playerNameKey: "Les Clay", playerHeightKey: 42.0, playerExperienceKey: experiencedPlayer, playerParentKey: "Wynonna Brown"]
let players18:[String: Any] =   [playerNameKey: "Herschel Krustofski", playerHeightKey: 45.0, playerExperienceKey: experiencedPlayer, playerParentKey: "Hyman and Rachel Krustofski"]

//Declaring the array to store the dictonaries
var players = [[String:Any]]()

//Assigning Dictionaries in the Array
players = [players1,players2,players3,players4,players5,players6,players7,players8,players9,players10,
                players11,players12,players13,players14,players15,players16,players17,players18]


//declaring array of Dictionary to store experienced and non experienced players
var experiencedPlayerStore: [[String: Any]] = []
var nonExperiencedPlayerStore: [[String: Any]] = []


// Checking the Players Array Dictionary for Experienced and non experienced players and assigning to each array of Dictionary
for player in players
{
    if (player[playerExperienceKey] as? Bool == experiencedPlayer)
    {
        //Assign the experienced player values to the array; to test if "if" is hit --> print("\(player[playerNameKey] ?? "") --> is an Experienced Player")
        experiencedPlayerStore.append(player)
        
    }
    else
        {
        //Assign the non experienced player values to the array; to test if else is hit --> print("This guy is not experienced --> \(player[playerNameKey] ?? "")")
        nonExperiencedPlayerStore.append(player)
        }

}



func sortPlayer (playerSortStore: inout [[String:Any]]) {
var i = 0;
        while (i < playerSortStore.count)
        {
            var j = 0
            while ( j < (playerSortStore.count - 1))
            {
                if ( (playerSortStore[j][playerHeightKey] as! Double)  > (playerSortStore[j+1][playerHeightKey] as! Double))
                {
                    let holdingValue = playerSortStore[j]
                    playerSortStore[j] = playerSortStore [j+1]
         
                    playerSortStore[j+1] = holdingValue
                
                }
                j += 1
            }
            i += 1
        }
    

}

sortPlayer(playerSortStore: &experiencedPlayerStore) //------------------->>>>>> Function to call
sortPlayer(playerSortStore: &nonExperiencedPlayerStore) //------------------->>>>>> Function to call


//moving players in 3 different team
func movePlayer (playerStore : [[String: Any]] ) {

var counterForPlayer = 0
while (counterForPlayer < playerStore.count)
{
    teamSharks.append(playerStore[counterForPlayer])
    teamDragons.append(playerStore[counterForPlayer + 1])
    teamRaptors.append(playerStore[counterForPlayer + 2])
        counterForPlayer += 3
}
    

}
movePlayer(playerStore: experiencedPlayerStore) //------------------->>>>>> Function to call
movePlayer(playerStore: nonExperiencedPlayerStore) //------------------->>>>>> Function to call

// appending team name and team detials to the team collection
var i = 0
while (i < teamSharks.count)
{
    teamSharks[i][playerTeam] = "Sharks"
    teamSharks[i][playerGameDetail] = "March 17th at 1:00 PM"
    teamDragons[i][playerTeam] = "Dragons"
    teamDragons[i][playerGameDetail] = "March 17th at 3:00 PM"
    teamRaptors[i][playerTeam] = "Raptors"
    teamRaptors[i][playerGameDetail] = "March 18th at 1:00 PM"
    
    i += 1
}
                        // creating functions to check each team details, will not be used in project , this is just to test if players have been distributed correctly
                        /*
                        func teamSharkDetails (){
                        print("\nTeam Sharks are as below: \n ")
                            var heightTotalSharks = 0.0; var counterSharks = 0
                            for i in teamSharks
                            {
                                print("\(i[playerNameKey] ?? "") : \(i[playerHeightKey] ?? "") : \(i[playerExperienceKey] ?? "")")
                                heightTotalSharks += (i[playerHeightKey]) as! Double

                                if (i[playerExperienceKey] as! Bool == experiencedPlayer)
                                {
                                    counterSharks += 1
                                }
                            }

                        print("Total number of Experienced Players in Team Sharks is: \(counterSharks)")

 
                        }

                        //teamSharkDetails() //------------------->>>>>> Function to call

                        func teamDragonsDetails (){
                        print("\nTeam Dragons are as below: \n ")
                                var heightTotalDragons = 0.0; var counterDragons = 0
                                for i in teamDragons
                                {
                                    print("\(i[playerNameKey] ?? "") : \(i[playerHeightKey] ?? "") : \(i[playerExperienceKey] ?? "")")
                                    heightTotalDragons += (i[playerHeightKey]) as! Double
 
                                    if (i[playerExperienceKey] as! Bool == experiencedPlayer)
                                    {
                                        counterDragons += 1
                                    }
 
                                }
                        print("Total number of Experienced Players in Team Sharks is: \(counterDragons)")


                        }

                        //teamDragonsDetails() //------------------->>>>>> Function to call

                        func teamRaptorsDetails (){
                        print("\nTeam Raptors are as below: \n ")
                            var heightTotalRaptors = 0.0; var counterRaptors = 0
                            for i in teamRaptors
                            {
                                print("\(i[playerNameKey] ?? "") : \(i[playerHeightKey] ?? "") : \(i[playerExperienceKey] ?? "")")
                                heightTotalRaptors += (i[playerHeightKey]) as! Double
 
                                if (i[playerExperienceKey] as! Bool == experiencedPlayer)
                                {
                                    counterRaptors += 1
                                }
                            }
                        print("Total number of Experienced Players in Team Sharks is: \(counterRaptors)")

                        }

                        //teamRaptorsDetails() //------------------->>>>>> Function to call
                        */

var collectionTeam:String = ""

//Function to print the letter, please pass the argument as team name and respective team letter will be printed in console
func printLetter(team : [[String:Any]]) {

            for i in team
            {
                collectionTeam = "\n1.Name: \(i[playerNameKey] ?? "")\n2.Game Date: \(i[playerTeam] ?? "")\n3.Team: \(i[playerGameDetail] ?? "")"
               
                print("\nDear \(i[playerParentKey] ?? ""),\n\nWe are happy to inform you that \(i[playerNameKey] ?? "") has been selected for Team: \(i[playerTeam] ?? ""),\nBelow are the details for the same:\(collectionTeam)\n\nLooking forward to see you there.\n\nRegards,\nSoccer Committee Team\n-------------------------------------------------------------------------")
            }


}


printLetter(team: teamSharks) //------------------->>>>>> Function to call
printLetter(team: teamDragons) //------------------->>>>>> Function to call
printLetter(team: teamRaptors) //------------------->>>>>> Function to call


