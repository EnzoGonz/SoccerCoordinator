
/*
 --------------------------------------------------------------------------------------------------------------
 Collections of players and teams
 --------------------------------------------------------------------------------------------------------------
 */


//Dictionary collections with all players information
let joeSmith: [String : Any] = ["Name": "Joe Smith","Height": 42.0 , "Experience": "YES" , "Guardian(s)": "Jim and Jan Smith"]

let jillTanner: [String : Any] = ["Name": "Jill Tanner", "Height": 36.0 , "Experience": "YES" , "Guardian(s)": "Clara Tanner"]

let  billBon: [String : Any] = ["Name": "Bill Bon", "Height": 43.0 , "Experience": "YES" , "Guardian(s)": "Sara and Jenny Bon"]

let  evaGordon: [String : Any] = ["Name": "Eva Gordon", "Height": 45.0 , "Experience": "NO" , "Guardian(s)": "Wendy and Mike Gordon"]

let  mattGill: [String : Any] = ["Name": "Matt Gill", "Height": 40.0 , "Experience": "NO" , "Guardian(s)": "Charles and Sylvia Gill"]

let  kimmyStein: [String : Any] = ["Name": "Kimmy Stein", "Height": 41.0 , "Experience": "NO" , "Guardian(s)": "Bill and Hillary Stein"]

let  sammyAdams: [String : Any] = ["Name": "Sammy Adams", "Height": 45.0 , "Experience": "NO" , "Guardian(s)": "Jeff Adams"]

let  karlSaygan: [String : Any] = ["Name": "Karl Saygan", "Height": 42.0 , "Experience": "YES" , "Guardian(s)": "Heather Bledsoe"]

let  suzaneGreenberg: [String : Any] = ["Name": "Suzane Greenberg", "Height": 44.0 , "Experience": "YES" , "Guardian(s)": "Henrietta Dumas"]

let  salDali: [String : Any] = ["Name": "Sal Dali", "Height": 41.0 , "Experience": "NO" , "Guardian(s)": "Gala Dali"]

let  joeKavalier: [String : Any] = ["Name": "Joe Kavalier", "Height": 39.0 , "Experience": "NO" , "Guardian(s)": "Sam and Elaine Kavalier"]

let  benFinkelstein: [String : Any] = ["Name": "Ben Finkelstein", "Height": 44.0 , "Experience": "NO" , "Guardian(s)": "Aaron and Jill Finkelstein"]

let  diegoSoto: [String : Any] = ["Name": "Diego Soto", "Height": 41.0 , "Experience": "YES" , "Guardian(s)": "Robin and Sarika Soto"]

let  chloeAlaska: [String : Any] = ["Name": "Chloe Alaska", "Height": 47.0 , "Experience": "NO" , "Guardian(s)": "David and Jamie Alaska"]

let  arnoldWillis: [String : Any] = ["Name": "Arnold Willis", "Height": 43.0 , "Experience": "NO" , "Guardian(s)": "Claire Willis"]

let  phillipHelm: [String : Any] = ["Name": "Phillip Helm", "Height": 44.0 , "Experience": "YES" , "Guardian(s)": "Thomas Helm and Eva Jones"]

let  lesClay: [String : Any] = ["Name": "Les Clay", "Height": 42.0 , "Experience": "YES" , "Guardian(s)": "Wynonna Brown"]

let  herschelKrustofski: [String : Any] = ["Name": "Herschel Krustofski", "Height": 45.0 , "Experience": "YES" , "Guardian(s)": "Hyman and Rachel Krustofski"]


//A collection of the players-information-collections
let players: [[String : Any]] = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

//Collections for the different teams
var teamSharks: [String] = []
var teamRaptors: [String] = []
var teamDragons: [String] = []

//A collection that includes all of the teams for a total count
var allTeams: [String] = ["Team Sharks", "Team Raptors", "Team Dragons"]

//A variable to store the number of players there should be per team based on total numebr of players and the amount of teams
var numberOfPlayersPerTeam: Int = players.count / allTeams.count


/*
 --------------------------------------------------------------------------------------------------------------
 Distinguishing players with experience
 --------------------------------------------------------------------------------------------------------------
 */

//Separating the players with experience from those without and assigning them to variables

//Variables to hold the names of players with or without expereince playing soccer
var playersWithExperience: [String] = []
var playersWithoutExperience: [String] = []

//For loop to iterate through players and divide them into two groups: with experience and without experience
for playerName in players{
    if playerName["Experience"] as! String == "YES"{
        playersWithExperience.append(playerName["Name"] as! String)
    } else if playerName["Experience"] as! String == "NO"{ playersWithoutExperience.append(playerName["Name"] as! String)
    }
}

//Variabels to hold the number of experienced and nonexperienced players there should be per team
var numberOfExpPlayersPerTeam: Int = playersWithExperience.count / allTeams.count
var numberOfNonExpPlayersPerTeam: Int = playersWithoutExperience.count / allTeams.count




/*
 --------------------------------------------------------------------------------------------------------------
 Finding the average height of players
 --------------------------------------------------------------------------------------------------------------
 */

//Variable to hold the 'Double' total numebr of players, for use in determining average heights
var totalNumberOfPlayers: Double = Double(players.count)

//Variable to hold the sum of all players heights, for use in determinign average height
var sumOfPlayersHeights: Double = 0

//Variable to hold the average height of all players
var averageHeightOfPlayers: Double = 0

//For loop to collect all players heights and determine average height
for playerName in players{
    for (playerHeightLabel, height) in playerName {
        if playerHeightLabel == "Height" {
            sumOfPlayersHeights += height as! Double
            averageHeightOfPlayers = sumOfPlayersHeights / totalNumberOfPlayers
        }
    }
    
}


//Function to Find the average height of  each Team, to be used when assigning players based on heights

func findAverageHeightOfTeam(teamName: [String]) -> Double{
    
    var sumOfTeamsPlayersHeights: Double = 0
    var averageHeightOfTeam: Double = 0
    
    for playerName in players{
        for (playerLabel, valueOfLabel) in playerName{
            for player in teamName{
                
                if playerLabel == "Name"{
                    if player == valueOfLabel as! String{
                        sumOfTeamsPlayersHeights += playerName["Height"] as! Double
                    }
                }
            }
        }
    }
    
    averageHeightOfTeam = sumOfTeamsPlayersHeights / Double(teamName.count)
    
    if averageHeightOfTeam > 0.0{
        return averageHeightOfTeam
    } else {return 0.0}
}




/*
 --------------------------------------------------------------------------------------------------------------
 Assigning players to teams BASED ON EXPERIENCE AND HEIGHT
 --------------------------------------------------------------------------------------------------------------
 */

//Variables to hold each teams average height for use in assuring difference between teams'heights does not exceed 1.5 inches
var teamSharksAverageHeight: Double = 0
var teamDragonsAverageHeight: Double = 0
var teamRaptorsAverageHeight: Double = 0


//A function that takes input of list of experienced players or non-experienced players and the number of players there should be for either catagory-- as well as players heights by calling a previous function-- which switches on true to assign players to teams
func assignPlayers(withExpOrWithout:[String], playersPerTeam: Int){
    
    for player in withExpOrWithout{
        
        switch true {
            
            //NOTE- The use of the 'Magic' number 0.75 is due to the need for all teams average heights to be within 1.5 inches of each other. Here the average height of all players is used as an anchor. The 1.5 inch spread is split in half- 0.75 inches above the all-player-average is the upper limit and 0.75 inches below the all-player-average is the lower limit.
            
        case teamSharks.count < playersPerTeam && (((findAverageHeightOfTeam(teamName: teamSharks) >= (averageHeightOfPlayers - 0.75)) && (findAverageHeightOfTeam(teamName: teamSharks) <= (averageHeightOfPlayers + 0.75))) || (findAverageHeightOfTeam(teamName: teamSharks) == 0)):
            teamSharks.append(player)
            teamSharksAverageHeight = findAverageHeightOfTeam(teamName: teamSharks)
            
            
        case teamDragons.count < playersPerTeam && (((findAverageHeightOfTeam(teamName: teamDragons) >= (averageHeightOfPlayers - 0.75)) && (findAverageHeightOfTeam(teamName: teamDragons) <= (averageHeightOfPlayers + 0.75))) || (findAverageHeightOfTeam(teamName: teamDragons) == 0)):
            teamDragons.append(player)
            teamDragonsAverageHeight = findAverageHeightOfTeam(teamName: teamDragons)
            
            
        case teamRaptors.count < playersPerTeam && (((findAverageHeightOfTeam(teamName: teamRaptors) >= (averageHeightOfPlayers - 0.75)) && (findAverageHeightOfTeam(teamName: teamRaptors) <= (averageHeightOfPlayers + 0.75))) || (findAverageHeightOfTeam(teamName: teamRaptors) == 0)):
            teamRaptors.append(player)
            teamRaptorsAverageHeight = findAverageHeightOfTeam(teamName: teamRaptors)
            
            
        default: if teamSharks.count < numberOfPlayersPerTeam {teamSharks.append(player)}
        else if teamDragons.count < numberOfPlayersPerTeam {teamDragons.append(player)}
        else if teamRaptors.count < numberOfPlayersPerTeam {teamRaptors.append(player)}
            
        }
    }
}



//calling Functions to assign players to teams
assignPlayers(withExpOrWithout: playersWithExperience, playersPerTeam: numberOfExpPlayersPerTeam)
assignPlayers(withExpOrWithout: playersWithoutExperience, playersPerTeam: numberOfPlayersPerTeam)




/*
 --------------------------------------------------------------------------------------------------------------
 Printing to screen all Team information
 --------------------------------------------------------------------------------------------------------------
 */

//Print the average height of all the players, for reference
print("The average height in inches of all the players is \(averageHeightOfPlayers)")

//Print information for Team Sharks
print("-----------------------------")
print("Team Sharks:")
for name in teamSharks{
    print(name)
}
print("The average height in inches of Team Sharks is \(teamSharksAverageHeight)")


//Print information for Team Dragons
print("-----------------------------")
print("Team Dragons:")
for name in teamDragons{
    print(name)
}
print("The average height in inches of Team Dragons is \(teamDragonsAverageHeight)")

//Print information for Team Raptors
print("-----------------------------")
print("Team Raptors:")
for name in teamRaptors{
    print(name)
}
print("The average height in inches of Team Raptors is \(teamRaptorsAverageHeight)")
print("-----------------------------")



/*
 --------------------------------------------------------------------------------------------------------------
 Sending letters to the guardians of players
 --------------------------------------------------------------------------------------------------------------
 */

//A collection to store the player:letters key-value pair
var letters: [String: String] = [:]

//A loop to cycle through the players, determien which team they are on and a use a function to create and distribute(print) their corosponding letters
for playerName in players{
    for (playerNameLabel, name) in playerName{
        
        //A function that iterate through all players and creates a personalised letter to each players guardian(s), based on their team assgnment adn that teams first practice date/time.
        func sendLettersToplayersGuardians(teamNameArray: [String],teamNameString: String, practiceTime: String){
            
            for player in teamNameArray{
                if playerNameLabel == "Name"{
                    if player == name as! String{
                        letters[player] = "Dear \(playerName["Guardian(s)"] ?? "No Guardians"), We at the Soccer League are happy to notify you that your child \(player) will be playing for \(teamNameString). The first practice of the season is \(practiceTime). Thank You."
                        print(letters[player] ?? "No Letter")
                        
                    }
                }
            }
        }
        //NOTE- The letters are printed in no particular order because the collection that stores them is a dictionary, which does not preserve order

        sendLettersToplayersGuardians(teamNameArray: teamSharks, teamNameString: "Team Sharks", practiceTime: "March 17, at 3pm")
        sendLettersToplayersGuardians(teamNameArray: teamDragons, teamNameString: "Team Dragons", practiceTime: "March 17, at 1pm")
        sendLettersToplayersGuardians(teamNameArray: teamRaptors, teamNameString: "Team Raptors", practiceTime: "March 18, at 1pm")
        
    }
}

/*
-----------------------
Written by:           |
 W. Lorenzo Gonzalez  |
Date Submitted:       |
 10 April 2017        |
-----------------------
*/




