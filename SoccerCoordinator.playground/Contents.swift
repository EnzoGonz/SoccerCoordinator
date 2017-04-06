
/*
 ---------------------------------------
 Collections of players and teams
 ---------------------------------------
*/


//A dictionary collection with all players information

let players = [
  "Joe Smith" : " Height- 42 , Experience- YES , Guardian(s)- Jim and Jan Smith ",
  "Jill Tanner" : " Height- 36 , Experience- YES , Guardian(s)- Clara Tanner ",
  "Bill Bon" : " Height- 43 , Experience- YES , Guardian(s)- Sara and Jenny Bon ",
  "Eva Gordon" : " Height- 45 , Experience- NO , Guardian(s)- Wendy and Mike Gordon ",
  "Matt Gill" : " Height- 40 , Experience- NO , Guardian(s)- Charles and Sylvia Gill ",
  "Kimmy Stein" : " Height- 41 , Experience- NO , Guardian(s)- Bill and Hillary Stein ",
  "Sammy Adams" : " Height- 45 , Experience- NO , Guardian(s)- Jeff Adams ",
  "Karl Saygan" : " Height- 42 , Experience- YES , Guardian(s)- Heather Bledsoe ",
  "Suzane Greenberg" : " Height- 44 , Experience- YES , Guardian(s)- Henrietta Dumas ",
  "Sal Dali" : " Height- 41 , Experience- NO , Guardian(s)- Gala Dali ",
  "Joe Kavalier" : " Height- 39 , Experience- NO , Guardian(s)- Sam and Elaine Kavalier ",
  "Ben Finkelstein" : " Height- 44 , Experience- NO , Guardian(s)- Aaron and Jill Finkelstein ",
  "Diego Soto" : " Height- 41 , Experience- YES , Guardian(s)- Robin and Sarika Soto ",
  "Chloe Alaska" : " Height- 47 , Experience- NO , Guardian(s)- David and Jamie Alaska ",
  "Arnold Willis" : " Height- 43 , Experience- NO , Guardian(s)- Claire Willis ",
  "Phillip Helm" : " Height- 44 , Experience- YES , Guardian(s)- Thomas Helm and Eva Jones ",
  "Les Clay" : " Height- 42 , Experience- YES , Guardian(s)- Wynonna Brown ",
  "Herschel Krustofski" : " Height- 45 , Experience- YES , Guardian(s)- Hyman and Rachel Krustofski "
]

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



//A dictionary collection with the players and whether they have experience playing soccer

let playersExperience: [String: String] = [
    "Joe Smith": "YES" ,
    "Jill Tanner": "YES" ,
    "Bill Bon": "YES" ,
    "Eva Gordon": "NO" ,
    "Matt Gill": "NO" ,
    "Kimmy Stein": "NO" ,
    "Sammy Adams": "NO" ,
    "Karl Saygan": "YES" ,
    "Suzane Greenberg": "YES" ,
    "Sal Dali": "NO" ,
    "Joe Kavalier": "NO" ,
    "Ben Finkelstein": "NO" ,
    "Diego Soto": "YES" ,
    "Chloe Alaska": "NO" ,
    "Arnold Willis": "NO" ,
    "Phillip Helm": "YES" ,
    "Les Clay": "YES" ,
    "Herschel Krustofski": "YES"
]



//Separating the players that with experience from those without and assign them to a collection

var playersWithExperience: [String] = []
var playersWithoutExperience: [String] = []

for (player, experience) in playersExperience {
    
    if experience == "YES" {playersWithExperience.append(player)
    } else if experience == "NO" {playersWithoutExperience.append(player)}
    
}

//The number of experienced players there should be per team

var numberOfExpPlayersPerTeam: Int = (playersWithExperience.count / allTeams.count)




/*
--------------------------------------
 Finding the average height of players
--------------------------------------
 */



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
    
    sumOfPlayerHeights += playersHeights[players]!
    
}

var averageHeightOfPlayers: Int = sumOfPlayerHeights / players.count







/*
 ---------------------------
 Assigning players to teams
 ---------------------------
*/

for player in playersWithExperience{
    
    switch true {
    case teamSharks.count < numberOfExpPlayersPerTeam: teamSharks.append(player)
    case teamDragons.count < numberOfExpPlayersPerTeam: teamDragons.append(player)
    case teamRaptors.count < numberOfExpPlayersPerTeam: teamRaptors.append(player)
        default: Void()
    }
    
}

for player in playersWithoutExperience{
    
    switch true {
        case (teamSharks.count < numberOfPlayersPerTeam): teamSharks.append(player)
        case (teamRaptors.count < numberOfPlayersPerTeam): teamRaptors.append(player)
        case (teamDragons.count < numberOfPlayersPerTeam): teamDragons.append(player)
            default: Void()
    }


}



//Finding the average height of  each Team


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

var teamSharksAverageHeight: Int = findAverageHeightOfTeam(teamName: teamSharks)
var teamRaptorsAverageHeight: Int = findAverageHeightOfTeam(teamName: teamRaptors)
var teamDragonsAverageHeight: Int = findAverageHeightOfTeam(teamName: teamDragons)




 

 



