
/*
 ---------------------------------------
 Collections of players and teams
 ---------------------------------------
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

//A Tulup of palyers information

let players: [[String : Any]] = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

//Collections for the different teams

var teamSharks: [String] = []
var teamRaptors: [String] = []
var teamDragons: [String] = []

//A collection that includes all of the teams for a total count

var allTeams: [String] = ["Team Sharks", "Team Raptors", "Team Dragons"]

var numberOfPlayersPerTeam: Int = players.count / allTeams.count


/*
 --------------------------------------------------
 Distinguishing players with experience
 --------------------------------------------------
*/

//Separating the players with experience from those without and assigning them to a collection


var playersWithExperience: [String] = []
var playersWithoutExperience: [String] = []

for playerName in players{
    if playerName["Experience"] as! String == "YES"{
        playersWithExperience.append(playerName["Name"] as! String)
    } else if playerName["Experience"] as! String == "NO"{ playersWithoutExperience.append(playerName["Name"] as! String)
    }
}

//The number of experienced and nonexperienced players there should be per team

var numberOfExpPlayersPerTeam: Int = playersWithExperience.count / allTeams.count
var numberOfNonExpPlayersPerTeam: Int = playersWithoutExperience.count / allTeams.count

 


/*
--------------------------------------
 Finding the average height of players
--------------------------------------
 */

var totalNumberOfPlayers: Double = Double(players.count)
var sumOfPlayersHeights: Double = 0
var averageHeightOfPlayers: Double = 0


for playerName in players{
    for (playerHeightLabel, height) in playerName {
        if playerHeightLabel == "Height" {
            sumOfPlayersHeights += height as! Double
            averageHeightOfPlayers = sumOfPlayersHeights / totalNumberOfPlayers
        }
    }

}


//Function to Finding the average height of  each Team


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
    
    return averageHeightOfTeam
    
}





/*
 ---------------------------
 Assigning players to teams
 ---------------------------
 */

//Assign players ot teams based on experience

//A function that takes input of list of experienced players or non-experienced players and the number of players there should be for either catagory which switches on true to assign players to teams

var teamSharksAverageHeight: Double = 0
var teamDragonsAverageHeight: Double = 0
var teamRaptorsAverageHeight: Double = 0

func assignPlayers(withExpOrWithout:[String], playersPerTeam: Int){
    
    for player in withExpOrWithout{
        
        switch true {
            
        case teamSharks.count < playersPerTeam:
            teamSharks.append(player)
            teamSharksAverageHeight = findAverageHeightOfTeam(teamName: teamSharks)
            print(teamSharksAverageHeight)
            
        case teamDragons.count < playersPerTeam:
            teamDragons.append(player)
            teamDragonsAverageHeight = findAverageHeightOfTeam(teamName: teamDragons)
            print(teamDragonsAverageHeight)
            
        case teamRaptors.count < playersPerTeam:
            teamRaptors.append(player)
            teamRaptorsAverageHeight = findAverageHeightOfTeam(teamName: teamRaptors)
            print(teamRaptorsAverageHeight)
            
        default: print("I can'put this player anywhere yet")
        }
    }
}


//calling Function to assign players

assignPlayers(withExpOrWithout: playersWithExperience, playersPerTeam: numberOfExpPlayersPerTeam)
assignPlayers(withExpOrWithout: playersWithoutExperience, playersPerTeam: numberOfPlayersPerTeam)

print("Team Sharks:", teamSharks)
print("Team Dragons", teamDragons)
print("Team Raptors", teamRaptors)






/*
---------------------------------------------
Sending letters to the guardians of players
 ---------------------------------------------
*/


var letters: [String: String] = [:]

for playerName in players{
    for (playerNameLabel, name) in playerName{
        
        func playersInformation(teamNameArray: [String],teamNameString: String, practiceTime: String){
            
            for player in teamNameArray{
                if playerNameLabel == "Name"{
                    if player == name as! String{
                        letters[player] = "Dear \(playerName["Guardian(s)"] ?? "No Guardians"), We at the Soccer League are happy to notify you that your child \(player) will be playing for \(teamNameString). The first practice of the season is \(practiceTime). Thank You."
                        print(letters[player] ?? "No Letter")
                        
                    }
                }
            }
        }
        
        playersInformation(teamNameArray: teamSharks, teamNameString: "Team Sharks", practiceTime: "March 17, at 3pm")
        playersInformation(teamNameArray: teamDragons, teamNameString: "Team Dragons", practiceTime: "March 17, at 1pm")
        playersInformation(teamNameArray: teamRaptors, teamNameString: "Team Raptors", practiceTime: "March 18, at 1pm")
        
    }
}














