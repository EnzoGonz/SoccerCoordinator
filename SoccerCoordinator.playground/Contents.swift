
/*
 ---------------------------------------
 Collections of players and teams
 ---------------------------------------
*/


//Dictionary collections with all players information



let joeSmith: [String : Any] = ["Name": "Joe Smith","Height": 42 , "Experience": "YES" , "Guardian(s)": "Jim and Jan Smith"]

let jillTanner: [String : Any] = ["Name": "Jill Tanner", "Height": 36 , "Experience": "YES" , "Guardian(s)": "Clara Tanner"]

let  billBon: [String : Any] = ["Name": "Bill Bon", "Height": 43 , "Experience": "YES" , "Guardian(s)": "Sara and Jenny Bon"]

let  evaGordon: [String : Any] = ["Name": "Eva Gordon", "Height": 45 , "Experience": "NO" , "Guardian(s)": "Wendy and Mike Gordon"]

let  mattGill: [String : Any] = ["Name": "Matt Gill", "Height": 40 , "Experience": "NO" , "Guardian(s)": "Charles and Sylvia Gill"]

let  kimmyStein: [String : Any] = ["Name": "Kimmy Stein", "Height": 41 , "Experience": "NO" , "Guardian(s)": "Bill and Hillary Stein"]

let  sammyAdams: [String : Any] = ["Name": "Sammy Adams", "Height": 45 , "Experience": "NO" , "Guardian(s)": "Jeff Adams"]

let  karlSaygan: [String : Any] = ["Name": "Karl Saygan", "Height": 42 , "Experience": "YES" , "Guardian(s)": "Heather Bledsoe"]

let  suzaneGreenberg: [String : Any] = ["Name": "Suzane Greenberg", "Height": 44 , "Experience": "YES" , "Guardian(s)": "Henrietta Dumas"]

let  salDali: [String : Any] = ["Name": "Sal Dali", "Height": 41 , "Experience": "NO" , "Guardian(s)": "Gala Dali"]

let  joeKavalier: [String : Any] = ["Name": "Joe Kavalier", "Height": 39 , "Experience": "NO" , "Guardian(s)": "Sam and Elaine Kavalier"]

let  benFinkelstein: [String : Any] = ["Name": "Ben Finkelstein", "Height": 44 , "Experience": "NO" , "Guardian(s)": "Aaron and Jill Finkelstein"]

let  diegoSoto: [String : Any] = ["Name": "Diego Soto", "Height": 41 , "Experience": "YES" , "Guardian(s)": "Robin and Sarika Soto"]

let  chloeAlaska: [String : Any] = ["Name": "Chloe Alaska", "Height": 47 , "Experience": "NO" , "Guardian(s)": "David and Jamie Alaska"]

let  arnoldWillis: [String : Any] = ["Name": "Arnold Willis", "Height": 43 , "Experience": "NO" , "Guardian(s)": "Claire Willis"]

let  phillipHelm: [String : Any] = ["Name": "Phillip Helm", "Height": 44 , "Experience": "YES" , "Guardian(s)": "Thomas Helm and Eva Jones"]

let  lesClay: [String : Any] = ["Name": "Les Clay", "Height": 42 , "Experience": "YES" , "Guardian(s)": "Wynonna Brown"]

let  herschelKrustofski: [String : Any] = ["Name": "Herschel Krustofski", "Height": 45 , "Experience": "YES" , "Guardian(s)": "Hyman and Rachel Krustofski"]

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

/*

//A dictionary collection with the players and their corrosponding heights in inches

let playersHeights: [String: Int] = [
    "Joe Smith": 42 ,
    "Jill Tanner": 36 ,
    "Bill Bon": 43 ,
    "Eva Gordon": 45 ,
    "Matt Gill": 40 ,
    "Kimmy Stein": 41 ,
    "Sammy Adams": 45 ,
    "Karl Saygan": 42 ,
    "Suzane Greenberg": 44 ,
    "Sal Dali": 41 ,
    "Joe Kavalier": 39 ,
    "Ben Finkelstein": 44 ,
    "Diego Soto": 41 ,
    "Chloe Alaska": 47 ,
    "Arnold Willis": 43 ,
    "Phillip Helm": 44 ,
    "Les Clay": 42 ,
    "Herschel Krustofski": 45
]


//To find the average height of all players

var sumOfPlayerHeights: Int = 0

for (players, heights) in playersHeights {
    //I dont know why I have to have an exclamation point
    sumOfPlayerHeights += playersHeights[players]!
    
}

var averageHeightOfPlayers: Int = sumOfPlayerHeights / players.count


*/




/*
 ---------------------------
 Assigning players to teams
 ---------------------------
*/



/*


//Function to Finding the average height of  each Team-------------------------------------------------


func findAverageHeightOfTeam(teamName: [String]) -> Int{
    var sumOfHeights: Int = 0
    
    for (playerWithHeight, height) in playersHeights{
        for player in teamName {
            
            if playerWithHeight == player {sumOfHeights += height}
        }
    }
    
    let averageHeight: Int = sumOfHeights / teamName.count
    return averageHeight
}

//Add first player to each team to begin average height check

for player in playersWithExperience{
    
    switch true {
    case teamSharks.count < 1:
        teamSharks.append(player)
        playersWithExperience.remove(at: 0)
        
    case teamDragons.count < 1:
        teamDragons.append(player)
        playersWithExperience.remove(at: 0)
        
    case teamRaptors.count < 1:
        teamRaptors.append(player)
        playersWithExperience.remove(at: 0)
        
    default: Void()
    }
}

//Create variables that hold each teams average height

var teamSharksAverageHeight: Int = findAverageHeightOfTeam(teamName: teamSharks)
var teamDragonsAverageHeight: Int = findAverageHeightOfTeam(teamName: teamDragons)
var teamRaptorsAverageHeight: Int = findAverageHeightOfTeam(teamName: teamRaptors)

//--------------------------------------------------------------------------------------


 */
 
 
 
 


//Assign players ot teams based on experience

//Perhaps turn these two into one function?


 
 
 for player in playersWithExperience{
 
    switch true {
        
    case teamSharks.count < numberOfExpPlayersPerTeam:
        teamSharks.append(player)
        
        
    case teamDragons.count < numberOfExpPlayersPerTeam:
        teamDragons.append(player)
        
        
    case teamRaptors.count < numberOfExpPlayersPerTeam:
        teamRaptors.append(player)
        
    default: print("I can'put this player anywhere yet")
    }
}

for player in playersWithoutExperience{
    
        switch true {
            
        case teamSharks.count < numberOfPlayersPerTeam:
            teamSharks.append(player)
        
        case teamDragons.count < numberOfPlayersPerTeam:
            teamDragons.append(player)
        
        case teamRaptors.count < numberOfPlayersPerTeam:
            teamRaptors.append(player)
            
        default: print("I can'put this player anywhere yet")
    }
}

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
        
        
        for player in teamSharks{
            if playerNameLabel == "Name"{
                if player == name as! String{
                    letters[player] = "Dear \(playerName["Guardian(s)"] ?? "No Guardians"), We at the Soccer League are happy to notify you that your child \(player) will be playing for Team Sharks. The first practice of the season is March 17, at 3pm. Thank You."
                    print(letters[player] ?? "No Letter")
            
                }
            }
    
        }
        
        
        for player in teamDragons{
            if playerNameLabel == "Name"{
                if player == name as! String{
                    letters[player] = "Dear \(playerName["Guardian(s)"] ?? "No Guardians"), We at the Soccer League are happy to notify you that your child \(player) will be playing for Team Dragons. The first practice of the season is March 17, at 1pm. Thank You."
                    print(letters[player] ?? "No Letter")
                    
                }
            }
            
        }
        
        
        for player in teamRaptors{
            if playerNameLabel == "Name"{
                if player == name as! String{
                    letters[player] = "Dear \(playerName["Guardian(s)"] ?? "No Guardians"), We at the Soccer League are happy to notify you that your child \(player) will be playing for Team Raptors. The first practice of the season is March 18, at 1pm. Thank You."
                    print(letters[player] ?? "No Letter")
                    
                }
            }
            
        }
        
        
        
        
        
        
    }
}






