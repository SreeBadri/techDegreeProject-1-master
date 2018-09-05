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



////--------------------------------------- TYPE:1 --------------------------------------
////a single collection named 'players' that contains all information for all 18 players. Each player must themselves be represented by a Dictionary with String keys and the corresponding values.
////Also giving it a explicit type declaration
//
//var players  = [
//"Joe Smith": [ "Height": 42, "Soccer Experience": true, "Guradian Name": "Jim and Jan Smith" ],
//"Jill Tanner": [ "Height": 36, "Soccer Experience": true, "Guradian Name": "Clara Tanner" ],
//"Bill Bon":[ "Height": 43, "Soccer Experience": true, "Guradian Name": "Sara and Jenny Bon"],
//"Eva Gordon":[ "Height": 45, "Soccer Experience": false, "Guradian Name": "Wendy and Mike Gordon" ],
//"Matt Gill": ["Height": 40, "Soccer Experience": false, "Guradian Name": "Charles and Sylvia Gill"],
//"Kimmy Stein": ["Height": 41, "Soccer Experience": false, "Guradian Name": "Bill and Hillary Stein"] ,
//"Sammy Adams":[ "Height": 45, "Soccer Experience": false, "Guradian Name": "Jeff Adams" ],
//"Karl Saygan": [ "Height": 42, "Soccer Experience": true, "Guradian Name": "Heather Bledsoe"] ,
//"Suzane Greenberg": [ "Height": 44, "Soccer Experience": true, "Guradian Name": "Henrietta Dumas"] ,
//"Sal Dali": [ "Height": 41, "Soccer Experience": false, "Guradian Name": "Gala Dali" ],
//"Joe Kavalier":[ "Height": 39, "Soccer Experience": false, "Guradian Name": "Sam and Elaine Kavalier" ],
//"Ben Finkelstein":[ "Height": 44, "Soccer Experience": false, "Guradian Name": "Aaron and Jill Finkelstein" ],
//"Diego Soto":[ "Height": 41, "Soccer Experience": true, "Guradian Name": "Robin and Sarika Soto" ],
//"Chloe Alaska":[ "Height": 47, "Soccer Experience": false, "Guradian Name": "David and Jamie Alaska"] ,
//"Arnold Willis":["Height": 43, "Soccer Experience": false, "Guradian Name": "Claire Willis" ],
//"Phillip Helm":[ "Height": 44, "Soccer Experience": true, "Guradian Name": "Thomas Helm and Eva Jones"] ,
//"Les Clay":[ "Height": 42, "Soccer Experience": true, "Guradian Name": "Wynonna Brown" ],
//"Herschel Krustofski":[ "Height": 45, "Soccer Experience": true, "Guradian Name": "Hyman and Rachel Krustofski"]
// ]
//////Trying to have some fun with the Dictionary
////
/////*var namearray = [String]()
//////for (key,value) in players {
//////    namearray = [key]
//////    print("unsorted - \(namearray)")
//////}
////////namearray.sorted()
//////
//////for namearray in players{
//////print("Sorted - \(namearray.key)")
//////}
////*/
////
//let teamSharks: [String:[String:Any]]
//let teamDragons: [String:[String:Any]]
//let teamRaptors: [String:[String:Any]]
//
////to get the total of all the hieghts
//var total: Double = 0.0
//
//for i in players.values{
//
//print (i["Height"] ?? " ")
//
//}

//--------------------------------------- TYPE:2 --------------------------------------
//creating key variables for array dictionary

let playerNameKey = "name"
let playerHeightKey = "height"
let playerParentKey = "parent"
let playerExperienceKey = "experience?"

let experiencedPlayer = true
let notExperiencedPlayer = false




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

//Storing Dictionaries in the Array
players = [players1,players2,players3,players4,players5,players6,players7,players8,players9,players10,
                players11,players12,players13,players14,players15,players16,players17,players18]



                    /*-------please Ignore : Testing with a small value to see how it works-----------
                    //var value1 = players[0][playerHeightKey]
                    //value1 = value1 as! Double + 2
                    print (value1)
                    */

//Declaring Counter and height variables


                    /*var counter = 0; var heightTotal = 0.0
                    //while (counter < players.count){
                    //let newHeight = players[counter][playerHeightKey] as?  Double
                    //print("The newHeight Value is \(newHeight ?? 0.0)")
                    //heightTotal += newHeight!
                    //print("New value for heightTotal -- is \(heightTotal)")
                    //counter += 1
                    //}
                    ////Print total height
                    print("the total height is \(heightTotal)")
                    */

//declaring arrays to store experienced and non experienced players
var experiencedPlayerStore: [[String: Any]] = []
var nonExperiencedPlayerStore: [[String: Any]] = []


// Sorting the Players Array Dictionary for Experienced and non experienced players

func playerDistribute () {
for player in players {
    if (player[playerExperienceKey] as? Bool == experiencedPlayer)
    {
        //Assign the experienced player values to the array; to test if "if" is hit --> print("\(player[playerNameKey] ?? "") --> is an Experienced Player")
        experiencedPlayerStore.append(player)
        
    }
    else  {
        //Assign the non experienced player values to the array; to test if else is hit --> print("This guy is not experienced --> \(player[playerNameKey] ?? "")")
        nonExperiencedPlayerStore.append(player)

        }

}

                /*print("\(experiencedPlayerStore) are Experienced Player \n")
                print("\(nonExperiencedPlayerStore) are not Experienced Player")
                */
 }

playerDistribute() //------------------->>>>>> Function to call

//sorting experienced players with height

                /*
                for sort in experiencedPlayerStore{
                print (sort[playerHeightKey] ?? "")

                }
                print("\n")
                print(experiencedPlayerStore[0])
                //print(experiencedPlayerStore[0][playerHeightKey] as! Double)
                //
                //print(experiencedPlayerStore[1])
                //print(experiencedPlayerStore[1][playerHeightKey] as! Double)

                print(experiencedPlayerStore.count)
                */

func sortExperiencedPlayer () {
var i = 0;
while (i < experiencedPlayerStore.count)
{ //print("Value of I is \(i) \n")
    var j = 0
    while ( j < (experiencedPlayerStore.count - 1))
    {
        if ( (experiencedPlayerStore[j][playerHeightKey] as! Double)  > (experiencedPlayerStore[j+1][playerHeightKey] as! Double))
        {
            let holdingValue = experiencedPlayerStore[j]
            experiencedPlayerStore[j] = experiencedPlayerStore [j+1]
 
            experiencedPlayerStore[j+1] = holdingValue
        
        }
//print("Value of J is \(j)")
        j += 1
    }

i += 1
}

     print("Sorted Experienced Player List: \n")
    for sort in experiencedPlayerStore
    {
        print("Name: \(sort[playerNameKey] ?? "") ; Height:\(sort[playerHeightKey] ?? "") ")
    
    }
    
    

}

sortExperiencedPlayer() //------------------->>>>>> Function to call

                /*

                print(experiencedPlayerStore)
                print(experiencedPlayerStore[0])
                print(experiencedPlayerStore[0][playerHeightKey] as! Double)

                print(experiencedPlayerStore[1])
                print(experiencedPlayerStore[1][playerHeightKey] as! Double)
                */


func sortnonExperiencedPlayer () {
    var i = 0;
    while (i < nonExperiencedPlayerStore.count)
    { //print("Value of I is \(i) \n")
        var j = 0
        while ( j < (nonExperiencedPlayerStore.count - 1))
        {
            if ( (nonExperiencedPlayerStore[j][playerHeightKey] as! Double)  > (nonExperiencedPlayerStore[j+1][playerHeightKey] as! Double))
            {
                let holdingValue = nonExperiencedPlayerStore[j]
                nonExperiencedPlayerStore[j] = nonExperiencedPlayerStore [j+1]
                
                nonExperiencedPlayerStore[j+1] = holdingValue
                
            }
            //print("Value of J is \(j)")
            j += 1
        }
        
        i += 1
    }
            print("\nSorted Non-Experienced Player List: \n")
    for sort in nonExperiencedPlayerStore
    {
        print("Name: \(sort[playerNameKey] ?? "") ; Height:\(sort[playerHeightKey] ?? "") ")
    }
}

sortnonExperiencedPlayer() //------------------->>>>>> Function to call


//moving players in 3 different team

//func movePlayer () {

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

var counterForExperiencedPlayer = 0
while (counterForExperiencedPlayer < experiencedPlayerStore.count)
{
    teamSharks.append(experiencedPlayerStore[counterForExperiencedPlayer])
    teamDragons.append(experiencedPlayerStore[counterForExperiencedPlayer + 1])
    teamRaptors.append(experiencedPlayerStore[counterForExperiencedPlayer + 2])
        counterForExperiencedPlayer += 3
}

var counterForNonExperiencedPlayer = 0
while (counterForNonExperiencedPlayer < experiencedPlayerStore.count)
{
        teamSharks.append(experiencedPlayerStore[counterForNonExperiencedPlayer])
        teamDragons.append(experiencedPlayerStore[counterForNonExperiencedPlayer + 1])
        teamRaptors.append(experiencedPlayerStore[counterForNonExperiencedPlayer + 2])
        counterForNonExperiencedPlayer += 3
}
    

    
print("\nTeam Sharks are as below: \n ")
var heightTotalSharks = 0.0; var counterSharks = 0
for i in teamSharks
{
        print("\(i[playerNameKey] ?? "") : \(i[playerHeightKey] ?? "") ")
    heightTotalSharks += (i[playerHeightKey]) as! Double
    if (i[playerExperienceKey] as! Bool == experiencedPlayer)
    {
        counterSharks += 1
    }
    
}
    let averageHeightSharks = (heightTotalSharks ) / Double(teamSharks.count)
    print("\nAverage height of Team Sharks is: \(averageHeightSharks)")
    print("Total no. of players in team sharks is \(teamSharks.count)")
    print("Total height of team sharks is \(heightTotalSharks)")
print("Total number of Experienced Players in Team Sharks is: \(counterSharks)")
//print("\nTeam Dragons are as below: \n ")
//for i in teamDragons {
//    print(i[playerNameKey] ?? "" )
//}
//
//print("\nTeam Raptors are as below: \n ")
//for i in teamRaptors {
//    print(i[playerNameKey] ?? "" )
//}

//}

//movePlayer() //------------------->>>>>> Function to call



