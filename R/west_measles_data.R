#' Rates of Measles Vacinations on the West Coast.
#'
#' A dataset of all the measles vaccitaion rates per school in the states: Washington, Oregon, and California. Data collected by the Wall Street Journal, self reported by individual schools. 
#'
#' @format A data frame with 15856 rows and 34 variables:
#' \describe{
#'   \item{index}{An observation ID, assigned to a row}
#'   \item{name}{Name of the school}
#'   \item{state}{State in which the school is located}
#'   \item{city}{The city the school is located in}
#'   \item{county}{The county the school is located in}
#'   \item{mmr}{The measles, the mumps, and the rubella (MMR) vaccination rate for a school}
#'   \item{overall}{A schools overall vaccination rate, including (MMR)}
#'   \item{xmed}{Percent of students excempt from vaccinations for medical reasons}
#'   \item{xrel}{Percent of students excempt from vaccinations for religous reasons}
#'   \item{xper}{Percent of students excempt from vaccinations for personal reasons}
#'   \item{lat}{Latitiude of school}
#'   \item{lng}{Longitude of school}
#'   \item{year}{School year in which the data was collected}
#'   \item{type}{Whether the school is public or private}
#' }
#' @source \url{https://github.com/WSJ/measles-data}
"west_measles_data"