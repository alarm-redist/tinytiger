#' <%=ifelse(exists("state") && state, "@param state FIPS, postal codes, or full names of states.", "") %>
#' <%=ifelse(exists("county") && county, "@param county FIPS codes or full names of counties. Optional.", "") %>
#' <%=ifelse(exists("year") && year, "@param year Integer year. Required. 2000 and 2010-2021 are currently supported.", "") %>
