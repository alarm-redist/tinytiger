state_lookup <- function(state) {
  st <- data.frame(
    stringsAsFactors = FALSE,
    fips = c("01", "02", "04", "05", "06",
      "08", "09", "10", "11", "12", "13", "15", "16", "17", "18",
      "19", "20", "21", "22", "23", "24", "25", "26", "27",
      "28", "29", "30", "31", "32", "33", "34", "35", "36", "37",
      "38", "39", "40", "41", "42", "44", "45", "46", "47",
      "48", "49", "50", "51", "53", "54", "55", "56", "60", "66",
      "69", "72", "74", "78"),
    abb = c("AL", "AK", "AZ", "AR", "CA",
      "CO", "CT", "DE", "DC", "FL", "GA", "HI", "ID", "IL", "IN",
      "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN",
      "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC",
      "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN",
      "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY", "AS", "GU",
      "MP", "PR", "UM", "VI"),
    name = c("Alabama", "Alaska", "Arizona",
      "Arkansas", "California", "Colorado", "Connecticut",
      "Delaware", "District of Columbia", "Florida", "Georgia",
      "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas",
      "Kentucky", "Louisiana", "Maine", "Maryland",
      "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri",
      "Montana", "Nebraska", "Nevada", "New Hampshire",
      "New Jersey", "New Mexico", "New York", "North Carolina",
      "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania",
      "Rhode Island", "South Carolina", "South Dakota",
      "Tennessee", "Texas", "Utah", "Vermont", "Virginia",
      "Washington", "West Virginia", "Wisconsin", "Wyoming",
      "American Samoa", "Guam", "Northern Mariana Islands", "Puerto Rico",
      "U.S. Minor Outlying Islands", "U.S. Virgin Islands"),
    ansi = c("1779775", "1785533", "1779777",
      "0068085", "1779778", "1779779", "1779780", "1779781",
      "1702382", "0294478", "1705317", "1779782", "1779783",
      "1779784", "0448508", "1779785", "0481813", "1779786",
      "1629543", "1779787", "1714934", "0606926", "1779789",
      "0662849", "1779790", "1779791", "0767982", "1779792",
      "1779793", "1779794", "1779795", "0897535", "1779796", "1027616",
      "1779797", "1085497", "1102857", "1155107", "1779798",
      "1219835", "1779799", "1785534", "1325873", "1779801",
      "1455989", "1779802", "1779803", "1779804", "1779805",
      "1779806", "1779807", "1802701", "1802705", "1779809",
      "1779808", "1878752", "1802710"),
    region = c("South", "West", "West",
      "South", "West", "West", "Northeast", "South", "South", "South",
      "South", "West", "West", "Midwest", "Midwest",
      "Midwest", "Midwest", "South", "South", "Northeast", "South",
      "Northeast", "Midwest", "Midwest", "South", "Midwest",
      "West", "Midwest", "West", "Northeast", "Northeast", "West",
      "Northeast", "South", "Midwest", "Midwest", "South",
      "West", "Northeast", "Northeast", "South", "Midwest", "South",
      "South", "West", "Northeast", "South", "West", "South",
      "Midwest", "West", NA, NA, NA, NA, NA, NA),
    division = c("East South Central", "Pacific",
      "Mountain", "West South Central", "Pacific", "Mountain",
      "New England", "South Atlantic", "South Atlantic",
      "South Atlantic", "South Atlantic", "Pacific", "Mountain",
      "East North Central", "East North Central",
      "West North Central", "West North Central", "East South Central",
      "West South Central", "New England", "South Atlantic",
      "New England", "East North Central", "West North Central",
      "East South Central", "West North Central", "Mountain",
      "West North Central", "Mountain", "New England", "Mid-Atlantic",
      "Mountain", "Mid-Atlantic", "South Atlantic",
      "West North Central", "East North Central", "West South Central",
      "Pacific", "Mid-Atlantic", "New England", "South Atlantic",
      "West North Central", "East South Central",
      "West South Central", "Mountain", "New England", "South Atlantic",
      "Pacific", "South Atlantic", "East North Central",
      "Mountain", NA, NA, NA, NA, NA, NA)
  )

  pos <- tolower(c(st$fips, st$abb, st$name, st$ansi))
  state <- tolower(state)
  state <- vapply(state, function(x) {
    if (nchar(x) == 1) {
      x <- paste0("0", x)
    }
    x
  }, "")
  matched <- pmatch(state, pos, duplicates.ok=FALSE)

  if (length(matched) != length(state) || any(is.na(matched))) {
    cli::cli_abort(c("{.arg state} could not be matched to a state for every entry.",
      "Please supply one of the full name, FIPS code, or postal abbreaviation for each entry."))
  }
  matched <- (matched %% nrow(st))
  matched[matched == 0] <- nrow(st)
  st$fips[matched]
}

all_state_fips <- c("01", "02", "04", "05", "06",
                    "08", "09", "10", "11", "12", "13", "15", "16", "17", "18",
                    "19", "20", "21", "22", "23", "24", "25", "26", "27",
                    "28", "29", "30", "31", "32", "33", "34", "35", "36", "37",
                    "38", "39", "40", "41", "42", "44", "45", "46", "47",
                    "48", "49", "50", "51", "53", "54", "55", "56", "60", "66",
                    "69", "72", "74", "78")

county_lookup <- function(state, counties) {
  st <- get("county_fips_2020")
  st <- st[st$state %in% state, ]

  pos <- tolower(c(st$county, st$name))
  counties <- tolower(counties)

  matched <- pmatch(counties, pos)

  if (length(matched) != length(counties) || any(is.na(matched))) {
    cli::cli_abort(c("{.arg counties} could not be matched to a county for every entry.",
                     ">"="Please supply one of the FIPS code or full name."))
  }
  matched <- (matched %% nrow(st))
  matched[matched == 0] <- nrow(st)
  st$county[matched]
}

county_lookup_all <- function(state) {
  st <- get("county_fips_2020") #tinytiger::county_fips_2020
  st <- st[st$state %in% state, ]
  st$county
}
