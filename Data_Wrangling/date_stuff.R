ET6.1 <- rbind(ET6.1_1984_1993, ET6.1_1993_2003, ET6.1_2003_2013,ET6.1_2013_2023)
View(ET6.1)

ET6.1$SampleDate <- as.Date(ET6.1$SampleDate, format="%m/%d/%Y")

ET6.1_plot <- ggplot(ET6.1, aes(x=SampleDate)) + geom_histogram() 
ET6.1_plot

ET6.1_TN.TP.TSS <- filter(ET6.1, Parameter == "TN" | Parameter == "TP" | Parameter == "TSS")
ET6.1_TN.TP.TSS$SampleDate<- as.Date(ET6.1_TN.TP.TSS$SampleDate, format="%m/%d/%Y")
ET6.1_TN.TP.TSS.Processed <- ET6.1_TN.TP.TSS %>%
  select(MonitoringStation, SampleDate, SampleTime, Parameter, MeasureValue, Unit, Latitude, Longitude)

##remove unit column (they're all MG/L)
ET6.1_TN.TP.TSS.Processed <- ET6.1_TN.TP.TSS.Processed %>%
  select(MonitoringStation, SampleDate, SampleTime, Parameter, MeasureValue, Latitude, Longitude)

##pivot wider
ET6.1_TN.TP.TSS.Final <- ET6.1_TN.TP.TSS.Processed %>%
  pivot_wider(names_from = Parameter, 
              values_from = MeasureValue,
              values_fn = mean) 

View(ET6.1_TN.TP.TSS.Final)





WIW0141 <- rbind(WIW0141_1993_2003, WIW0141_2003_2013, WIW0141_2013_2023)
View(WIW0141)
WIW0141$SampleDate <- as.Date(WIW0141$SampleDate, format="%m/%d/%Y")

WIW0141_plot <- ggplot(WIW0141, aes(x=SampleDate)) + geom_histogram() 
WIW0141_plot
