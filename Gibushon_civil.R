
library(readr)
locale("he")

# Before the next column, split the file (in the file itself-not by code) to columns by: Data, Text to Columns...
gibushon_mamda<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/gibushon_mamda_2012_2019.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
gibushon_mamda<-as.data.frame(gibushon_mamda)

colnames(gibushon_mamda)
colnames(gibushon_mamda)[2]<-"personal_number"
colnames(gibushon_mamda)[3]<-"id"

# Criteria.
library(reader)
local("he")
period_eval._2015<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/period_eval._2015.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
period_eval._2017<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/period_eval._2017.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
tkufatit_2014_2015<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/tkufatit_2014_2015.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
tkufatit_2018<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/tkufatit_2018.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
tkufatit_2019<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/tkufatit_2019.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
am_2010<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/soc/am_10zz.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
am_2012<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/soc/am_12zz.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
am_2015<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/soc/am_15zzz.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
am_2018<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Lev/am_2018.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
cf_2010<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/soc/cf_10zz.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
cf_2012<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/soc/cf_12zz.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
cf_2015<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/soc/cf_15zzz.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
cf_2018<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Lev/cf_2018.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colnames(am_2010)<-paste(colnames(am_2010),"am_2010",sep="_")
colnames(am_2012)<-paste(colnames(am_2012),"am_2012",sep="_")
colnames(am_2015)<-paste(colnames(am_2015),"am_2015",sep="_")
colnames(am_2018)<-paste(colnames(am_2018),"am_2018",sep="_")
colnames(cf_2010)<-paste(colnames(cf_2010),"cf_2010",sep="_")
colnames(cf_2012)<-paste(colnames(cf_2012),"cf_2012",sep="_")
colnames(cf_2015)<-paste(colnames(cf_2015),"cf_2015",sep="_")
colnames(cf_2018)<-paste(colnames(cf_2018),"cf_2018",sep="_")
colnames(period_eval._2015)[7]<-"personal_number"
colnames(period_eval._2017)[7]<-"personal_number"
colnames(tkufatit_2014_2015)[1]<-"personal_number"
colnames(tkufatit_2014_2015)[1]<-"personal_number"
colnames(tkufatit_2018)[1]<-"evaluated2018"
colnames(tkufatit_2018)[2]<-"personal_number"
colnames(tkufatit_2018)[3]<-"valid.from.date2018"
colnames(tkufatit_2018)[4]<-"valid.until.date2018"
colnames(tkufatit_2018)[5]<-"form2018"
colnames(tkufatit_2018)[6]<-"key.form2018"
colnames(tkufatit_2018)[7]<-"status2018"
colnames(tkufatit_2018)[8]<-"sub.status2018"
colnames(tkufatit_2018)[9]<-"shoulderrank2018"
colnames(tkufatit_2018)[10]<-"workers.group2018"
colnames(tkufatit_2018)[11]<-"workers.sub.group2018"
colnames(tkufatit_2018)[12]<-"organiztional.unit2018"
colnames(tkufatit_2018)[13]<-"organiztional.level22018"
colnames(tkufatit_2018)[14]<-"direct.commander.score2018"
colnames(tkufatit_2018)[15]<-"apointed.commander.score2018"
colnames(tkufatit_2018)[16]<-"superior.relative.score2018"
colnames(tkufatit_2018)[17]<-"direct.relative.score2018"
colnames(tkufatit_2018)[18]<-"group.size.2018"
colnames(tkufatit_2019)[1]<-"personal_number"
tkufatit_2019[2]<-NULL
colnames(tkufatit_2019)[2]<-"row_score_2019"
colnames(tkufatit_2019)[3]<-"standard_score_2019"
tkufatit_2019[4]<-NULL

library(stringr)
tkufatit_2018[]<-lapply(tkufatit_2018,str_trim)
is.na(tkufatit_2018)<-tkufatit_2018==''

tkufatit_2018$direct.commander.score2018[tkufatit_2018$direct.commander.score2018==0]<-NA
tkufatit_2018$apointed.commander.score2018[tkufatit_2018$apointed.commander.score2018==0]<-NA
tkufatit_2018$group.size.2018[tkufatit_2018$group.size.2018==0]<-NA
tkufatit_2018$final.score.2018<-NA
for(i in 1:nrow(tkufatit_2018)){
  tkufatit_2018[i,]$final.score.2018<-
    ifelse(tkufatit_2018[i,]$status2018=="הושלם",
           ifelse(is.na(tkufatit_2018[i,]$apointed.commander.score2018),tkufatit_2018[i,]$direct.commander.score2018,tkufatit_2018[i,]$apointed.commander.score2018),NA)       
}
# Remove duplicate rows from tkufatit_2018.
n_occur<-data.frame(table(tkufatit_2018$personal_number))
n_occur[n_occur$Freq>1,]
tkufatit_2018<-subset(tkufatit_2018,status2018=="הושלם" & !is.na(final.score.2018))
n_occur<-data.frame(table(tkufatit_2018$personal_number))
n_occur[n_occur$Freq>1,]

# Check duplicate rows on tkufatit_2019.
n_occur<-data.frame(table(tkufatit_2019$personal_number))
n_occur[n_occur$Freq>1,]

colnames(am_2010)[6]<-"personal_number"
colnames(am_2012)[6]<-"personal_number"
colnames(am_2015)[1]<-"personal_number"
colnames(am_2018)[1]<-"personal_number"
colnames(cf_2010)[6]<-"personal_number"
colnames(cf_2012)[6]<-"personal_number"
colnames(cf_2015)[1]<-"personal_number"
colnames(cf_2018)[1]<-"personal_number"

period_eval._2015_2017 <- merge(period_eval._2015, period_eval._2017,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
period_eval._2015_2017_tkufatit_2014_2015 <- merge(period_eval._2015_2017, tkufatit_2014_2015,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
am_2010_2012 <- merge(am_2010, am_2012,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
am_2010_2012_2015 <- merge(am_2010_2012, am_2015,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
am_2010_2012_2015_2018 <- merge(am_2010_2012_2015, am_2018,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
cf_2010_2012 <- merge(cf_2010, cf_2012,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
cf_2010_2012_2015 <- merge(cf_2010_2012, cf_2015,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
cf_2010_2012_2015_2018 <- merge(cf_2010_2012_2015, cf_2018,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
am_cf <- merge(am_2010_2012_2015_2018, cf_2010_2012_2015_2018,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
period_eval._2015_2017_tkufatit_2014_2015_am_cf <- merge(period_eval._2015_2017_tkufatit_2014_2015,am_cf,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
criteria_merged_1<-merge(period_eval._2015_2017_tkufatit_2014_2015_am_cf,tkufatit_2018,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
criteria_merged<-merge(criteria_merged_1,tkufatit_2019,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)

for(i in 1:ncol(criteria_merged)){
  colnames(criteria_merged)[i]<-gsub(".x","2015",colnames(criteria_merged)[i])}
for(i in 1:ncol(criteria_merged)){
  colnames(criteria_merged)[i]<-gsub(".y","2017",colnames(criteria_merged)[i])}
for(i in 1:ncol(criteria_merged)){
  colnames(criteria_merged)[i]<-gsub("קב'","קב",colnames(criteria_merged)[i])}
for(i in 1:ncol(criteria_merged)){
  colnames(criteria_merged)[i]<-gsub("מ\"א","מא",colnames(criteria_merged)[i])}

# Remove checkmark form dplyr package, because it's in conflict with plyr.*********

# library (plyr)
# 
# 
# criteria_merged<-rename(criteria_merged,c("מעריך2015"="evaluator2015","עובד מעריך - מא2015"="worker.evaluator.p.n2015",
#                                           "יחידה מעריך2015"="unit.evaluator2015", "מעריך נוסף2015"="additional.evaluator2015",
#                                           "מעריך נוסף - מא2015"="additional.evaluator.p.n2015",
#                                           "מוערך2015"="evaluated2015","תקף מתאריך2015"="valid.from.date.2015",
#                                           "תקף עד תאריך2015"="valid.until.date.2015","טופס2015"="form2015",
#                                           "טופס - מפתח2015"="keyform2015","סטטוס2015"="status2015","תת-סטטוס2015"="substatus2015",
#                                           "דרגה כתף2015"="shoulderrank2015","קב עובדים2015"="workers.group2015",
#                                           "תת קבוצה עובדים2015"="workers.sub.group2015","יחידה ארגונית2015"="organizational.unit2015",
#                                           "רמה אירגונית 22015"="organizational.level2015","רמה היררכית 032015"="hirarchic.level032015",
#                                           "רמה היררכית 052015"="hirarchic.level052015","רמה היררכית 042015"="hirarchic.level042015",
#                                           "ציון מפקד ישיר2015"="direct.commander.score2015", "ציון מפקד ממונה2015"="apointed.commander.score2015",
#                                           "ציון יחסי ממונה2015"="superior.relative.score2015",
#                                           "ציון יחסי ישיר2015"="direct.relative.score2015", "גודל קבוצה2015"="group.size.2015",
#                                           "ציון סופי2015"="final.score.2015",
#                                           "מעריך2017"="evaluator2017","2017מעריך נוסף - מא"="worker.evaluator.p.n.2017",
#                                           "יחידה מעריך2017"="unit.evaluator2017","מעריך נוסף2017"="additional.evaluator2017",
#                                           "מעריך נוסף - מא2017"="additional.evaluator.p.n2017",
#                                           "מוערך2017"="evaluated2017","תקף מתאריך2017"="valid.from.date.2017",
#                                           "תקף עד תאריך2017"="valid.until.date.2017","טופס2017"="form2017",
#                                           "טופס - מפתח2017"="keyform2017","סטטוס2017"="status2017","תת-סטטוס2017"="substatus2017",
#                                           "דרגה כתף2017"="shoulderrank2017","קב עובדים2017"="workers.group2017",
#                                           "תת קבוצה עובדים2017"="workers.sub.group2017","יחידה ארגונית2017"="organizational.unit2017",
#                                           "רמה אירגונית 22017"="organizational.level2017","רמה היררכית032017"="hirarchic.level032017",
#                                           "רמה היררכית 052017"="hirarchic.level052017","רמה היררכית 042017"="hirarchic.level042017",
#                                           "ציון מפקד ישיר2017"="direct.commander.score2017", "ציון מפקד ממונה2017"="apointed.commander.score2017",
#                                           "ציון יחסי ממונה2017"="superior.relative.score2017",
#                                           "ציון יחסי ישיר2017"="direct.relative.score2017", "גודל קבוצה2017"="group.size.2017",
#                                           "ציון סופי2017"="final.score.2017",
#                                           "kod2017ehidat_al_am_2015"="kodyehidat_al_am_2015","shem2017ehidat_al_am_2015"="shemyehidat_al_am_2015",
#                                           "m2017uhedet_am_2015"="myuhedet_am_2015","sd_mist2017en_am_2015"="sd_mistyen_am_2015",
#                                           "metuknan_mist2017en_am_2015"="metuknan_mistyen_am_2015","memusa_kvusa_mist2017en_am_2015"="memusa_kvusa_mistyen_am_2015",
#                                           "sd_kvusa_mist2017en_am_2015"="sd_kvusa_mistyen_am_2015"))

library(data.table)

criteria_merged<-setnames(criteria_merged,old = c('מעריך2015',
                                                  'עובד מעריך - מא2015',
                                                  'יחידה מעריך2015',
                                                  'מעריך נוסף2015',
                                                  'מעריך נוסף - מא2015',
                                                  'מוערך2015',
                                                  'תקף מתאריך2015',
                                                  'תקף עד תאריך2015',
                                                  'טופס2015',
                                                  'טופס - מפתח2015',
                                                  'סטטוס2015',
                                                  'תת סטטוס2015',
                                                  'דרגה כתף2015',
                                                  'קב עובדים2015',
                                                  'תת קבוצה עובדים2015',
                                                  'יחידה ארגונית2015',
                                                  'רמה אירגונית 22015',
                                                  'רמה היררכית 032015',
                                                  'רמה היררכית 042015',
                                                  'רמה היררכית 052015',
                                                  'ציון מפקד ישיר2015',
                                                  'ציון מפקד ממונה2015',
                                                  'ציון יחסי ישיר2015',
                                                  'ציון יחסי ממונה2015',
                                                  'גודל קבוצה2015',
                                                  'ציון סופי2015',
                                                  'מעריך2017',
                                                  'עובד מעריך - מא2017',
                                                  'יחידה מעריך2017',
                                                  'מעריך נוסף2017',
                                                  'מעריך נוסף - מא2017',
                                                  'מוערך2017',
                                                  'תקף מתאריך2017',
                                                  'תקף עד תאריך2017',
                                                  'טופס2017',
                                                  'טופס - מפתח2017',
                                                  'סטטוס2017',
                                                  'תת-סטטוס2017',
                                                  'דרגה כתף2017',
                                                  'קב עובדים2017',
                                                  'תת קבוצה עובדים2017',
                                                  'יחידה ארגונית2017',
                                                  'רמה אירגונית 22017',
                                                  'רמה היררכית 032017',
                                                  'רמה היררכית 042017',
                                                  'רמה היררכית 052017',
                                                  'ציון מפקד ישיר2017',
                                                  'ציון מפקד ממונה2017',
                                                  'ציון יחסי ממונה2017',
                                                  'ציון יחסי ישיר2017',
                                                  'גודל קבוצה2017',
                                                  'ציון סופי2017'),
                          new=c('evaluator2015',
                                'worker.evaluator.p.n2015',
                                'unit.evaluator2015',
                                'additional.evaluator2015',
                                'additional.evaluator.p.n2015',
                                'evaluated2015',
                                'valid.from.date.2015',
                                'valid.until.date.2015',
                                'form2015',
                                'keyform2015',
                                'status2015',
                                'substatus2015',
                                'shoulderrank2015',
                                'workers.group2015',
                                'workers.sub.group2015',
                                'organizational.unit2015',
                                'organizational.level2015',
                                'hirarchic.level032015',
                                'hirarchic.level042015',
                                'hirarchic.level052015',
                                'direct.commander.score2015',
                                'apointed.commander.score2015',
                                'direct.relative.score2015',
                                'superior.relative.score2015',
                                'group.size.2015',
                                'final.score.2015',
                                'evaluator2017',
                                'worker.evaluator.p.n.2017',
                                'unit.evaluator2017',
                                'additional.evaluator2017',
                                'additional.evaluator.p.n2017',
                                'evaluated2017',
                                'valid.from.date2017',
                                'valid.until.date2017',
                                'form2017',
                                'keyform2017',
                                'status2017',
                                'substatus2017',
                                'shoulderrank2017',
                                'workers.group2017',
                                'workers.sub.group2017',
                                'organizational.unit2017',
                                'organizational.level2017',
                                'hirarchic.level032017',
                                'hirarchic.level042017',
                                'hirarchic.level052017',
                                'direct.commander.score2017',
                                'apointed.commander.score2017',
                                'superior.relative.score2017',
                                'direct.relative.score2017',
                                'group.size.2017',
                                'final.score.2017'),skip_absent=TRUE)


criteria_merged$TaarichHavara_am_2015<-as.Date(criteria_merged$TaarichHavara_am_2015,format="%d/%m/%Y")
criteria_merged$TaarichHavara_cf_2015<-as.Date(criteria_merged$TaarichHavara_cf_2015,format="%d/%m/%Y")

#Remove duplicate rows from criteria_merged.
n_occur<-data.frame(table(criteria_merged$personal_number))
n_occur[n_occur$Freq>1,]
criteria_merged <- criteria_merged[!duplicated(criteria_merged[,c("personal_number")]),]
n_occur<-data.frame(table(criteria_merged$personal_number))
n_occur[n_occur$Freq>1,]

# Merge predictors and criteria
all_policemen_07.04.2021<-read_csv("Q:/04_Mehkar/18_asher/all_policemen_07.04.2021.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colnames(all_policemen_07.04.2021)[1] <- "personal_number"
colnames(all_policemen_07.04.2021)[2] <- "id"
colnames(all_policemen_07.04.2021)[6] <- "job"
colnames(all_policemen_07.04.2021)[8] <- "gender"
colnames(all_policemen_07.04.2021)[30] <- "job_date"

# The next change was done manually in the file because it takes very long time.
# for(i in 1:nrow(all_policemen_07.04.2021)){
#   all_policemen_07.04.2021[i,]$job_date<-gsub("9999","2020",all_policemen_07.04.2021[i,]$job_date)}

n_occur<-data.frame(table(all_policemen_07.04.2021$id))
n_occur[n_occur$Freq>1,]
class(all_policemen_07.04.2021$job_date)
all_policemen_07.04.2021$job_date<-as.Date(as.character(all_policemen_07.04.2021$job_date),format="%d/%m/%Y")
library (data.table)
all_policemen_07.04.2021<-setDT(all_policemen_07.04.2021)[,.SD[which.max(job_date)],keyby=id]
n_occur<-data.frame(table(all_policemen_07.04.2021$id))
n_occur[n_occur$Freq>1,]

library(dplyr)
filtered_all_policemen_07.04.2021 <- all_policemen_07.04.2021 %>%
  select (personal_number,id,gender,job)

sum(is.na(criteria_merged$personal_number))

filtered_criteria_merged=criteria_merged%>%
  filter(!is.na(personal_number))

criteria_merged_all_policemen<-merge(filtered_criteria_merged,filtered_all_policemen_07.04.2021,by=c("personal_number"), all.x=T, all.y=F,sort = FALSE)
nrow(criteria_merged_all_policemen)
sum(!is.na(criteria_merged_all_policemen$id))
class(criteria_merged_all_policemen$id)
# criteria_merged_all_policemen$id<-as.numeric(criteria_merged_all_policemen$id)
class(criteria_merged_all_policemen$id)
class(gibushon_mamda$id)
# gibushon_mamda$id<-as.numeric(gibushon_mamda$id)
criteria_merged_all_policemen$personal_number<-NULL

gibushon_mamda_criteria <- merge(gibushon_mamda, criteria_merged_all_policemen,by=c("id"), all.x=T, all.y=F,sort = FALSE)
gibushon_mamda_criteria<-as.data.frame(gibushon_mamda_criteria)

# Check duplicate rows in gibushon_mamda_criteria.
n_occur<-data.frame(table(gibushon_mamda_criteria$id))
n_occur[n_occur$Freq>1,]
class(gibushon_mamda_criteria$GibDate)
gibushon_mamda_criteria$GibDate<-as.Date(as.character(gibushon_mamda_criteria$GibDate),format="%d/%m/%Y")
library (data.table)
gibushon_mamda_criteria<-setDT(gibushon_mamda_criteria)[,.SD[which.max(GibDate)],keyby=id]
n_occur<-data.frame(table(gibushon_mamda_criteria$id))
n_occur[n_occur$Freq>1,]

# Clean gibushon_mamda_criteria file from erroneous data.
gibushon_mamda_criteria$direct.commander.score2015[gibushon_mamda_criteria$direct.commander.score2015==0]<-NA
gibushon_mamda_criteria$apointed.commander.score2015[gibushon_mamda_criteria$apointed.commander.score2015==0]<-NA
gibushon_mamda_criteria$group.size.2015[gibushon_mamda_criteria$group.size.2015==0]<-NA
gibushon_mamda_criteria$final.score.2015[gibushon_mamda_criteria$final.score.2015==0]<-NA
gibushon_mamda_criteria$direct.commander.score2017[gibushon_mamda_criteria$direct.commander.score2017==0]<-NA
gibushon_mamda_criteria$apointed.commander.score2017[gibushon_mamda_criteria$apointed.commander.score2017==0]<-NA
gibushon_mamda_criteria$group.size.2017[gibushon_mamda_criteria$group.size.2017==0]<-NA
gibushon_mamda_criteria$final.score.2017[gibushon_mamda_criteria$final.score.2017==0]<-NA

# Locating and handling criteria that their dates are before/not enough after the appointment date.
# gibushon_mamda_criteria$GibDate<-as.Date(unlist(gibushon_mamda_criteria$GibDate),format="%d/%m/%Y")
gibushon_mamda_criteria$date.tkufatit_14<-"26/01/2015"
gibushon_mamda_criteria$date.tkufatit_14<-as.Date(unlist(gibushon_mamda_criteria$date.tkufatit_14),format="%d/%m/%Y")
gibushon_mamda_criteria$date.tkufatit_15<-"01/06/2016"
gibushon_mamda_criteria$date.tkufatit_15<-as.Date(gibushon_mamda_criteria$date.tkufatit_15,format="%d/%m/%Y")
gibushon_mamda_criteria$date.period.eval.2015<-"01/12/2015"
gibushon_mamda_criteria$date.period.eval.2015<-as.Date(gibushon_mamda_criteria$date.period.eval.2015,format="%d/%m/%Y")
gibushon_mamda_criteria$date.period.eval.2017<-"01/05/2017"
gibushon_mamda_criteria$date.period.eval.2017<-as.Date(gibushon_mamda_criteria$date.period.eval.2017,format="%d/%m/%Y")
gibushon_mamda_criteria$date.period.eval.2018<-"31/12/2018"
gibushon_mamda_criteria$date.period.eval.2018<-"31/12/2018"
gibushon_mamda_criteria$date.tkufatit_2019<-"30/05/2019"
gibushon_mamda_criteria$date.period.eval.2018<-as.Date(gibushon_mamda_criteria$date.period.eval.2018,format="%d/%m/%Y")
gibushon_mamda_criteria$TaarichHavara_am_2010<-as.Date(unlist(gibushon_mamda_criteria$TaarichHavara_am_2010),format="%d/%m/%Y")
gibushon_mamda_criteria$TaarichHavara_am_2012<-as.Date(unlist(gibushon_mamda_criteria$TaarichHavara_am_2012),format="%d/%m/%Y")
gibushon_mamda_criteria$TaarichHavara_am_2015<-as.Date(unlist(gibushon_mamda_criteria$TaarichHavara_am_2015),format="%d/%m/%Y")
gibushon_mamda_criteria$TaarichHavara_am_2018<-as.Date(unlist(gibushon_mamda_criteria$TaarichHavara_am_2018),format="%d/%m/%Y")
gibushon_mamda_criteria$TaarichHavara_cf_2010<-as.Date(unlist(gibushon_mamda_criteria$TaarichHavara_cf_2010),format="%d/%m/%Y")
gibushon_mamda_criteria$TaarichHavara_cf_2012<-as.Date(unlist(gibushon_mamda_criteria$TaarichHavara_cf_2012),format="%d/%m/%Y")
gibushon_mamda_criteria$TaarichHavara_cf_2015<-as.Date(unlist(gibushon_mamda_criteria$TaarichHavara_cf_2015),format="%d/%m/%Y")
names(gibushon_mamda_criteria)[names(gibushon_mamda_criteria)=="tarich_cf_2018"]<-"TaarichHavara_cf_2018"
gibushon_mamda_criteria$TaarichHavara_cf_2018<-as.Date(unlist(gibushon_mamda_criteria$TaarichHavara_cf_2018),format="%d/%m/%Y")
gibushon_mamda_criteria$date.tkufatit_2019<-as.Date(unlist(gibushon_mamda_criteria$date.tkufatit_2019),format="%d/%m/%Y")

gibushon_mamda_criteria<-as.data.frame(gibushon_mamda_criteria)

library(dplyr)
gibushon_mamda_criteria = gibushon_mamda_criteria %>%
  rowwise() %>%
  mutate(date.tkufatit_14_diff = date.tkufatit_14-GibDate,
         date.tkufatit_15_diff = date.tkufatit_15-GibDate,
         date.period.eval.2015_diff = date.period.eval.2015-GibDate,
         date.period.eval.2017_diff = date.period.eval.2017-GibDate,
         date.period.eval.2018_diff = date.period.eval.2018-GibDate,
         TaarichHavara_am_2010_diff = TaarichHavara_am_2010-GibDate,
         TaarichHavara_am_2012_diff = TaarichHavara_am_2012-GibDate,
         TaarichHavara_am_2015_diff = TaarichHavara_am_2015-GibDate,
         TaarichHavara_am_2018_diff = TaarichHavara_am_2018-GibDate,
         TaarichHavara_cf_2010_diff = TaarichHavara_cf_2010-GibDate,
         TaarichHavara_cf_2012_diff = TaarichHavara_cf_2012-GibDate,
         TaarichHavara_cf_2015_diff = TaarichHavara_cf_2015-GibDate,
         TaarichHavara_cf_2018_diff = TaarichHavara_cf_2018-GibDate,
         date.tkufatit_2019_diff = date.tkufatit_2019-GibDate)

#RAMA
rama_2012_2019<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/rama_2012_2019.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colnames(rama_2012_2019)[2] <- "id"
colnames(rama_2012_2019)[4] <- "rama_gender"
colnames(rama_2012_2019)[5] <- "rama_religion"
colnames(rama_2012_2019)[7] <- "rama_age"
colnames(rama_2012_2019)[8] <- "rama_date"
colnames(rama_2012_2019)[10] <- "rama_score"

class(gibushon$rama_age)
gibushon$rama_age<-as.numeric(gibushon$rama_age)
class(gibushon$rama_score)
gibushon$rama_score<-as.numeric(gibushon$rama_score)

n_occur<-data.frame(table(rama_2012_2019$id))
n_occur[n_occur$Freq>1,]
class(rama_2012_2019$rama_date)
rama_2012_2019$rama_date<-as.Date(as.character(rama_2012_2019$rama_date),format="%d/%m/%Y")

library (data.table)

rama_2012_2019<-setDT(rama_2012_2019)[,.SD[which.min(rama_date)],keyby=id]#usually which.max
n_occur<-data.frame(table(rama_2012_2019$id))
n_occur[n_occur$Freq>1,]

class(rama_2012_2019$id)
rama_2012_2019$id<-as.numeric(rama_2012_2019$id)
class(gibushon_mamda_criteria$id)
gibushon_mamda_criteria_rama <- merge(gibushon_mamda_criteria, rama_2012_2019,by=c("id"), all.x=T, all.y=F,sort = FALSE)
gibushon_mamda_criteria_rama<-as.data.frame(gibushon_mamda_criteria_rama)

#check candidates that don't have rama_score
# library(dplyr)
# gibushon_miissing_rama=gibushon%>%
#   filter(is.na(rama_score))%>%
#   select(id,rama_score,FirstName,LastName)
# write_excel_csv(gibushon_miissing_rama,"Q:/04_Mehkar/18_asher/gibushon/gibushon_miissing_rama.csv")

#eq
eq_2016<-read_csv("Q:/04_Mehkar/18_asher/Mokdanim/eq_2016.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
eq_2017<-read_csv("Q:/04_Mehkar/18_asher/Mokdanim/eq_2017.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
eq_2018<-read_csv("Q:/04_Mehkar/18_asher/Mokdanim/eq_2018.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
eq_2019<-read_csv("Q:/04_Mehkar/18_asher/Mokdanim/eq_2019.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
eq_10092020<-read_csv("Q:/04_Mehkar/18_asher/Mokdanim/eq_10092020.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))

eq <- rbind(eq_2016,eq_2017,eq_2018,eq_2019,eq_10092020)

colnames(eq)[1] <- "id"
colnames(eq)[2] <- "second_name"
colnames(eq)[3] <- "first_name"
colnames(eq)[4] <- "eq_test_date"
colnames(eq)[5] <- "eq"

eq$eq_test_date<-as.Date(as.character(eq$eq_test_date),format="%d/%m/%Y")

eq<-eq[!is.na(eq$eq),]

n_occur<-data.frame(table(eq$id))
n_occur[n_occur$Freq>1,]
library (data.table)
eq<-setDT(eq)[,.SD[which.max(eq_test_date)],keyby=id]
n_occur<-data.frame(table(eq$id))
n_occur[n_occur$Freq>1,]

eq_filtered=eq%>%
  select(id,eq)

gibushon_mamda_criteria_rama_eq <- merge(gibushon_mamda_criteria_rama,eq_filtered,by=c("id"), all.x=T, all.y=F,sort = FALSE)
nrow(gibushon_mamda_criteria_rama_eq)
sum(!is.na(gibushon_mamda_criteria_rama_eq$eq))

#colors
colors_2012<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/colors_2012.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colors_2013<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/colors_2013.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colors_2014<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/colors_2014.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colors_2015<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/colors_2015.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colors_2016<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/colors_2016.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colors_2017<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/colors_2017.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colors_2018<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/colors_2018.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colors_2019<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/colors_2019.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))

library(plyr)
colors <- rbind.fill(colors_2012,colors_2013,colors_2014,colors_2015,colors_2016,colors_2017,colors_2018,colors_2019)

colnames(colors)[1] <- "id"
colnames(colors)[2] <- "first_name"
colnames(colors)[3] <- "second_name"
colnames(colors)[4] <- "colors_test_date"
colnames(colors)[5] <- "colors"

colors<-colors[!is.na(colors$colors),]

class (colors$colors_test_date)
colors<-data.frame(lapply(colors,function(x) {gsub("ינו","01",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("פבר","02",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("מרץ","03",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("אפר","04",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("מאי","05",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("יונ","06",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("יול","07",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("אוג","08",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("ספט","09",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("אוק","10",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("נוב","11",x)}))
colors<-data.frame(lapply(colors,function(x) {gsub("דצמ","12",x)}))

library(data.table)
colors$colors_test_date<-as.Date(as.character(colors$colors_test_date),format="%d-%m-%y")
class (colors$colors_test_date)

n_occur<-data.frame(table(colors$id))
n_occur[n_occur$Freq>1,]
library (data.table)
colors<-setDT(colors)[,.SD[which.max(colors_test_date)],keyby=id]
n_occur<-data.frame(table(colors$id))
n_occur[n_occur$Freq>1,]

library(dplyr)
colors_filtered=colors%>%
  select(id,colors)

gibushon_mamda_criteria_rama_eq_colors <- merge(gibushon_mamda_criteria_rama_eq,colors_filtered,by=c("id"), all.x=T, all.y=F,sort = FALSE)
nrow(gibushon_mamda_criteria_rama_eq_colors)
sum(!is.na(gibushon_mamda_criteria_rama_eq_colors$colors))

#decision
decision_2012<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/decision_2012.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
decision_2013<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/decision_2013.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
decision_2014<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/decision_2014.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
decision_2015<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/decision_2015.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
decision_2016<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/decision_2016.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
decision_2017<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/decision_2017.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
decision_2018<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/decision_2018.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
decision_2019<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/decision_2019.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))

decision <- rbind(decision_2012,decision_2013,decision_2014,decision_2015,decision_2016,decision_2017,decision_2018,decision_2019)

colnames(decision)[1] <- "id"
colnames(decision)[2] <- "first_name"
colnames(decision)[3] <- "second_name"
colnames(decision)[4] <- "decision_test_date"
colnames(decision)[5] <- "decision"

class (decision$decision_test_date)
library(data.table)
decision$decision_test_date<-as.Date(as.character(decision$decision_test_date),format="%d-%m-%y")
class (decision$decision_test_date)

decision<-decision[!is.na(decision$decision),]

n_occur<-data.frame(table(decision$id))
n_occur[n_occur$Frdecision>1,]
# library (data.table)
# decision<-setDT(decision)[,.SD[which.max(decision_test_date)],keyby=id]
# n_occur<-data.frame(table(decision$id))
# n_occur[n_occur$Frdecision>1,]

decision_filtered=decision%>%
  select(id,decision)

gibushon_mamda_criteria_rama_eq_colors_decision <- merge(gibushon_mamda_criteria_rama_eq_colors,decision_filtered,by=c("id"), all.x=T, all.y=F,sort = FALSE)
nrow(gibushon_mamda_criteria_rama_eq_colors_decision)
sum(!is.na(gibushon_mamda_criteria_rama_eq_colors_decision$decision))

#EichutGrade_components
EichutGrade_components<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/EichutGrade_components.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colnames(EichutGrade_components)[1] <- "id"
colnames(EichutGrade_components)[2] <- "EichutGrade_components_GibDate"
colnames(EichutGrade_components)[3] <- "commander"
colnames(EichutGrade_components)[4] <- "behavior_old"
colnames(EichutGrade_components)[5] <- "behavior_new"
colnames(EichutGrade_components)[6] <- "combat"

n_occur<-data.frame(table(EichutGrade_components$id))
n_occur[n_occur$Freq>1,]
EichutGrade_components<-EichutGrade_components[!duplicated(EichutGrade_components$id),]
n_occur<-data.frame(table(EichutGrade_components$id))
n_occur[n_occur$Freq>1,]

library(dplyr)
EichutGrade_components_filtered=EichutGrade_components%>%
  select(id,commander,behavior_old,behavior_new,combat)

class(EichutGrade_components_filtered$id)
EichutGrade_components_filtered$id<-as.numeric(EichutGrade_components_filtered$id)
class(gibushon_mamda_criteria_rama_eq_colors_decision$id)
gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components <- merge(gibushon_mamda_criteria_rama_eq_colors_decision, EichutGrade_components_filtered,by=c("id"), all.x=T, all.y=F,sort = FALSE)

#Quit
quit<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/quit.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colnames(quit)[2] <- "id"
colnames(quit)[15] <- "action"
colnames(quit)[16] <- "action_code"
colnames(quit)[17] <- "action_reason"
colnames(quit)[18] <- "action_start_date"
colnames(quit)[19] <- "action_end_date"

n_occur<-data.frame(table(quit$id))
n_occur[n_occur$Freq>1,]

class (quit$action_start_date)
quit$action_start_date<-as.Date(as.character(quit$action_start_date),format="%d/%m/%Y")
class (quit$action_start_date)
class (quit$action_end_date)
quit$action_end_date<-as.Date(as.character(quit$action_end_date),format="%d/%m/%Y")
class (quit$action_end_date)

n_occur<-data.frame(table(quit$id))
n_occur[n_occur$Freq>1,]
library (data.table)
quit<-setDT(quit)[,.SD[which.max(action_start_date)],keyby=id]
n_occur<-data.frame(table(quit$id))
n_occur[n_occur$Freq>1,]n_occur[n_occur$Freq>1,]

quit$action_end_date<-data.frame(lapply(quit$action_end_date,function(x) {gsub("9999","2021",x)}))

library(dplyr)
quit_filtered=quit%>%
  select(id,action_reason)

class(quit_filtered$id)
quit_filtered$id<-as.numeric(quit_filtered$id)
class(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components$id)
gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit <- merge(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components,quit_filtered,by=c("id"), all.x=T, all.y=F,sort = FALSE)
gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit<-as.data.frame(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit)

gibushon<-gibushon_mamda_criteria_rama_eq_quit_decision_EichutGrade_components_quit

#Remove spaces.

library(stringr)
gibushon[]<-lapply(gibushon,str_trim)
is.na(gibushon)<-gibushon==''

class(gibushon)

gibushon <- as.data.frame(gibushon)

# ***************** From here the processing was done on the civil PC. **********************

# Use it to parse output CSV files from R: 
# https://superuser.com/questions/407082/easiest-way-to-open-csv-with-commas-in-excel

library(readr)
locale("he")
# Importing the data
gibushon_civil<-read_csv("C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil.csv",locale = locale(date_names = "he", encoding = "UTF-8"))
# gibushon_civil<-gibushon_civil[-1]

class(gibushon_civil)

gibushon_civil<-as.data.frame(gibushon_civil)

colnames(gibushon_civil)

# Remove Checkmark form dplyr package, because it's in conflict with plyr.*********
# With complicated packages that load S4 classes & methods, detach command is not 
# guaranteed to restore everything to exactly the state before the package was loaded.******

library (plyr)
gibushon_civil<-rename(gibushon_civil,c("Mazav0"="power",
                                        "Mazav2"="investment",
                                        "Mazav3"="HR",
                                        "Mazav4"="confidence",
                                        "Mazav5"="expression",
                                        "Mazav7"= "thinking",
                                        "Mazav8"="execution"))

library(stringr)

gibushon_civil$gender <- str_replace_all(gibushon_civil$gender, c("זכר" = "male", "נקבה" = "female"))
gibushon_civil$rama_gender <- str_replace_all(gibushon_civil$rama_gender, c("זכר" = "male", "נקבה" = "female"))
gibushon_civil$gender<-ifelse(!is.na(gibushon_civil$gender),gibushon_civil$gender,gibushon_civil$rama_gender)
gibushon_civil$job <- str_replace_all(gibushon_civil$job, c("זכר" = "male", "נקבה" = "female"))
gibushon_civil$job[grep("תנועה", gibushon_civil$job)] <- "traffic"
gibushon_civil$job[grep("סייר", gibushon_civil$job)] <- "patrol"
gibushon_civil$job[grep("סיור", gibushon_civil$job)] <- "patrol"
gibushon_civil$job[grep("חוקר", gibushon_civil$job)] <- "inspector"
gibushon_civil$job[grep("חקירות", gibushon_civil$job)] <- "inspector"
gibushon_civil$job[grep("בלש", gibushon_civil$job)] <- "detective"
gibushon_civil$job[grep("בילוש", gibushon_civil$job)] <- "detective"
gibushon_civil$job[grep("יס'מ", gibushon_civil$job)] <- "yasam"
gibushon_civil$job[grep("ימ'ס", gibushon_civil$job)] <- "yamas"
gibushon_civil$job[grep("ימ'מ", gibushon_civil$job)] <- "yamam"
gibushon_civil$job[grep("מודיעין", gibushon_civil$job)] <- "inteligence"
gibushon_civil$job[grep("לוחם", gibushon_civil$job)] <- "soldier"
gibushon_civil$job[grep("מוקד", gibushon_civil$job)] <- "call_center"
gibushon_civil$job[grep("קצין מרכז שליטה", gibushon_civil$job)] <- "call_center"
gibushon_civil$job[grep("יומנאי", gibushon_civil$job)] <- "diary_keeper"
gibushon_civil$job[grep("עובד נוער", gibushon_civil$job)] <- "youth_worker"
gibushon_civil$job[grep("מפקד", gibushon_civil$job)] <- "commander"
gibushon_civil$job[grep("ראש", gibushon_civil$job)] <- "commander"
gibushon_civil$job[grep("קצין", gibushon_civil$job)] <- "officer"
gibushon_civil$job[grep("עובד", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("רכז", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("מש'ק", gibushon_civil$job)] <- "other"
gibushon_civil$job<-str_replace_all(gibushon_civil$job, "[[:punct:]]", " ")
gibushon_civil$job[grep("מש ק", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("תובע", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("זקיף", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("סטודנט", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("מדריך", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("מפעיל", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("שוטר", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("סמל", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("טכנאי", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("מחסנאי", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("חבלן", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("חשמלאי מבנים", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("טבח", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("טוען מעצרים", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("טירון חובה", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("מאבחן", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("מזכירה כתבנית", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("מטפל בע ח", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("מנהל מערכת", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("נגד", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("נהג", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("נוהג", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("עו ס", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("פקיד", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("צוערי", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("שולט", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("שומר", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("שח ם", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("שת מ", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("תחקירן", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("ארוך", gibushon_civil$job)] <- "other"
gibushon_civil$job[grep("סופרוויזר", gibushon_civil$job)] <- "other"
gibushon_civil$rama_religion[grep("אחר", gibushon_civil$rama_religion)] <- "other"
gibushon_civil$rama_religion[grep("בדואי", gibushon_civil$rama_religion)] <- "Bedouin"
gibushon_civil$rama_religion[grep("דרוזי", gibushon_civil$rama_religion)] <- "Druze"
gibushon_civil$rama_religion[grep("יהודי", gibushon_civil$rama_religion)] <- "Jewish"
gibushon_civil$rama_religion[grep("מוסלמי", gibushon_civil$rama_religion)] <- "Moslem"
gibushon_civil$rama_religion[grep("נוצרי", gibushon_civil$rama_religion)] <- "Christian"
gibushon_civil$rama_religion[grep("צ'רקסי", gibushon_civil$rama_religion)] <- "Circassian"
gibushon_civil$commander <- str_replace_all(gibushon_civil$commander, c("לא ידוע" = NA, "לא מפקד" = "not commander", "מפקד" = "commander"))
gibushon_civil$behavior_old<-str_replace_all(gibushon_civil$behavior_old, "[[:punct:]]", " ")
gibushon_civil$behavior_new<-str_replace_all(gibushon_civil$behavior_new, "[[:punct:]]", " ")
gibushon_civil$behavior_old <- str_replace_all(gibushon_civil$behavior_old, c("אינה מניחה את הדעת" = "1",
                                                                               "כט מ" = "5",
                                                                               "ט מ" = "6",
                                                                               "כמעט טובה מאוד" = "5",
                                                                               "טובה מאוד" = "6",
                                                                               "כמעט טובה" = "3",
                                                                               "טובה" = "4",
                                                                               "לא ידוע" = NA,
                                                                               "מניחה את הדעת" = "2",
                                                                               "שירתתתי בקבע קצין" = "7"))

gibushon_civil$behavior_new <- str_replace_all(gibushon_civil$behavior_new, c("אינה מניחה את הדעת" = "1",
                                                                              "ט מ" = "5",
                                                                              "טובה מאוד" = "5",
                                                                              "מספקת" = "3",
                                                                              "טובה" = "4",
                                                                              "ראויה לציון" = "6",
                                                                              "לא ידוע" = NA,
                                                                              "ראויה לשיפור" = "2",
                                                                              "שירתתתי בקבע קצין" = "7"))

gibushon_civil$behavior_new<-ifelse(!is.na(gibushon_civil$behavior_new),gibushon_civil$behavior_new,gibushon_civil$behavior_old)

class(gibushon_civil$behavior_old)
gibushon_civil$behavior_old<-as.numeric(gibushon_civil$behavior_old)

class(gibushon_civil$behavior_new)
gibushon_civil$behavior_new<-as.numeric(gibushon_civil$behavior_new)
#use ahead only gibushon_civil$behavior_new*******************

gibushon_civil$action_reason<-str_replace_all(gibushon_civil$action_reason, "[[:punct:]]", " ")

gibushon_civil$action_reason <- str_replace_all(gibushon_civil$action_reason, c("החזרה לצה ל   משמעת" = "return to IDF-discipline",
                                                                                 "החזרה לצה ל  אי התאמה" = "return to IDF-misfit",
                                                                                 "החזרה לצה ל  הפסקת סיפוח מקורס" = "return to IDF-misfit-termination of annexation from a course",
                                                                                 "החזרה לצהל מגבלה רפואית" = "return to IDF-medical limitation",
                                                                                 "החזרה לצהל ע פ בקשת השוטר" = "return to IDF-policeman wish",
                                                                                 "החזרה לצהל תפקוד לקוי" = "return to IDF-malfunction",
                                                                                 "התפטרות בהקפאת זכויות   10 2" = "resignation - rights freezing 2 10",
                                                                                 "התפטרות בהעברת זכויות" = "resignation - rights passing",
                                                                                 "התפטרות" = "resignation",
                                                                                 "חוסר  תקן מתאים אישור" = "lack of job",
                                                                                 "לפי סעיף 20 פיצויי פיטורין" = "article 20",
                                                                                 "ס 17 תק התקש הפסקת עבודה" = "article 17",
                                                                                 "סיום שרות חובה לאומי" = "return to IDF-misfit",
                                                                                 "פיטורין סעיף 12  פחות משנתיים" = "article 12",
                                                                                 "פיטורין" = "dismissal"))

gibushon_civil$combat <- str_replace_all(gibushon_civil$combat, c("לא ידוע" = NA, "לא קרבי" = "not fighting", "קרבי" = "fighting"))

class(gibushon_civil)
      
# gibushon_civil<-as.data.frame(gibushon_civil)

colnames(gibushon_civil)

ncol_before_zscores<-ncol(gibushon_civil)

# Create z-scores.

# cells<-c(80,81,96,103,105,112,114,121,123,130,132,139,141,145,
# 149,166,173,175,182,184,191,193,200,202,209,211,215,219,237,239,243,245,249,251,
# 255,257,261,263,267,273,279,300,302,306,308,312,314,318,320,324,326,330,336,342,
# 366,370,374,378,382,386,390,394,398,402,406,410,414,418,422,426,430,434,438,442,
# 446,450,454,458,464,466,472,474,480,482,488,490,496,498,504,506,512,525,529,533,
# 537,541,545,549,671,680,553,557,561,565,569,573,577,581,585,589,593,597,601,605,
# 609,613,617,623,625,631,633,639,641,647,649,655,657,663,665,682,684,686,688,690,
# 692,694,696,698,700,702,704,706,724,726,728,730,732,734,736,738,740,742,744,746,
# 748,750,768,769)
# 
# for (i in 1:length(cells)) {
#   cells[i]<-cells[i]+26
# }
# 
# cells

# add comma

# gsub(" ",",","106 107 122 129 131 138 140 147 149 156 158 165 167 171 175 192 199 201 208 210 217 219 226 228 235 237
# 241 245 263 265 269 271 275 277 281 283 287 289 293 299 305 326 328 332 334 338 340 344 346 350 352 356
# 362 368 392 396 400 404 408 412 416 420 424 428 432 436 440 444 448 452 456 460 464 468 472 476 480 484
# 490 492 498 500 506 508 514 516 522 524 530 532 538 551 555 559 563 567 571 575 697 706 579 583 587 591
# 595 599 603 607 611 615 619 623 627 631 635 639 643 649 651 657 659 665 667 673 675 681 683 689 691 708
# 710 712 714 716 718 720 722 724 726 728 730 732 750 752 754 756 758 760 762 764 766 768 770 772 774 776
# 794 795",fixed=T)


# colnames(gibushon_civil)[76]<-"final.score.2015" # 52+24=76
# colnames(gibushon_civil)[103]<-"final.score.2017" # 78+25=103

gibushon_civil_zscore_relevant_columns <- colnames(gibushon_civil 
                                          [c(21:22,24:31,35,44,48:49,52,78,104,106,107,122,129,131,138,
                                             140,147,149,156,158,165,167,171,175,192,199,201,208,210,
                                             217,219,226,228,235,237,241,245,263,265,269,271,275,277,
                                             281,283,287,289,293,299,305,326,328,332,334,338,340,344,
                                             346,350,352,356,362,368,392,396,400,404,408,412,416,420,
                                             424,428,432,436,440,444,448,452,456,460,464,468,472,476,
                                             480,484,490,492,498,500,506,508,514,516,522,524,530,532,
                                             538,551,555,559,563,567,571,575,697,706,579,583,587,591,
                                             595,599,603,607,611,615,619,623,627,631,635,639,643,649,
                                             651,657,659,665,667,673,675,681,683,689,691,708,710,712,
                                             714,716,718,720,722,724,726,728,730,732,750,752,754,756,
                                             758,760,762,764,766,768,770,772,774,776,794,795,827:830,
                                             832,833)])

for(i in gibushon_civil_zscore_relevant_columns) {
  gibushon_civil[ncol(gibushon_civil)+1]<-NA
  names(gibushon_civil)[ncol(gibushon_civil)]<-paste(i,"zscore",sep = "_")
  gibushon_civil[ncol(gibushon_civil)] <-
    as.data.frame(scale(as.numeric(unlist(gibushon_civil[i]))))
}

ncol_zscores<-ncol(gibushon_civil)

# Locating and handling outliers.

# Remove Checkmark form plyr package, because it's in conflict with dplyr.*********
# With complicated packages that load S4 classes & methods, detach command is not 
# guaranteed to restore everything to exactly the state before the package was loaded.

library(dplyr)

gibushon_civil_outliers = gibushon_civil[(ncol_before_zscores+1):ncol_zscores]
ouitliers<-function(x) ifelse(!is.na(x) & x>3.29, x, NA)
allna<-function(x) ifelse(all(is.na(x)),NULL,x)

gibushon_civil_outliers = gibushon_civil_outliers%>%
  mutate_at(vars(1:ncol(gibushon_civil_outliers)), funs(ouitliers))

colnames(gibushon_civil_outliers)<-paste(colnames(gibushon_civil_outliers),"outlier",sep = "_")

gibushon_civil_outliers <- gibushon_civil_outliers[,colSums(is.na(gibushon_civil_outliers))<nrow(gibushon_civil_outliers)]

class(gibushon_civil_outliers)

# freq of main outliers.
library(descr)
library(psych)

# mode<-function(X)
# {
#   temp<-table (as.vector(X))
#   names (temp)[temp==max(temp)]
# }
options(width = 71,max.print=30000)
# The 2 commands after the first command, are for cleaning the output file.
out<-""
cat("", out, file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_outliers.txt", sep="", append=F,fill = T)
suppressWarnings(for(i in 1:ncol(gibushon_civil_outliers)) {
  newresult1<-round(freq(ordered(as.numeric(unlist(gibushon_civil_outliers[[i]]))), plot = F,main=colnames(gibushon_civil_outliers[i]),font=2),2)
# newresult2<-round(describe(as.numeric(unlist(gibushon_civil_outliers[[i]]))),2)
# newresult3<-"mode="
# newresult4<-mode(gibushon_civil_outliers[[i]])
# newresult5<- "                                                                                               "
  newresult6<- "----------------------------------------------------------------------------"
# out <- capture.output(newresult1,newresult5,newresult2,newresult3,newresult4,newresult5,newresult6)
  out <- capture.output(newresult1,newresult6)
  out[1]<-""
  cat(colnames(gibushon_civil_outliers[i]),out, file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_outliers.txt", append=T,fill = T)
})

write_excel_csv(gibushon_civil,file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_with_outliers.csv")

colnames(gibushon_civil[(ncol_before_zscores+1):ncol_zscores])

# gibushon_civil[(ncol_before_zscores+1):ncol_zscores][gibushon_civil[(ncol_before_zscores+1):ncol_zscores]>4]<-NA

gibushon_civil[(ncol_before_zscores+1):ncol_zscores][gibushon_civil[(ncol_before_zscores+1):ncol_zscores]>6]<-NA

colnames(gibushon_civil)

write_excel_csv(gibushon_civil,file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_without_outliers.csv")

# Criteria.

library(dplyr)
gibushon_civil = gibushon_civil %>%
  rowwise() %>%
  mutate(RAvg_am_2010 = mean(c(RAvg1_am_2010_zscore,RAvg2_am_2010_zscore,RAvg3_am_2010_zscore,RAvg4_am_2010_zscore,RAvg5_am_2010_zscore),na.rm = T),
         RTeken_am_2010 = mean(c(RTeken1_am_2010_zscore,RTeken2_am_2010_zscore,RTeken3_am_2010_zscore,RTeken4_am_2010_zscore,RTeken5_am_2010_zscore),na.rm = T),
         NPct_am_2010 = mean(c(NPct1_am_2010_zscore,NPct2_am_2010_zscore,NPct3_am_2010_zscore),na.rm = T),
         PAvg_cf_2010 = mean(c(PAvg1_cf_2010_zscore,PAvg2_cf_2010_zscore,PAvg3_cf_2010_zscore,PAvg4_cf_2010_zscore,PAvg5_cf_2010_zscore,
                               PAvg6_cf_2010_zscore,PAvg7_cf_2010_zscore,PAvg8_cf_2010_zscore,PAvg9_cf_2010_zscore,PAvg10_cf_2010_zscore,
                               PAvg11_cf_2010_zscore,PAvg12_cf_2010_zscore,PAvg13_cf_2010_zscore,PAvg14_cf_2010_zscore,PAvg15_cf_2010_zscore,
                               PAvg16_cf_2010_zscore,PAvg17_cf_2010_zscore,PAvg18_cf_2010_zscore,PAvg19_cf_2010_zscore,PAvg20_cf_2010_zscore,
                               PAvg21_cf_2010_zscore,PAvg22_cf_2010_zscore,PAvg23_cf_2010_zscore),na.rm = T),
         FAvg_cf_2010 = mean(c(FAvg1_cf_2010_zscore,FAvg2_cf_2010_zscore,FAvg3_cf_2010_zscore,FAvg4_cf_2010_zscore,FAvg5_cf_2010_zscore,
                               FAvg6_cf_2010_zscore,FAvg7_cf_2010_zscore),na.rm = T),
         FTeken_cf_2010 = mean(c(FTeken1_cf_2010_zscore,FTeken2_cf_2010_zscore,FTeken3_cf_2010_zscore,FTeken4_cf_2010_zscore,FTeken5_cf_2010_zscore,
                                 FTeken6_cf_2010_zscore,FTeken7_cf_2010_zscore),na.rm = T),
         RAvg_am_2012 = mean(c(RAvg1_am_2012_zscore,RAvg2_am_2012_zscore,RAvg3_am_2012_zscore,RAvg4_am_2012_zscore,RAvg5_am_2012_zscore),na.rm = T),
         RTeken_am_2012 = mean(c(RTeken1_am_2012_zscore,RTeken2_am_2012_zscore,RTeken3_am_2012_zscore,RTeken4_am_2012_zscore,RTeken5_am_2012_zscore),na.rm = T),
         NPct_am_2012 = mean(c(NPct1_am_2012_zscore,NPct2_am_2012_zscore,NPct3_am_2012_zscore),na.rm = T),
         PAvg_cf_2012 = mean(c(PAvg1_cf_2012_zscore,PAvg2_cf_2012_zscore,PAvg3_cf_2012_zscore,PAvg4_cf_2012_zscore,PAvg5_cf_2012_zscore,
                               PAvg6_cf_2012_zscore,PAvg7_cf_2012_zscore,PAvg8_cf_2012_zscore,PAvg9_cf_2012_zscore,PAvg10_cf_2012_zscore,
                               PAvg11_cf_2012_zscore,PAvg12_cf_2012_zscore,PAvg13_cf_2012_zscore,PAvg14_cf_2012_zscore,PAvg15_cf_2012_zscore,
                               PAvg16_cf_2012_zscore,PAvg17_cf_2012_zscore,PAvg18_cf_2012_zscore,PAvg19_cf_2012_zscore,PAvg20_cf_2012_zscore,
                               PAvg21_cf_2012_zscore,PAvg22_cf_2012_zscore,PAvg23_cf_2012_zscore),na.rm = T),
         FAvg_cf_2012 = mean(c(FAvg1_cf_2012_zscore,FAvg2_cf_2012_zscore,FAvg3_cf_2012_zscore,FAvg4_cf_2012_zscore,FAvg5_cf_2012_zscore,
                               FAvg6_cf_2012_zscore,FAvg7_cf_2012_zscore),na.rm = T),
         FTeken_cf_2012 = mean(c(FTeken1_cf_2012_zscore,FTeken2_cf_2012_zscore,FTeken3_cf_2012_zscore,FTeken4_cf_2012_zscore,FTeken5_cf_2012_zscore,
                                 FTeken6_cf_2012_zscore,FTeken7_cf_2012_zscore),na.rm = T),
         RAvg_am_2015 = mean(c(RAvg1_am_2015_zscore,RAvg2_am_2015_zscore,RAvg3_am_2015_zscore,RAvg4_am_2015_zscore,RAvg5_am_2015_zscore),na.rm = T),
         RTeken_am_2015 = mean(c(RTeken1_am_2015_zscore,RTeken2_am_2015_zscore,RTeken3_am_2015_zscore,RTeken4_am_2015_zscore,RTeken5_am_2015_zscore),na.rm = T))

class(gibushon_civil)
gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

# Ronen: since 2015, there may be am_2015 or am_2015_special (it appears in the am_regular file, but has only NPct vars).

gibushon_civil = gibushon_civil %>%
  rowwise() %>%
  mutate(NPct1_am_2015_special = ifelse(is.na(RAvg_am_2015) & (!is.na(NPct1_am_2015_zscore) | !is.na(NPct2_am_2015_zscore) | !is.na(NPct3_am_2015_zscore)),NPct1_am_2015_zscore,NA),
         NPct2_am_2015_special = ifelse(is.na(RAvg_am_2015) & (!is.na(NPct1_am_2015_zscore) | !is.na(NPct2_am_2015_zscore) | !is.na(NPct3_am_2015_zscore)),NPct2_am_2015_zscore,NA),
         NPct3_am_2015_special = ifelse(is.na(RAvg_am_2015) & (!is.na(NPct1_am_2015_zscore) | !is.na(NPct2_am_2015_zscore) | !is.na(NPct3_am_2015_zscore)),NPct3_am_2015_zscore,NA))

class(gibushon_civil)
gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

gibushon_civil = gibushon_civil %>%
  rowwise() %>%
  mutate(NPct_am_2015 = mean(c(NPct1_am_2015_zscore,NPct2_am_2015_zscore,NPct3_am_2015_zscore),na.rm = T),
         NPct_am_2015_special = mean(c(NPct1_am_2015_special,NPct2_am_2015_special,NPct3_am_2015_special),na.rm = T),
         FAvg_cf_2015 = mean(c(FAvg1_cf_2015_zscore,FAvg2_cf_2015_zscore,FAvg3_cf_2015_zscore,FAvg4_cf_2015_zscore,FAvg5_cf_2015_zscore,
                               FAvg6_cf_2015_zscore,FAvg7_cf_2015_zscore),na.rm = T),       
         FTeken_cf_2015 = mean(c(FTeken1_cf_2015_zscore,FTeken2_cf_2015_zscore,FTeken3_cf_2015_zscore,FTeken4_cf_2015_zscore,FTeken5_cf_2015_zscore,
                                 FTeken6_cf_2015_zscore,FTeken7_cf_2015_zscore),na.rm = T),
         RAvg_am_2018 = mean(c(RAvg1_am_2018_zscore,RAvg2_am_2018_zscore,RAvg3_am_2018_zscore,RAvg4_am_2018_zscore,RAvg5_am_2018_zscore),na.rm = T),
         RTeken_am_2018 = mean(c(RTeken1_am_2018_zscore,RTeken2_am_2018_zscore,RTeken3_am_2018_zscore,RTeken4_am_2018_zscore,RTeken5_am_2018_zscore),na.rm = T),
         RTeken_am_2018 = mean(c(RTeken1_am_2018_zscore,RTeken2_am_2018_zscore,RTeken3_am_2018_zscore,RTeken4_am_2018_zscore,RTeken5_am_2018_zscore),na.rm = T),
         NPct1_am_2018_special = ifelse(is.na(RAvg_am_2018) & (!is.na(NPct1_am_2018_zscore) | !is.na(NPct2_am_2018_zscore) | !is.na(NPct3_am_2018_zscore)),NPct1_am_2018_zscore,NA),
         NPct2_am_2018_special = ifelse(is.na(RAvg_am_2018) & (!is.na(NPct1_am_2018_zscore) | !is.na(NPct2_am_2018_zscore) | !is.na(NPct3_am_2018_zscore)),NPct2_am_2018_zscore,NA),
         NPct3_am_2018_special = ifelse(is.na(RAvg_am_2018) & (!is.na(NPct1_am_2018_zscore) | !is.na(NPct2_am_2018_zscore) | !is.na(NPct3_am_2018_zscore)),NPct3_am_2018_zscore,NA))

class(gibushon_civil)
gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

gibushon_civil = gibushon_civil %>%
  rowwise() %>%
  mutate(NPct_am_2018 = mean(c(NPct1_am_2018_zscore,NPct2_am_2018_zscore,NPct3_am_2018_zscore),na.rm = T),
         NPct_am_2018_special = mean(c(NPct1_am_2018_special,NPct2_am_2018_special,NPct3_am_2018_special),na.rm = T))

class(gibushon_civil)
gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

gibushon_civil = gibushon_civil %>%
  rowwise() %>%
  mutate(am_2010 = mean(c(RAvg_am_2010,RTeken_am_2010,NPct_am_2010),na.rm = T),
         am_2012 = mean(c(RAvg_am_2012,RTeken_am_2012,NPct_am_2012),na.rm = T),
         am_2015 = ifelse(is.na(NPct_am_2015_special),mean(c(RAvg_am_2015,RTeken_am_2015,NPct_am_2015),na.rm = T),NA),
         am_2015_special = NPct_am_2015_special,
         am_2018 = ifelse(is.na(NPct_am_2018_special),mean(c(RAvg_am_2018,RTeken_am_2018,NPct_am_2018),na.rm = T),NA),
         am_2018_special = NPct_am_2018_special)


class(gibushon_civil)
gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

#Ronen: cf_2015 includes only 2 indexes.

gibushon_civil = gibushon_civil %>%
  rowwise() %>%
  mutate(cf_2010 = mean(c(PAvg_cf_2010,FAvg_cf_2010,FTeken_cf_2010),na.rm = T),
         cf_2012 = mean(c(PAvg_cf_2012,FAvg_cf_2012,FTeken_cf_2012),na.rm = T),
         cf_2015 = mean(c(FAvg_cf_2015,FTeken_cf_2015),na.rm = T),
         cf_2018 = metuknan_clali_cf_2018_zscore)

class(gibushon_civil)
gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

# Optimal gap between A.C. date and criteria.

round(mean(gibushon_civil$date.tkufatit_14_diff[gibushon_civil$date.tkufatit_14_diff>0],na.rm = T),0)
round(sd(gibushon_civil$date.tkufatit_14_diff[gibushon_civil$date.tkufatit_14_diff>0],na.rm = T),0)
round(median(gibushon_civil$date.tkufatit_14_diff[gibushon_civil$date.tkufatit_14_diff>0],na.rm = T),0)
sd_tkufatit_14_diff<-0.25*(round(sd(gibushon_civil$date.tkufatit_14_diff[gibushon_civil$date.tkufatit_14_diff>0],na.rm = T),0))
#sd_tkufatit_14_diff<-round(mean(gibushon_civil$date.tkufatit_14_diff[gibushon_civil$date.tkufatit_14_diff>0],na.rm = T),0)

round(mean(gibushon_civil$date.tkufatit_15_diff[gibushon_civil$date.tkufatit_15_diff>0],na.rm = T),0)
round(sd(gibushon_civil$date.tkufatit_15_diff[gibushon_civil$date.tkufatit_15_diff>0],na.rm = T),0)
sd_tkufatit_15_diff<-0.25*(round(sd(gibushon_civil$date.tkufatit_15_diff[gibushon_civil$date.tkufatit_15_diff>0],na.rm = T),0))
#sd_tkufatit_15_diff<-round(mean(gibushon_civil$date.tkufatit_15_diff[gibushon_civil$date.tkufatit_15_diff>0],na.rm = T),0)

round(mean(gibushon_civil$date.period.eval.2015_diff[gibushon_civil$date.period.eval.2015_diff>0],na.rm = T),0)
round(sd(gibushon_civil$date.period.eval.2015_diff[gibushon_civil$date.period.eval.2015_diff>0],na.rm = T),0)
sd_period.eval.2015_diff<-0.25*(round(sd(gibushon_civil$date.period.eval.2015_diff[gibushon_civil$date.period.eval.2015_diff>0],na.rm = T),0))
#sd_period.eval.2015_diff<round(mean(gibushon_civil$date.period.eval.2015_diff[gibushon_civil$date.period.eval.2015_diff>0],na.rm = T),0)

round(mean(gibushon_civil$date.period.eval.2017_diff[gibushon_civil$date.period.eval.2017_diff>0],na.rm = T),0)
round(sd(gibushon_civil$date.period.eval.2017_diff[gibushon_civil$date.period.eval.2017_diff>0],na.rm = T),0)
sd_period.eval.2017_diff<-0.25*(round(sd(gibushon_civil$date.period.eval.2017_diff[gibushon_civil$date.period.eval.2017_diff>0],na.rm = T),0))
#sd_period.eval.2017_diff<-round(mean(gibushon_civil$date.period.eval.2017_diff[gibushon_civil$date.period.eval.2017_diff>0],na.rm = T),0)

round(mean(gibushon_civil$date.period.eval.2018_diff[gibushon_civil$date.period.eval.2018_diff>0],na.rm = T),0)
round(sd(gibushon_civil$date.period.eval.2018_diff[gibushon_civil$date.period.eval.2018_diff>0],na.rm = T),0)
sd_period.eval.2018_diff<-0.25*(round(sd(gibushon_civil$date.period.eval.2018_diff[gibushon_civil$date.period.eval.2018_diff>0],na.rm = T),0))
#sd_period.eval.2018_diff<-round(mean(gibushon_civil$date.period.eval.2018_diff[gibushon_civil$date.period.eval.2018_diff>0],na.rm = T),0)

round(mean(gibushon_civil$date.tkufatit_2019_diff[gibushon_civil$date.tkufatit_2019_diff>0],na.rm = T),0)
round(sd(gibushon_civil$date.tkufatit_2019_diff[gibushon_civil$date.tkufatit_2019_diff>0],na.rm = T),0)
sd_period.eval.2019_diff<-0.25*(round(sd(gibushon_civil$date.tkufatit_2019_diff[gibushon_civil$date.tkufatit_2019_diff>0],na.rm = T),0))
sd_period.eval.2019_diff<-as.numeric(sd_period.eval.2019_diff)
#sd_period.eval.2018_diff<-round(mean(gibushon_civil$date.tkufatit_2019_diff[gibushon_civil$date.tkufatit_2019_diff>0],na.rm = T),0)

round(mean(gibushon_civil$TaarichHavara_am_2010_diff[gibushon_civil$TaarichHavara_am_2010_diff>0],na.rm = T),0)
round(sd(gibushon_civil$TaarichHavara_am_2010_diff[gibushon_civil$TaarichHavara_am_2010_diff>0],na.rm = T),0)
sd_am_2010_diff<-0.25*(round(sd(gibushon_civil$TaarichHavara_am_2010_diff[gibushon_civil$TaarichHavara_am_2010_diff>0],na.rm = T),0))
#sd_am_2010_diff<-round(mean(gibushon_civil$TaarichHavara_am_2010_diff[gibushon_civil$TaarichHavara_am_2010_diff>0],na.rm = T),0)

round(mean(gibushon_civil$TaarichHavara_am_2012_diff[gibushon_civil$TaarichHavara_am_2012_diff>0],na.rm = T),0)
round(sd(gibushon_civil$TaarichHavara_am_2012_diff[gibushon_civil$TaarichHavara_am_2012_diff>0],na.rm = T),0)
sd_am_2012_diff<-0.25*(round(sd(gibushon_civil$TaarichHavara_am_2012_diff[gibushon_civil$TaarichHavara_am_2012_diff>0],na.rm = T),0))
#sd_am_2010_diff<-round(mean(gibushon_civil$TaarichHavara_am_2010_diff[gibushon_civil$TaarichHavara_am_2010_diff>0],na.rm = T),0)

round(mean(gibushon_civil$TaarichHavara_am_2015_diff[gibushon_civil$TaarichHavara_am_2015_diff>0],na.rm = T),0)
round(sd(gibushon_civil$TaarichHavara_am_2015_diff[gibushon_civil$TaarichHavara_am_2015_diff>0],na.rm = T),0)
sd_am_2015_diff<-0.25*(round(sd(gibushon_civil$TaarichHavara_am_2015_diff[gibushon_civil$TaarichHavara_am_2015_diff>0],na.rm = T),0))
#sd_am_2010_diff<-round(mean(gibushon_civil$TaarichHavara_am_2010_diff[gibushon_civil$TaarichHavara_am_2010_diff>0],na.rm = T),0)

round(mean(gibushon_civil$TaarichHavara_am_2018_diff[gibushon_civil$TaarichHavara_am_2018_diff>0],na.rm = T),0)
round(sd(gibushon_civil$TaarichHavara_am_2018_diff[gibushon_civil$TaarichHavara_am_2018_diff>0],na.rm = T),0)
sd_am_2018_diff<-0.25*(round(sd(gibushon_civil$TaarichHavara_am_2018_diff[gibushon_civil$TaarichHavara_am_2018_diff>0],na.rm = T),0))
#sd_am_2018_diff<-round(mean(gibushon_civil$TaarichHavara_am_2018_diff[gibushon_civil$TaarichHavara_am_2018_diff>0],na.rm = T),0)

round(mean(gibushon_civil$TaarichHavara_cf_2010_diff[gibushon_civil$TaarichHavara_cf_2010_diff>0],na.rm = T),0)
round(sd(gibushon_civil$TaarichHavara_cf_2010_diff[gibushon_civil$TaarichHavara_cf_2010_diff>0],na.rm = T),0)
sd_cf_2010_diff<-0.25*(round(sd(gibushon_civil$TaarichHavara_cf_2010_diff[gibushon_civil$TaarichHavara_cf_2010_diff>0],na.rm = T),0))
#sd_am_2010_diff<-round(mean(gibushon_civil$TaarichHavara_am_2010_diff[gibushon_civil$TaarichHavara_am_2010_diff>0],na.rm = T),0)

round(mean(gibushon_civil$TaarichHavara_cf_2012_diff[gibushon_civil$TaarichHavara_cf_2012_diff>0],na.rm = T),0)
round(sd(gibushon_civil$TaarichHavara_cf_2012_diff[gibushon_civil$TaarichHavara_cf_2012_diff>0],na.rm = T),0)
sd_cf_2012_diff<-0.25*(round(sd(gibushon_civil$TaarichHavara_cf_2012_diff[gibushon_civil$TaarichHavara_cf_2012_diff>0],na.rm = T),0))
#sd_cf_2012_diff<-round(mean(gibushon_civil$TaarichHavara_cf_2012_diff[gibushon_civil$TaarichHavara_cf_2012_diff>0],na.rm = T),0)

round(mean(gibushon_civil$TaarichHavara_cf_2015_diff[gibushon_civil$TaarichHavara_cf_2015_diff>0],na.rm = T),0)
round(sd(gibushon_civil$TaarichHavara_cf_2015_diff[gibushon_civil$TaarichHavara_cf_2015_diff>0],na.rm = T),0)
sd_cf_2015_diff<-0.25*(round(sd(gibushon_civil$TaarichHavara_cf_2015_diff[gibushon_civil$TaarichHavara_cf_2015_diff>0],na.rm = T),0))
#sd_am_2010_diff<-round(mean(gibushon_civil$TaarichHavara_am_2010_diff[gibushon_civil$TaarichHavara_am_2010_diff>0],na.rm = T),0)

round(mean(gibushon_civil$TaarichHavara_cf_2018_diff[gibushon_civil$TaarichHavara_cf_2018_diff>0],na.rm = T),0)
round(sd(gibushon_civil$TaarichHavara_cf_2018_diff[gibushon_civil$TaarichHavara_cf_2018_diff>0],na.rm = T),0)
sd_cf_2018_diff<-0.25*(round(sd(gibushon_civil$TaarichHavara_cf_2018_diff[gibushon_civil$TaarichHavara_cf_2018_diff>0],na.rm = T),0))
# sd_am_2010_diff<-round(mean(gibushon_civil$TaarichHavara_am_2010_diff[gibushon_civil$TaarichHavara_am_2010_diff>0],na.rm = T),0)

filtered_gibushon_civil_diff = gibushon_civil %>%
  rowwise() %>%
  mutate(tkufatit_14_zscore = ifelse(date.tkufatit_14_diff< (sd_tkufatit_14_diff),NA,tkufatit_14_zscore),
         tkufatit_15_zscore = ifelse(date.tkufatit_15_diff< (sd_tkufatit_15_diff),NA,tkufatit_15_zscore),
         final.score.2015_zscore = ifelse(date.period.eval.2015_diff< (sd_period.eval.2015_diff),NA,final.score.2015_zscore),
         final.score.2017_zscore = ifelse(date.period.eval.2017_diff< (sd_period.eval.2017_diff),NA,final.score.2017_zscore),
         final.score.2018_zscore = ifelse(date.period.eval.2018_diff< (sd_period.eval.2018_diff),NA,final.score.2018_zscore),
         row_score_2019 = ifelse(date.tkufatit_2019_diff< (sd_period.eval.2019_diff),NA,row_score_2019),
         am_2010 = ifelse(TaarichHavara_am_2010_diff< (sd_am_2010_diff),NA,am_2010),
         am_2012 = ifelse(TaarichHavara_am_2012_diff< (sd_am_2012_diff),NA,am_2012),
         am_2015 = ifelse(TaarichHavara_am_2015_diff< (sd_am_2015_diff),NA,am_2015),
         am_2015_special = ifelse(TaarichHavara_am_2015_diff< (sd_am_2015_diff),NA,am_2015_special),
         am_2018 = ifelse(TaarichHavara_am_2018_diff< (sd_am_2018_diff),NA,am_2018),
         am_2018_special = ifelse(TaarichHavara_am_2010_diff< (sd_am_2018_diff),NA,am_2018_special),
         cf_2010 = ifelse(TaarichHavara_cf_2010_diff< (sd_cf_2010_diff),NA,cf_2010),
         cf_2012 = ifelse(TaarichHavara_cf_2012_diff< (sd_cf_2012_diff),NA,cf_2012),
         cf_2015 = ifelse(TaarichHavara_cf_2015_diff< (sd_cf_2015_diff),NA,cf_2015),
         cf_2018 = ifelse(TaarichHavara_cf_2018_diff< (sd_cf_2018_diff),NA,cf_2018))

class(filtered_gibushon_civil_diff)
filtered_gibushon_civil_diff<-as.data.frame(filtered_gibushon_civil_diff)

#qa
head(gibushon_civil$am_2010,20)

head(filtered_gibushon_civil_diff$am_2010,20)

head(filtered_gibushon_civil_diff$TaarichHavara_am_2010_diff,20)

head(gibushon_civil$am_2015,20)

head(filtered_gibushon_civil_diff$am_2015,20)

head(filtered_gibushon_civil_diff$TaarichHavara_am_2015_diff,20)

#First high order criteria

filtered_gibushon_civil_diff = filtered_gibushon_civil_diff %>%
  rowwise() %>%
  mutate(am = mean(c(am_2010,am_2012,am_2015,am_2018),na.rm = T),
         am_special = mean(c(am_2015_special,am_2018_special),na.rm = T),
         cf = mean(c(cf_2010,cf_2012,cf_2015,cf_2018),na.rm = T),
         tkufatit = mean(c(final.score.2015_zscore,final.score.2017_zscore,tkufatit_14_zscore,final.score.2018_zscore,row_score_2019_zscore),na.rm = T))

# next commands are for range restriction (later)
filtered_gibushon_civil_diff = filtered_gibushon_civil_diff %>%
  rowwise() %>%
  mutate(am_not_na = sum(!is.na(c(am_2010,am_2012,am_2015,am_2018))),
         cf_not_na = sum(!is.na(c(cf_2010,cf_2012,cf_2015,cf_2018))),
         tkufatit_not_na = sum(!is.na(c(final.score.2015_zscore,final.score.2017_zscore,tkufatit_14_zscore,final.score.2018_zscore,row_score_2019))))

#Second high order criteria (listwise deletion)

filtered_gibushon_civil_diff = filtered_gibushon_civil_diff %>%
  rowwise() %>%
  mutate(amcf = ifelse(!is.na(am) & !is.na(am_special), mean(c(am,am_special,cf),na.rm = F),
                       ifelse(!is.na(am),mean(c(am,cf),na.rm = F),mean(c(am_special,cf),na.rm = F))),
         tkufatitamcf = mean(c(tkufatit,amcf),na.rm = F),
         tkufatitam = ifelse(!is.na(am) & !is.na(am_special), mean(c(am,am_special,tkufatit),na.rm = F),
                             ifelse(!is.na(am),mean(c(am,tkufatit),na.rm = F),mean(c(am_special,tkufatit),na.rm = F))))

class(filtered_gibushon_civil_diff)
filtered_gibushon_civil_diff<-as.data.frame(filtered_gibushon_civil_diff)

filtered_gibushon_civil_diff[sapply(filtered_gibushon_civil_diff, is.nan)] <- NA

nrow(filtered_gibushon_civil_diff)

# Criteria_count

filtered_gibushon_civil_diff$critria_count <- 
  rowSums(!is.na(filtered_gibushon_civil_diff[c("final.score.2015_zscore",
                                                "final.score.2017_zscore",
                                                "final.score.2018_zscore",
                                                "tkufatit_14_zscore",
                                                "row_score_2019",
                                                "am_2010",
                                                "am_2012",
                                                "am_2015",
                                                "am_2015_special",
                                                "am_2018",
                                                "am_2018_special",
                                                "cf_2010",
                                                "cf_2012",
                                                "cf_2015",
                                                "cf_2018")]))

#qa
head(filtered_gibushon_civil_diff$critria_count,100)

filtered_gibushon_civil_diff_criteria_count = filtered_gibushon_civil_diff %>%
  filter(critria_count>=2)

#qa
head(filtered_gibushon_civil_diff_criteria_count$critria_count,100)

# seniority from A.C.

filtered_gibushon_civil_diff_criteria_count = filtered_gibushon_civil_diff_criteria_count %>%
  rowwise() %>%
  mutate(seniority_days_ac = ifelse(!is.na(date.period.eval.2018_diff) & date.period.eval.2018_diff>(sd_period.eval.2018_diff),(date.period.eval.2018_diff),
                                    ifelse(!is.na(date.period.eval.2017_diff) & date.period.eval.2017_diff>(sd_period.eval.2017_diff),(date.period.eval.2017_diff),
                                    ifelse(!is.na(date.period.eval.2015_diff) & date.period.eval.2015_diff>(sd_period.eval.2015_diff),(date.period.eval.2015_diff),
                                    ifelse(!is.na(date.tkufatit_14_diff) & date.tkufatit_14_diff>(sd_tkufatit_14_diff),(date.tkufatit_14_diff),
                                    ifelse(!is.na(TaarichHavara_am_2012_diff) & TaarichHavara_am_2012_diff>(sd_am_2012_diff),(TaarichHavara_am_2012_diff),
                                    ifelse(!is.na(TaarichHavara_am_2010_diff) & TaarichHavara_am_2010_diff>(sd_am_2010_diff),(TaarichHavara_am_2010_diff),NA)))))),
         seniority_years_ac = round(as.numeric(seniority_days_ac)/365,2))

class(filtered_gibushon_civil_diff_criteria_count)
filtered_gibushon_civil_diff_criteria_count<-as.data.frame(filtered_gibushon_civil_diff_criteria_count)

#qa
head(filtered_gibushon_civil_diff_criteria_count$seniority_days_ac,100)
head(filtered_gibushon_civil_diff_criteria_count$seniority_years_ac,100)

median_seniority_days_ac<-median(filtered_gibushon_civil_diff_criteria_count$seniority_days_ac[which(!is.na(filtered_gibushon_civil_diff_criteria_count$seniority_days_ac))],na.rm = F)
seniority_low_third<-unname(quantile(filtered_gibushon_civil_diff_criteria_count$seniority_days_ac,c(.33),na.rm = T))

filtered_gibushon_civil_diff_criteria_count = filtered_gibushon_civil_diff_criteria_count %>%
  rowwise() %>%
  mutate(seniority_high_low_ac = ifelse(!is.na(seniority_days_ac) & seniority_days_ac<=median_seniority_days_ac,1,
                                        ifelse(!is.na(seniority_days_ac),2,NA)),
         seniority_low_third_high_ac = ifelse(!is.na(seniority_days_ac) & seniority_days_ac<=seniority_low_third,1,
                                              ifelse(!is.na(seniority_days_ac),2,NA)))

class(filtered_gibushon_civil_diff_criteria_count)
filtered_gibushon_civil_diff_criteria_count<-as.data.frame(filtered_gibushon_civil_diff_criteria_count)

class(filtered_gibushon_civil_diff_criteria_count)
filtered_gibushon_civil_diff_criteria_count<-as.data.frame(filtered_gibushon_civil_diff_criteria_count)
gibushon_final<-filtered_gibushon_civil_diff_criteria_count

#frequencies
colnames(gibushon_final)[1:1000]
colnames(gibushon_final)[1001:ncol(gibushon_final)]

library(descr)
library(psych)

mode<-function(X)
{
  temp<-table (as.vector(X))
  names (temp)[temp==max(temp)]
}
options(width = 71,max.print=30000)
# # The 2 commands after the first command, are for cleaning the output file.
gibushon_civil_freq_relevant_columns<-colnames(gibushon_final[c(21:22,24:31,35,44,48:49,52,78,104,106,107,122,129,131,138,
                                                                   140,147,149,156,158,165,167,171,175,192,199,201,208,210,
                                                                   217,219,226,228,235,237,241,245,263,265,269,271,275,277,
                                                                   281,283,287,289,293,299,305,326,328,332,334,338,340,344,
                                                                   346,350,352,356,362,368,392,396,400,404,408,412,416,420,
                                                                   424,428,432,436,440,444,448,452,456,460,464,468,472,476,
                                                                   480,484,490,492,498,500,506,508,514,516,522,524,530,532,
                                                                   538,551,555,559,563,567,571,575,697,706,579,583,587,591,
                                                                   595,599,603,607,611,615,619,623,627,631,635,639,643,649,
                                                                   651,657,659,665,667,673,675,681,683,689,691,708,710,712,
                                                                   714,716,718,720,722,724,726,728,730,732,750,752,754,756,
                                                                   758,760,762,764,766,768,770,772,774,776,794,795,824,
                                                                   827:830,832:833,1067)])
out<-""
cat("", out, file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_frequencies_1.txt", sep="", append=F,fill = T)
suppressWarnings(for(i in gibushon_civil_freq_relevant_columns) {
  newresult1<-round(freq(ordered(as.numeric(unlist(gibushon_final[[i]]))), plot = F,main=colnames(gibushon_final[i]),font=2),2)
  newresult2<-round(describe(as.numeric(unlist(gibushon_final[[i]]))),2)
  newresult3<-"mode="
  newresult4<-mode(gibushon_final[[i]])
  newresult5<- "                                                                                               "
  newresult6<- "----------------------------------------------------------------------------"
  out <- capture.output(newresult1,newresult5,newresult2,newresult3,newresult4,newresult5,newresult6)
  out[1]<-""
  cat(colnames(gibushon_final[i]),out, file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_frequencies_1.txt", append=T,fill = T)
})

gibushon_civil_freq_relevant_columns<-colnames(gibushon_final[c(797:798,821:822,831,834,835)])
out<-""
cat("", out, file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_frequencies_2.txt", sep="", append=F,fill = T)
suppressWarnings(for(i in gibushon_civil_freq_relevant_columns) {
  newresult1<-freq(ordered(gibushon_final[[i]]), plot = F,main=colnames(gibushon_final[i]),font=2)
  newresult6<- "----------------------------------------------------------------------------"
  out <- capture.output(newresult1,newresult6)
  out[1]<-""
  cat(colnames(gibushon_final[i]),out, file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_frequencies_2.txt", append=T,fill = T)
})

colnames(gibushon_final)[1:1000]
colnames(gibushon_final)[1001:ncol(gibushon_final)]

# Correlations predictors-criteria

gibushon_final_relevant_predictors_columns_for_correlations <- gibushon_final[c(824,836:841,843:850,1011:1016,1066)]
gibushon_final_relevant_predictors_columns_names_for_correlations <- c(colnames(gibushon_final[c(824,836:841,843:850,1011:1016,1066)]))
gibushon_final_relevant_criteria_columns_for_correlations <- gibushon_final[c(1055:1061)]
gibushon_final_relevant_criteria_columns_names_for_correlations <- c(colnames(gibushon_final[c(1055:1061)]))
gibushon_final_corr_output<-data.frame()[23,]

for(i in 1:length(gibushon_final_relevant_criteria_columns_names_for_correlations)){
  corr_output_temp<-c()
  for(j in 1:length(gibushon_final_relevant_predictors_columns_names_for_correlations)){
    corr_temp<-c()
    corr_try <- try(cor.test(as.numeric(gibushon_final_relevant_criteria_columns_for_correlations[[i]]),as.numeric(gibushon_final_relevant_predictors_columns_for_correlations[[j]]),use="pairwise.complete.obs"), silent=T)
    corr_temp$"predictor" <-ifelse(class(corr_try)=="try-error", NA, corr_try$estimate)
    corr_temp$p.value <-ifelse(class(corr_try)=="try-error", NA, corr_try$p.value)
    corr_temp$n <-(ifelse(class(corr_try)=="try-error", NA, corr_try$parameter+2))
    corr_temp<-data.frame(corr_temp)
    colnames(corr_temp)[1]<-gibushon_final_relevant_criteria_columns_names_for_correlations[i]
    row.names(corr_temp)<-gibushon_final_relevant_predictors_columns_names_for_correlations[[j]]
    corr_output_temp<-rbind (corr_output_temp,corr_temp)
    corr_output_temp <-round(corr_output_temp,2)
  }
  corr_output_temp$""<-"|"
  gibushon_final_corr_output<-cbind(gibushon_final_corr_output,corr_output_temp,row.names = NULL)
}
row.names(gibushon_final_corr_output)<-gibushon_final_relevant_predictors_columns_names_for_correlations

for(i in 1:(ncol(gibushon_final_corr_output)/4)){
  colnames(gibushon_final_corr_output)[i*4] <- ""
}
write.csv(gibushon_final_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_p_c_corr_output_0.25+.csv")

# Correlations predictors-predictors

gibushon_final_relevant_predictors_columns_for_correlations <- gibushon_final[c(824,836:841,843:850,1011:1016,1066)]
gibushon_final_relevant_predictors_columns_names_for_correlations <- c(colnames(gibushon_final[c(824,836:841,843:850,1011:1016,1066)]))
gibushon_final_relevant_criteria_columns_for_correlations <- gibushon_final[c(824,836:841,843:850,1011:1016,1066)]
gibushon_final_relevant_criteria_columns_names_for_correlations <- c(colnames(gibushon_final[c(824,836:841,843:850,1011:1016,1066)]))
gibushon_final_corr_output<-data.frame()[16,]

for(i in 1:length(gibushon_final_relevant_criteria_columns_names_for_correlations)){
  corr_output_temp<-c()
  for(j in 1:length(gibushon_final_relevant_predictors_columns_names_for_correlations)){
    corr_temp<-c()
    corr_try <- try(cor.test(as.numeric(gibushon_final_relevant_criteria_columns_for_correlations[[i]]),as.numeric(gibushon_final_relevant_predictors_columns_for_correlations[[j]]),use="pairwise.complete.obs"), silent=T)
    corr_temp$"predictor" <-ifelse(class(corr_try)=="try-error", NA, corr_try$estimate)
    corr_temp$p.value <-ifelse(class(corr_try)=="try-error", NA, corr_try$p.value)
    corr_temp$n <-(ifelse(class(corr_try)=="try-error", NA, corr_try$parameter+2))
    corr_temp<-data.frame(corr_temp)
    colnames(corr_temp)[1]<-gibushon_final_relevant_criteria_columns_names_for_correlations[i]
    row.names(corr_temp)<-gibushon_final_relevant_predictors_columns_names_for_correlations[[j]]
    corr_output_temp<-rbind (corr_output_temp,corr_temp)
    corr_output_temp <-round(corr_output_temp,2)
  }
  corr_output_temp$""<-"|"
  gibushon_final_corr_output<-cbind(gibushon_final_corr_output,corr_output_temp,row.names = NULL)
}
row.names(gibushon_final_corr_output)<-gibushon_final_relevant_predictors_columns_names_for_correlations

for(i in 1:(ncol(gibushon_final_corr_output)/4)){
  colnames(gibushon_final_corr_output)[i*4] <- ""
}
write.csv(gibushon_final_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_p_p_corr_output_0.25+.csv")


# Correlations criteria-criteria

gibushon_final_relevant_predictors_columns_for_correlations <- gibushon_final[c(1055:1061)]
gibushon_final_relevant_predictors_columns_names_for_correlations <- c(colnames(gibushon_final[c(1055:1061)]))
gibushon_final_relevant_criteria_columns_for_correlations <- gibushon_final[c(1055:1061)]
gibushon_final_relevant_criteria_columns_names_for_correlations <- c(colnames(gibushon_final[c(1055:1061)]))
gibushon_final_corr_output<-data.frame()[16,]

for(i in 1:length(gibushon_final_relevant_criteria_columns_names_for_correlations)){
  corr_output_temp<-c()
  for(j in 1:length(gibushon_final_relevant_predictors_columns_names_for_correlations)){
    corr_temp<-c()
    corr_try <- try(cor.test(as.numeric(gibushon_final_relevant_criteria_columns_for_correlations[[i]]),as.numeric(gibushon_final_relevant_predictors_columns_for_correlations[[j]]),use="pairwise.complete.obs"), silent=T)
    corr_temp$"predictor" <-ifelse(class(corr_try)=="try-error", NA, corr_try$estimate)
    corr_temp$p.value <-ifelse(class(corr_try)=="try-error", NA, corr_try$p.value)
    corr_temp$n <-(ifelse(class(corr_try)=="try-error", NA, corr_try$parameter+2))
    corr_temp<-data.frame(corr_temp)
    colnames(corr_temp)[1]<-gibushon_final_relevant_criteria_columns_names_for_correlations[i]
    row.names(corr_temp)<-gibushon_final_relevant_predictors_columns_names_for_correlations[[j]]
    corr_output_temp<-rbind (corr_output_temp,corr_temp)
    corr_output_temp <-round(corr_output_temp,2)
  }
  corr_output_temp$""<-"|"
  gibushon_final_corr_output<-cbind(gibushon_final_corr_output,corr_output_temp,row.names = NULL)
}
row.names(gibushon_final_corr_output)<-gibushon_final_relevant_predictors_columns_names_for_correlations

for(i in 1:(ncol(gibushon_final_corr_output)/4)){
  colnames(gibushon_final_corr_output)[i*4] <- ""
}
write.csv(gibushon_final_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_c_c_corr_output.csv")


# Semi-partial correlations predictors-criteria - seniority_ac

# http://faculty.cas.usf.edu/mbrannick/regression/Partial.html
# Run without seniority_days_ac at the predictores list.
# The code creates listwise deletion df (partial/semipartial correlation runs only on listwise deletion vars).

cbind.fill<-function(...){
  nm <- list(...) 
  nm<-lapply(nm, as.matrix)
  n <- max(sapply(nm, nrow)) 
  do.call(cbind, lapply(nm, function (x) 
    rbind(x, matrix(, n-nrow(x), ncol(x)))))
}

library(ppcor)
gibushon_final_relevant_predictors_columns_for_spcorrelations <- gibushon_final[c(4:11,14,19,21,23:24,1029:1031)]
gibushon_final_relevant_predictors_columns_names_for_spcorrelations <- c(colnames(gibushon_final[c(4:11,14,19,21,23:24,1029:1031)]))
gibushon_final_relevant_criteria_columns_for_spcorrelations <- gibushon_final[c(1018,1021,1027)]
gibushon_final_relevant_criteria_columns_names_for_spcorrelations <- c(colnames(gibushon_final[c(1018,1021,1027)]))
gibushon_final_spcorr_output<-data.frame()[15,]

for(i in 1:length(gibushon_final_relevant_criteria_columns_names_for_spcorrelations)){
  spcorr_output_temp<-c()
  for(j in 1:length(gibushon_final_relevant_predictors_columns_names_for_spcorrelations)){ 
    gibushon_final_complete <- c()
    gibushon_final_complete <- gibushon_final_relevant_criteria_columns_for_spcorrelations[[i]]
    gibushon_final_complete<-cbind.fill(gibushon_final_complete,gibushon_final_relevant_predictors_columns_for_spcorrelations[[j]])
    gibushon_final_complete <- cbind.fill(gibushon_final_complete,gibushon_final$seniority_days_ac)
    gibushon_final_complete <- na.omit(gibushon_final_complete)
    spcorr_temp<-c()
    spcorr_try <- try(spcor.test(as.numeric(gibushon_final_complete[,1]),as.numeric(gibushon_final_complete[,2]),as.numeric(gibushon_final_complete[,3])), silent=T)
    spcorr_temp$"predictor" <-ifelse(class(spcorr_try)=="try-error", NA, spcorr_try$estimate)
    spcorr_temp$p.value <-ifelse(class(spcorr_try)=="try-error", NA, spcorr_try$p.value)
    spcorr_temp$n <-(ifelse(class(spcorr_try)=="try-error", NA, spcorr_try$n))
    spcorr_temp<-data.frame(spcorr_temp)
    colnames(spcorr_temp)[1]<-gibushon_final_relevant_criteria_columns_names_for_spcorrelations[[i]]
    row.names(spcorr_temp)<-gibushon_final_relevant_predictors_columns_names_for_spcorrelations[j]
    spcorr_output_temp<-rbind (spcorr_output_temp,spcorr_temp)
    spcorr_output_temp <-round(spcorr_output_temp,2)
  }
  spcorr_output_temp$""<-"|"
  gibushon_final_spcorr_output<-cbind(gibushon_final_spcorr_output,spcorr_output_temp,row.names = NULL)
}
row.names(gibushon_final_spcorr_output)<-gibushon_final_relevant_predictors_columns_names_for_spcorrelations

for(i in 1:(ncol(gibushon_final_spcorr_output)/4)){
  colnames(gibushon_final_spcorr_output)[i*4] <- ""
}
write.csv(gibushon_final_spcorr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_spcorr_output_p-c_0.25+.csv")

cor.test(as.numeric(gibushon_final$sherut),as.numeric(gibushon_final$seniority_days_ac),use="pairwise.complete.obs",na.action = "na.exclude")
cor.test(as.numeric(gibushon_final$sherut),as.numeric(gibushon_final$ac_final_grade),use="pairwise.complete.obs",na.action = "na.exclude")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
# Range restriction.
# The variance of all the sample of candidates in the A.C. should be higher then the variance of the sample that I performed on it
# the validation study (after the various filtering)

library (descr)
library (psych)

try(cor.test(as.numeric(gibushon_final$ac_final_grade),as.numeric(gibushon_final$tkufatitam),use="pairwise.complete.obs"), silent=T)
round(describe (as.numeric(filtered_gibushon_civil_diff$ac_final_grade)),2)

gibushon_final$ac_final_grade_restricted<-gibushon_final$ac_final_grade

round(describe (as.numeric(gibushon_final$ac_final_grade_restricted)),2)

# Average number of repeated criteria (for n in range restriction Excel file).

library(dplyr)

counter = gibushon_final %>%
  rowwise() %>%
  mutate(tkufatit_nna = sum(!is.na(c(final.score.2015_zscore,final.score.2017_zscore,tkufatit_14_zscore,final.score.2018_zscore,row_score_2019_zscore))),
         am_nna = sum(!is.na(c(am_2010,am_2012,am_2015,am_2015_special,am_2018,am_2018_special))))

library (descr)
library (psych)

round(freq(ordered(counter$tkufatit_nna), plot = F,main=colnames(counter$tkufatit_nna),font=2),2)
notna_tkufatit_average<-(10*1+143*2+48*3+42*4+8*5)/(10+143+48+42+8)
round(notna_tkufatit_average,2)

round(freq(ordered(counter$am_nna), plot = F,main=colnames(counter$am_nna),font=2),2)
notna_am_average<-(125*1+46*2)/(125+46)
round(notna_am_average,2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
library (descr)
library (psych)

try(cor.test(as.numeric(gibushon_final$mini_sociometry_negative_percent),as.numeric(gibushon_final$tkufatitam),use="pairwise.complete.obs"), silent=T)
round(describe (as.numeric(filtered_gibushon_civil_diff$mini_sociometry_negative_percent)),2)

gibushon_final$mini_sociometry_negative_percent_restricted<-gibushon_final$mini_sociometry_negative_percent

round(describe (as.numeric(gibushon_final$mini_sociometry_negative_percent_restricted)),2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
# Regression analysis

library(QuantPsyc)  # lm.beta
library(car)  # vif, durbinWatsonTest
library(MASS)  # studres
library(lmSupport)  #lm.sumSquares
library(perturbR)  # colldiag
library(regtools)  # pairwise

# reg_tkufatitam <- lm(tkufatitam ~ ac_final_grade
#                      + mini_sociometry_negative_percent
#                      + sherut
#                      + seniority_days_ac,
#                      data=gibushon_final)
# summary(reg_tkufatitam)

# reg_tkufatitam <- lm(tkufatitam ~ ac_final_grade
#                      + mini_sociometry_negative_percent
#                      + rama
#                      + seniority_days_ac,
#                      data=gibushon_final)
# summary(reg_tkufatitam)

reg_tkufatitam <- lm(tkufatitam ~ ac_final_grade
                     + mini_sociometry_negative_percent
                     + seniority_days_ac,
                     data=gibushon_final)
summary(reg_tkufatitam)
# standardised coefficients
round(lm.beta(reg_tkufatitam),2)
# R
R_tkufatitam<-round(sqrt(0.061),2)
R_tkufatitam

# reg_tkufatitam <- lm(tkufatitam ~ ac_final_grade
#                      + mini_sociometry_negative_percent
#                      + mini_sociometry_positive_percent
#                      + seniority_days_ac,
#                      data=gibushon_final)
# summary(reg_tkufatitam)


# reg_am <- lm(am ~ ac_final_grade
#                      + mini_sociometry_negative_percent
#                      + sherut
#                      + seniority_days_ac,
#                      data=gibushon_final)
# summary(reg_am)

# reg_tkufatitam <- lm(tkufatitam ~ ac_final_grade
#                      + mini_sociometry_computed
#                      + seniority_days_ac,
#                      data=gibushon_final)
# summary(reg_tkufatitam)

# R
# R_tkufatitam<-round(sqrt(0.06805),2)
# R_tkufatitam

reg_am <- lm(am ~
               ac_final_grade
             + mini_sociometry_negative_percent
             + seniority_days_ac,
             data=gibushon_final)
summary(reg_am)
# standardised coefficients
round(lm.beta(reg_am),2)
# R
R_am<-round(sqrt(0.08267),2)
R_am

round(reg_am$coefficients,2)

# reg_am <- lm(am ~
#                ac_final_grade
#              + mini_sociometry_computed
#              + seniority_days_ac,
#              data=gibushon_final)
# summary(reg_am)


# reg_am <- lm(am ~
#                ac_final_grade
#              + mini_sociometry_negative_percent
#              + mini_sociometry_positive_percent
#              + seniority_days_ac,
#              data=gibushon_final)
# summary(reg_am)

#---------------------------------------------
# predicted_scores
gibushon_final$predicted_score_tkufatitam <- 
  round(predict(reg_tkufatitam, gibushon_final),2)

filtered_gibushon_civil_diff$seniority_days_ac<-0

filtered_gibushon_civil_diff$predicted_score_tkufatitam_unrestricted <- 
  round(predict(reg_tkufatitam, filtered_gibushon_civil_diff),2)

gibushon_final$predicted_score_am <- 
  round(predict(reg_am, gibushon_final),2)

filtered_gibushon_civil_diff$predicted_score_am_unrestricted <- 
  round(predict(reg_am, filtered_gibushon_civil_diff),2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
library (descr)
library (psych)
filtered_gibushon_civil_diff$predicted_score_tkufatitam_unrestricted<-as.numeric(filtered_gibushon_civil_diff$predicted_score_tkufatitam)
gibushon_final$predicted_score_tkufatitam_restricted<-as.numeric(gibushon_final$predicted_score_tkufatitam)
try(cor.test(as.numeric(gibushon_final$predicted_score_tkufatitam_restricted),as.numeric(gibushon_final$tkufatit),use="pairwise.complete.obs"), silent=T)
try(cor.test(as.numeric(gibushon_final$predicted_score_tkufatitam_restricted),as.numeric(gibushon_final$am),use="pairwise.complete.obs"), silent=T)
try(cor.test(as.numeric(gibushon_final$predicted_score_tkufatitam_restricted),as.numeric(unlist(gibushon_final$tkufatitam)),use="pairwise.complete.obs"), silent=T)
round(describe (as.numeric(filtered_gibushon_civil_diff$predicted_score_tkufatitam_unrestricted)),2)
round(describe (as.numeric(gibushon_final$predicted_score_tkufatitam_restricted)),2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
filtered_gibushon_civil_diff$predicted_score_am_unrestricted<-as.numeric(filtered_gibushon_civil_diff$predicted_score_am)
gibushon_final$predicted_score_am_restricted<-gibushon_final$predicted_score_am

# Don't add the predicted scores to the spcorr tables, 
# because the seniority was already cleaned from it.***

try(cor.test(as.numeric(gibushon_final$predicted_score_am_restricted),as.numeric(gibushon_final$tkufatit),use="pairwise.complete.obs"), silent=T)
try(cor.test(as.numeric(gibushon_final$predicted_score_am_restricted),as.numeric(gibushon_final$am),use="pairwise.complete.obs"), silent=T)
try(cor.test(as.numeric(gibushon_final$predicted_score_am_restricted),as.numeric(unlist(gibushon_final$tkufatitam)),use="pairwise.complete.obs"), silent=T)
round(describe (as.numeric(filtered_gibushon_civil_diff$HEBREW_copmlete)),2)
round(describe (as.numeric(gibushon_final$predicted_score_am_restricted)),2)

library(descr)
library(psych)
options(width = 71,max.print=30000)
freq(ordered(gibushon_final$ac_date), plot = F,main=colnames(gibushon_final$ac_date),font=2)
round(freq(ordered(as.numeric(unlist(gibushon_final$personality))), plot = F,main=colnames(gibushon_final$personality),font=2),2)
round(freq(ordered(as.numeric(unlist(gibushon_civil$personality))), plot = F,main=colnames(gibushon_final$personality),font=2),2)

#There isn't enough variability in the moked and personality variables, so I can't check it's influence on criteria.

dates<-filtered_gibushon_civil_diff$ac_date
dates<-as.Date(unlist(dates),format="%d/%m/%Y")
dates=="2004-12-21"
dates=="2020-11-30"
dates[162]<-NA
dates[463]<-NA

min(dates,na.rm = T)
max(dates,na.rm = T)

library(ggplot2)
library(scales)

ggplot(filtered_gibushon_civil_diff, aes(x=ac_final_grade)) + 
  geom_bar(na.rm = T,fill = "#FF6666") +
  xlab("ציון מרכז הערכה")+
  ylab("מס' מועמדים")+
  #  ggtitle("תרשים 1: התפלגות ציוני מרכז ההערכה")+
  stat_bin(binwidth=0.5, geom="text", aes(label=..count..), vjust=-0.5, hjust=0.45) +
  scale_x_continuous(breaks = seq(1, 6.5, 0.5))+
  scale_y_continuous(breaks = seq(0, 315, 50),limits = c(0,370))+
  #  theme(plot.title = element_text(hjust = 0.5, size = 16,color = "blue",face = "bold"))+
  theme(axis.title.x = element_text(size = 12,color = "#993333", face = "bold"))+
  theme(axis.title.y = element_text(size = 12,color = "#993333", face = "bold"))


#***********************assistance commands******************************

library(descr)
library(psych)
options(width = 71,max.print=30000)
round(freq(ordered(as.numeric(unlist(filtered_gibushon_civil_diff$ac_final_grade))), plot = F,main=colnames(filtered_gibushon_civil_diff$ac_final_grade),font=2),2)
round(freq(ordered(gibushon_final$ac_date), plot = F,main=colnames(gibushon_final$ac_date),font=2))
round(describe (as.numeric(filtered_gibushon_civil_diff$HEBREW_stanines)))
describe (as.numeric(filtered_gibushon_civil_diff$HEBREW_spacial_stanines_a))
describe (as.numeric(filtered_gibushon_civil_diff$HEBREW_spacial_stanines_b))
describe (as.numeric(filtered_gibushon_civil_diff$HEBREW_copmlete_zscore_internal))
round(describe (as.numeric(filtered_gibushon_civil_diff$dapar_stanines)))

describe (as.numeric(filtered_gibushon_civil_diff$final_impression))
describe (as.numeric(gibushon_final$final_impression))
describe (as.numeric(gibushon_final$ac_final_grade))


describe(as.numeric(filtered_gibushon_civil_diff$ac_final_grade))

filtered_gibushon_civil_diff$ac_final_grade<-ifelse(filtered_gibushon_civil_diff$ac_final_grade==9.9,NA,filtered_gibushon_civil_diff$ac_final_grade)

library(ggplot2)
library(scales)

ggplot(gibushon_final, aes(x=final_impression)) + 
  geom_bar(na.rm = T,fill = "#FF6666") +
  xlab("ציון מבחן מצב")+
  ylab("מס' מועמדים")+
  #  ggtitle("תרשים 1: התפלגות ציוני מבחן מצב")+
  stat_bin(binwidth=0.5, geom="text", aes(label=..count..), vjust=-0.5, hjust=0.45) +
  scale_x_continuous(breaks = seq(1, 6.5, 0.5))+
  scale_y_continuous(breaks = seq(0, 315, 50),limits = c(0,370))+
  #  theme(plot.title = element_text(hjust = 0.5, size = 16,color = "blue",face = "bold"))+
  theme(axis.title.x = element_text(size = 12,color = "#993333", face = "bold"))+
  theme(axis.title.y = element_text(size = 12,color = "#993333", face = "bold"))



ggplot(gibushon_final, aes(x=ac_final_grade)) + 
  geom_bar(na.rm = T,fill = "#FF6666") +
  xlab("ציון מרכז הערכה")+
  ylab("מס' מועמדים")+
  #  ggtitle("תרשים 1: התפלגות ציוני מרכז ההערכה")+
  stat_bin(binwidth=0.5, geom="text", aes(label=..count..), vjust=-0.5, hjust=0.45) +
  scale_x_continuous(breaks = seq(1, 6.5, 0.5))+
  scale_y_continuous(breaks = seq(0, 315, 50),limits = c(0,370))+
  #  theme(plot.title = element_text(hjust = 0.5, size = 16,color = "blue",face = "bold"))+
  theme(axis.title.x = element_text(size = 12,color = "#993333", face = "bold"))+
  theme(axis.title.y = element_text(size = 12,color = "#993333", face = "bold"))


#***********************assistance commands******************************
library(stringr)


library(descr)
library(psych)
options(width = 71,max.print=30000)
round(freq(ordered(as.numeric(unlist(gibushon_civil$decision))), plot = F,main=colnames(gibushon_civil$decision),font=2),2)
round(describe(as.numeric(unlist(gibushon$ac_final_grade))),2)
freq(gibushon_civil$job, plot = F,main=colnames(gibushon_civil$job),font=2)
freq(gibushon_civil$rama_gender, plot = F,main=colnames(gibushon_civil$rama_gender),font=2)
freq(gibushon_civil$gender, plot = F,main=colnames(gibushon_civil$gender),font=2)
freq(gibushon_civil$general_gender, plot = F,main=colnames(gibushon_civil$general_gender),font=2)

library(descr)
library(psych)

mode<-function(X)
{
  temp<-table (as.vector(X))
  names (temp)[temp==max(temp)]
}
options(width = 71,max.print=30000)
# # The 2 commands after the first command, are for cleaning the output file.
gibushon_civil_freq_relevant_columns<-colnames(gibushon_civil[c(828:ncol(gibushon_civil))])
out<-""
cat("", out, file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_frequencies.txt", sep="", append=F,fill = T)
suppressWarnings(for(i in gibushon_civil_freq_relevant_columns) {
  newresult1<-round(freq(ordered(as.numeric(unlist(gibushon_civil[[i]]))), plot = F,main=colnames(gibushon_civil[i]),font=2),2)
  newresult2<-round(describe(as.numeric(unlist(gibushon_civil[[i]]))),2)
  newresult3<-"mode="
  newresult4<-mode(gibushon_civil[[i]])
  newresult5<- "                                                                                               "
  newresult6<- "----------------------------------------------------------------------------"
  out <- capture.output(newresult1,newresult5,newresult2,newresult3,newresult4,newresult5,newresult6)
  out[1]<-""
  cat(colnames(gibushon_civil[i]),out, file="C:\Users\USER\Documents\MAMDA\Gibushon\gibushon_civil_frequencies.txt", append=T,fill = T)
})

prop.table(gibushon_civil$action_reason)

