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



//--------------------------------------- TYPE:1 --------------------------------------
//a single collection named 'players' that contains all information for all 18 players. Each player must themselves be represented by a Dictionary with String keys and the corresponding values.
//Also giving it a explicit type declaration

var players  = [
"Joe Smith": [ "Height": 42, "Soccer Experience": "YES", "Guradian Name": "Jim and Jan Smith" ],
"Jill Tanner": [ "Height": 36, "Soccer Experience": "YES", "Guradian Name": "Clara Tanner" ],
"Bill Bon":[ "Height": 43, "Soccer Experience": "YES", "Guradian Name": "Sara and Jenny Bon"],
"Eva Gordon":[ "Height": 45, "Soccer Experience": "NO", "Guradian Name": "Wendy and Mike Gordon" ],
"Matt Gill": ["Height": 40, "Soccer Experience": "NO", "Guradian Name": "Charles and Sylvia Gill"],
"Kimmy Stein": ["Height": 41, "Soccer Experience": "NO", "Guradian Name": "Bill and Hillary Stein"] ,
"Sammy Adams":[ "Height": 45, "Soccer Experience": "NO", "Guradian Name": "Jeff Adams" ],
"Karl Saygan": [ "Height": 42, "Soccer Experience": "YES", "Guradian Name": "Heather Bledsoe"] ,
"Suzane Greenberg": [ "Height": 44, "Soccer Experience": "YES", "Guradian Name": "Henrietta Dumas"] ,
"Sal Dali": [ "Height": 41, "Soccer Experience": "NO", "Guradian Name": "Gala Dali" ],
"Joe Kavalier":[ "Height": 39, "Soccer Experience": "NO", "Guradian Name": "Sam and Elaine Kavalier" ],
"Ben Finkelstein":[ "Height": 44, "Soccer Experience": "NO", "Guradian Name": "Aaron and Jill Finkelstein" ],
"Diego Soto":[ "Height": 41, "Soccer Experience": "YES", "Guradian Name": "Robin and Sarika Soto" ],
"Chloe Alaska":[ "Height": 47, "Soccer Experience": "NO", "Guradian Name": "David and Jamie Alaska"] ,
"Arnold Willis":["Height": 43, "Soccer Experience": "NO", "Guradian Name": "Claire Willis" ],
"Phillip Helm":[ "Height": 44, "Soccer Experience": "YES", "Guradian Name": "Thomas Helm and Eva Jones"] ,
"Les Clay":[ "Height": 42, "Soccer Experience": "YES", "Guradian Name": "Wynonna Brown" ],
"Herschel Krustofski":[ "Height": 45, "Soccer Experience": "YES", "Guradian Name": "Hyman and Rachel Krustofski"]
 ]
////Trying to have some fun with the Dictionary
//
///*var namearray = [String]()
////for (key,value) in players {
////    namearray = [key]
////    print("unsorted - \(namearray)")
////}
//////namearray.sorted()
////
////for namearray in players{
////print("Sorted - \(namearray.key)")
////}
//*/
//
let teamSharks: [String:[String:Any]]
let teamDragons: [String:[String:Any]]
let teamRaptors: [String:[String:Any]]

//to get the total of all the hieghts
var total: Double = 0.0

for i in players.values{
    
print (i["Height"] ?? " ")

}

//--------------------------------------- TYPE:2 --------------------------------------
//creating key variables for array dictionary

let playerNameKey = "name"
let playerHeightKey = "height"
let playerParentKey = "parent"
let playerExperienceKey = "experience?"

//creating array of dictionary for players data
var players2 = [
    [playerNameKey: "Joe Smith", playerHeightKey: 42.0, playerExperienceKey: "YES", playerParentKey: "Jim and Jan Smith"],
    [playerNameKey: "Jill Tanner", playerHeightKey: 36.0, playerExperienceKey: "YES", playerParentKey: "Clara Tanner"],
    [playerNameKey: "Bill Bon", playerHeightKey: 43.0, playerExperienceKey: "YES", playerParentKey: "Sara and Jenny Bon"],
    [playerNameKey: "Eva Gordon", playerHeightKey: 45.0, playerExperienceKey: "NO", playerParentKey: "Wendy and Mike Gordon"],
    [playerNameKey: "Matt Gill", playerHeightKey: 40.0, playerExperienceKey: "NO", playerParentKey: "Charles and Sylvia Gill"],
    [playerNameKey: "Kimmy Stein", playerHeightKey: 41.0, playerExperienceKey: "NO", playerParentKey: "Bill and Hillary Stein"],
    [playerNameKey: "Sammy Adams", playerHeightKey: 45.0, playerExperienceKey: "NO", playerParentKey: "Jeff Adams"],
    [playerNameKey: "Karl Saygan", playerHeightKey: 42.0, playerExperienceKey: "YES", playerParentKey: "Heather Bledsoe"],
    [playerNameKey: "Suzane Greenberg", playerHeightKey: 44.0, playerExperienceKey: "YES", playerParentKey: "Henrietta Dumas"],
    [playerNameKey: "Sal Dali", playerHeightKey: 41.0, playerExperienceKey: "NO", playerParentKey: "Gala Dali"],
    [playerNameKey: "Joe Kavalier", playerHeightKey: 39.0, playerExperienceKey: "NO", playerParentKey: "Sam and Elaine Kavalier"],
    [playerNameKey: "Ben Finkelstein", playerHeightKey: 44.0, playerExperienceKey: "NO", playerParentKey: "Aaron and Jill Finkelstein"],
    [playerNameKey: "Diego Soto", playerHeightKey: 41.0, playerExperienceKey: "YES", playerParentKey: "Robin and Sarika Soto"],
    [playerNameKey: "Chloe Alaska", playerHeightKey: 47.0, playerExperienceKey: "NO", playerParentKey: "David and Jamie Alaska"],
    [playerNameKey: "Arnold Willis", playerHeightKey: 43.0, playerExperienceKey: "NO", playerParentKey: "Claire Willis"],
    [playerNameKey: "Phillip Helm", playerHeightKey: 44.0, playerExperienceKey: "YES", playerParentKey: "Thomas Helm and Eva Jones"],
    [playerNameKey: "Les Clay", playerHeightKey: 42.0, playerExperienceKey: "YES", playerParentKey: "Wynonna Brown"],
    [playerNameKey: "Herschel Krustofski", playerHeightKey: 45.0, playerExperienceKey: "YES", playerParentKey: "Hyman and Rachel Krustofski"],
]




