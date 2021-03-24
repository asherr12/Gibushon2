
library(readr)
locale("he")

# Before the next column, split the file (in the file itself-not by code) to columns by: Data, Text to Columns...
gibushon_mamda<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/gibushon_mamda_2012_2019.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
class(gibushon_mamda)
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

# Remove checkmark form dplyr package, because it's in conflict with plyr.*********
library (plyr)
criteria_merged<-rename(criteria_merged,c("מעריך2015"="evaluator2015","עובד.מעריך...מ.א2015"="worker evaluator p.n.2015",
                                          "יחידה.מעריך2015"="unit.evaluator2015", "מעריך.נוסף2015"="additional.evaluator2015",
                                          "מעריך.נוסף...מ.א2015"="additional.evaluator.p.n2015",
                                          "מוערך2015"="evaluated2015","תקף.מתאריך2015"="valid.from.date.2015",
                                          "תקף.עד.תאריך2015"="valid.until.date.2015","טופס2015"="form2015",
                                          "טופס...מפתח2015"="keyform2015","סטטוס2015"="status2015","תת.סטטוס2015"="substatus2015",
                                          "דרגה.כתף2015"="shoulderrank2015","קב..עובדים2015"="workers.group2015",
                                          "תת.קבוצה.עובדים2015"="workers.sub.group2015","יחידה.ארגונית2015"="organizational.unit2015",
                                          "רמה.אירגונית.22015"="organizational.level22015","רמה.היררכית.032015"="hirarchic.level032015",
                                          "רמה.היררכית.052015"="hirarchic.level052015","רמה.היררכית.042015"="hirarchic.level042015",
                                          "ציון.מפקד.ישיר2015"="direct.commander.score2015", "ציון.מפקד.ממונה2015"="apointed.commander.score2015",
                                          "ציון.יחסי.ממונה2015"="superior.relative.score2015",
                                          "ציון.יחסי.ישיר2015"="direct.relative.score2015", "גודל.קבוצה2015"="group.size.2015",
                                          "ציון.סופי2015"="final.score.2015",
                                          "מעריך2017"="evaluator2017","עובד.מעריך...מ.א2017"="worker evaluator p.n.2017",
                                          "יחידה.מעריך2017"="unit.evaluator2017","מעריך.נוסף2017"="additional.evaluator2017",
                                          "מעריך.נוסף...מ.א2017"="additional.evaluator.p.n2017",
                                          "מוערך2017"="evaluated2017","תקף.מתאריך2017"="valid.from.date.2017",
                                          "תקף.עד.תאריך2017"="valid.until.date.2017","טופס2017"="form2017",
                                          "טופס...מפתח2017"="keyform2017","סטטוס2017"="status2017","תת.סטטוס2017"="substatus2017",
                                          "דרגה.כתף2017"="shoulderrank2017","קב..עובדים2017"="workers.group2017",
                                          "תת.קבוצה.עובדים2017"="workers.sub.group2017","יחידה.ארגונית2017"="organizational.unit2017",
                                          "רמה.אירגונית.22017"="organizational.level2017","רמה.היררכית.032017"="hirarchic.level032017",
                                          "רמה.היררכית.052017"="hirarchic.level052017","רמה.היררכית.042017"="hirarchic.level042017",
                                          "ציון.מפקד.ישיר2017"="direct.commander.score2017", "ציון.מפקד.ממונה2017"="apointed.commander.score2017",
                                          "ציון.יחסי.ממונה2017"="superior.relative.score2017",
                                          "ציון.יחסי.ישיר2017"="direct.relative.score2017", "גודל.קבוצה2017"="group.size.2017",
                                          "ציון.סופי2017"="final.score.2017",
                                          "kod2017ehidat_al_am_2015"="kodyehidat_al_am_2015","shem2017ehidat_al_am_2015"="shemyehidat_al_am_2015",
                                          "m2017uhedet_am_2015"="myuhedet_am_2015","sd_mist2017en_am_2015"="sd_mistyen_am_2015",
                                          "metuknan_mist2017en_am_2015"="metuknan_mistyen_am_2015","memusa_kvusa_mist2017en_am_2015"="memusa_kvusa_mistyen_am_2015",
                                          "sd_kvusa_mist2017en_am_2015"="sd_kvusa_mistyen_am_2015"))

criteria_merged$TaarichHavara_am_2015<-as.Date(criteria_merged$TaarichHavara_am_2015,format="%d/%m/%Y")
criteria_merged$TaarichHavara_cf_2015<-as.Date(criteria_merged$TaarichHavara_cf_2015,format="%d/%m/%Y")

#Remove duplicate rows from criteria_merged.
n_occur<-data.frame(table(criteria_merged$personal_number))
n_occur[n_occur$Freq>1,]
criteria_merged <- criteria_merged[!duplicated(criteria_merged[,c("personal_number")]),]
n_occur<-data.frame(table(criteria_merged$personal_number))
n_occur[n_occur$Freq>1,]

# Merge predictors and criteria
all_policemen_07.09.2020<-read_csv("Q:/04_Mehkar/18_asher/all_policemen_07.09.2020.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colnames(all_policemen_07.09.2020)[1] <- "personal_number"
colnames(all_policemen_07.09.2020)[2] <- "id"
colnames(all_policemen_07.09.2020)[29] <- "job"
filtered_all_policemen_07.09.2020 <- all_policemen_07.09.2020 %>%
  select (personal_number,id,job)

sum(is.na(criteria_merged$personal_number))

filtered_criteria_merged=criteria_merged%>%
  filter(!is.na(personal_number))

criteria_merged_all_policemen<-merge(filtered_criteria_merged,filtered_all_policemen_07.09.2020,by=c("personal_number"), all.x=T, all.y=F,sort = FALSE)
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

gibushon<-gibushon_mamda_criteria

# Clean gibushon file from erroneous data.
gibushon$direct.commander.score2015[gibushon$direct.commander.score2015==0]<-NA
gibushon$apointed.commander.score2015[gibushon$apointed.commander.score2015==0]<-NA
gibushon$group.size.2015[gibushon$group.size.2015==0]<-NA
gibushon$final.score.2015[gibushon$final.score.2015==0]<-NA
gibushon$direct.commander.score2017[gibushon$direct.commander.score2017==0]<-NA
gibushon$apointed.commander.score2017[gibushon$apointed.commander.score2017==0]<-NA
gibushon$group.size.2017[gibushon$group.size.2017==0]<-NA
gibushon$final.score.2017[gibushon$final.score.2017==0]<-NA

# Locating and handling criteria that their dates are before/not enough after the appointment date.
# gibushon$GibDate<-as.Date(unlist(gibushon$GibDate),format="%d/%m/%Y")
gibushon$date.tkufatit_14<-"26/01/2015"
gibushon$date.tkufatit_14<-as.Date(unlist(gibushon$date.tkufatit_14),format="%d/%m/%Y")
gibushon$date.tkufatit_15<-"01/06/2016"
gibushon$date.tkufatit_15<-as.Date(gibushon$date.tkufatit_15,format="%d/%m/%Y")
gibushon$date.period.eval.2015<-"01/12/2015"
gibushon$date.period.eval.2015<-as.Date(gibushon$date.period.eval.2015,format="%d/%m/%Y")
gibushon$date.period.eval.2017<-"01/05/2017"
gibushon$date.period.eval.2017<-as.Date(gibushon$date.period.eval.2017,format="%d/%m/%Y")
gibushon$date.period.eval.2018<-"31/12/2018"
gibushon$date.period.eval.2018<-"31/12/2018"
gibushon$date.tkufatit_2019<-"30/05/2019"
gibushon$date.period.eval.2018<-as.Date(gibushon$date.period.eval.2018,format="%d/%m/%Y")
gibushon$TaarichHavara_am_2010<-as.Date(unlist(gibushon$TaarichHavara_am_2010),format="%d/%m/%Y")
gibushon$TaarichHavara_am_2012<-as.Date(unlist(gibushon$TaarichHavara_am_2012),format="%d/%m/%Y")
gibushon$TaarichHavara_am_2015<-as.Date(unlist(gibushon$TaarichHavara_am_2015),format="%d/%m/%Y")
gibushon$TaarichHavara_am_2018<-as.Date(unlist(gibushon$TaarichHavara_am_2018),format="%d/%m/%Y")
gibushon$TaarichHavara_cf_2010<-as.Date(unlist(gibushon$TaarichHavara_cf_2010),format="%d/%m/%Y")
gibushon$TaarichHavara_cf_2012<-as.Date(unlist(gibushon$TaarichHavara_cf_2012),format="%d/%m/%Y")
gibushon$TaarichHavara_cf_2015<-as.Date(unlist(gibushon$TaarichHavara_cf_2015),format="%d/%m/%Y")
names(gibushon)[names(gibushon)=="tarich_cf_2018"]<-"TaarichHavara_cf_2018"
gibushon$TaarichHavara_cf_2018<-as.Date(unlist(gibushon$TaarichHavara_cf_2018),format="%d/%m/%Y")
gibushon$date.tkufatit_2019<-as.Date(unlist(gibushon$date.tkufatit_2019),format="%d/%m/%Y")

gibushon<-as.data.frame(gibushon)

library(dplyr)
gibushon = gibushon %>%
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

#Remove spaces.

library(stringr)
gibushon[]<-lapply(gibushon,str_trim)
is.na(gibushon)<-gibushon==''

class(gibushon)

gibushon <- as.data.frame(gibushon)

#***********************assistance commands******************************

library(descr)
library(psych)
options(width = 71,max.print=30000)
round(freq(ordered(as.numeric(unlist(gibushon$personality))), plot = F,main=colnames(gibushon$personality),font=2),2)
round(describe(as.numeric(unlist(gibushon$ac_final_grade))),2)



