team_reports_sheet <-
  gs_key("1KXhwNLoJTvhHAqIfreogQjp8ZgbcLCuBSpxAol9-iFE",
         visibility = "public")

ACIT_team_reports_df <- gs_read(team_reports_sheet, ws = "Sheet1", check.names = TRUE)
ACIT_team_reports_df$Name <- as.factor(ACIT_team_reports_df$Name)
ACIT_team_reports_df$Category.of.tasks..for.statistical.purposes. <- as.factor(ACIT_team_reports_df$Category.of.tasks..for.statistical.purposes.)
ACIT_team_reports_df$Affiliation..for.statistical.purposes. <- as.factor(ACIT_team_reports_df$Affiliation..for.statistical.purposes.)
ACIT_team_reports_df$Have.you.supported.academic.s..in.writing.a.funding.proposal. <- as.factor(ACIT_team_reports_df$Have.you.supported.academic.s..in.writing.a.funding.proposal.)