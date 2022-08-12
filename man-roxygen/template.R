#' <%=ifelse(exists("state") && state, "@param state FIPs, postal codes, or full name of states.", "") %>
#' <%=ifelse(exists("county") && county, "@param county FIPs codes or full name of counties. Optional.", "") %>
#' <%=ifelse(exists("year") && year, "@param year Integer year. Required. Years < 2012 are not currently supported.", "") %>
