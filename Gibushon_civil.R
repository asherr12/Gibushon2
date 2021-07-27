
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
# Before next command, verify that columns in the csv file doesn't contain sings of - or / or spaces or other signs in columns names/values (replace spaces by underline).***************************8
all_policemen_14.07.2021<-read_csv("Q:/04_Mehkar/18_asher/all_policemen_14.07.2021.csv",locale = locale(date_names = "he", encoding = "Windows-1255"))
colnames(all_policemen_14.07.2021)[1] <- "personal_number"
colnames(all_policemen_14.07.2021)[2] <- "id"
colnames(all_policemen_14.07.2021)[12] <- "job_sector4"
colnames(all_policemen_14.07.2021)[13] <- "standard_job"

library(dplyr)
filtered_all_policemen_14.07.2021 <- all_policemen_14.07.2021 %>%
  select (personal_number,id,job_sector4,standard_job)
nrow(filtered_all_policemen_14.07.2021)
n_occur<-data.frame(table(filtered_all_policemen_14.07.2021$personal_number))
n_occur[n_occur$Freq>1,]
filtered_all_policemen_14.07.2021 <- 
  filtered_all_policemen_14.07.2021[!duplicated(filtered_all_policemen_14.07.2021[,c("personal_number")]),]%>%
  filter(!is.na(id))%>%
  filter(!is.na(personal_number))
nrow(filtered_all_policemen_14.07.2021)

#tifkud

tifkud_14.07.2021<-read_csv("Q:/04_Mehkar/18_asher/tifkud_14.07.2021.csv",locale = locale(date_names = "he", encoding = "Windows-1255"))
colnames(tifkud_14.07.2021)[1] <- "personal_number"
colnames(tifkud_14.07.2021)[17] <- "tifkud"
filtered_tifkud_14.07.2021 <- tifkud_14.07.2021 %>%
  select (personal_number,tifkud)
filtered_tifkud_14.07.2021$tifkud[filtered_tifkud_14.07.2021$tifkud==0]<-NA
nrow(filtered_tifkud_14.07.2021)
nrow(filtered_tifkud_14.07.2021)
n_occur<-data.frame(table(filtered_tifkud_14.07.2021$personal_number))
n_occur[n_occur$Freq>1,]

# masluli_sherut

masluli_sherut_14.07.2021<-read_csv("Q:/04_Mehkar/18_asher/masluli_sherut_14.07.2021.csv",locale = locale(date_names = "he", encoding = "Windows-1255"))
colnames(masluli_sherut_14.07.2021)[1] <- "personal_number"
colnames(masluli_sherut_14.07.2021)[3] <- "beinaim_index"
colnames(masluli_sherut_14.07.2021)[4] <- "kovea_index"
filtered_masluli_sherut_14.07.2021 <- masluli_sherut_14.07.2021 %>%
  select (personal_number,beinaim_index,kovea_index)
nrow(filtered_masluli_sherut_14.07.2021)
n_occur<-data.frame(table(filtered_masluli_sherut_14.07.2021$personal_number))
n_occur[n_occur$Freq>1,]

# courses

courses_14.07.2021<-read_csv("Q:/04_Mehkar/18_asher/courses_14.07.2021.csv",locale = locale(date_names = "he", encoding = "Windows-1255"))
colnames(courses_14.07.2021)[1] <- "personal_number"
colnames(courses_14.07.2021)[7] <- "course_code"
colnames(courses_14.07.2021)[8] <- "course"
colnames(courses_14.07.2021)[10] <- "course_end_date"
colnames(courses_14.07.2021)[11] <- "course_fail_pass"
colnames(courses_14.07.2021)[12] <- "course_score"
class(courses_14.07.2021)
courses_14.07.2021 <- as.data.frame(courses_14.07.2021)

filtered_courses_14.07.2021 = courses_14.07.2021 %>%
  select (personal_number,course_code,course,course_end_date,course_fail_pass,course_score)%>%
  filter(course_code==10026 | # Basic policemen course
           course_code==10036 |
           course_code==11003 |
           course_code==12001 |
           course_code==12012 |
           course_code==12047 | 
           course_code==12423 |
           course_code==12430 |
           course_code==12507 |
           course_code==12545 |
           course_code==13202 |
           course_code==15124 |
           course_code==15637 |
           course_code==50703 |
           course_code==50724 |
           course_code==15931 |
           course_code==15932 |  
           course_code==15933) %>%  # Basic course fighter unit 33
  mutate(course_fail_pass=gsub("עבר","pass",course_fail_pass),
         course_fail_pass=gsub("נכשל","fail",course_fail_pass),
         course_score=gsub("עבר",NA,course_score),
         course_score=as.numeric(course_score),
         course_score=course_score[course_score==0]<-NA,
         course_score=course_score[course_score==1]<-NA,
         course_score = ifelse(course_score>100,NA,course_score))

library(descr)
library(psych)

freq(filtered_courses_14.07.2021$course_score, plot = F,main=colnames(filtered_courses_14.07.2021$course_score),font=2)

nrow(filtered_courses_14.07.2021)
class(filtered_courses_14.07.2021)
#filtered_courses_14.07.2021<-as.data.frame(filtered_courses_14.07.2021)
n_occur<-data.frame(table(filtered_courses_14.07.2021$personal_number))
n_occur[n_occur$Freq>1,]
class(filtered_courses_14.07.2021$course_end_date)
filtered_courses_14.07.2021$course_end_date<-as.Date(as.character(filtered_courses_14.07.2021$course_end_date),format="%d/%m/%Y")
library(data.table)
filtered_courses_14.07.2021<-setDT(filtered_courses_14.07.2021)[,.SD[which.max(course_end_date)],keyby=personal_number]
n_occur<-data.frame(table(filtered_courses_14.07.2021$personal_number))
n_occur[n_occur$Freq>1,]
nrow(filtered_courses_14.07.2021)

# demographics

# standard job and job_sector4 are in all_policemen file
demographics_14.07.2021<-read_csv("Q:/04_Mehkar/18_asher/demographics_14.07.2021.csv",locale = locale(date_names = "he", encoding = "Windows-1255"))
colnames(demographics_14.07.2021)[1] <- "personal_number"
colnames(demographics_14.07.2021)[9] <- "marital_status"
colnames(demographics_14.07.2021)[10] <- "gender"
colnames(demographics_14.07.2021)[11] <- "religion"
colnames(demographics_14.07.2021)[12] <- "age"
colnames(demographics_14.07.2021)[13] <- "education"

filtered_demographics_14.07.2021 <- demographics_14.07.2021 %>%
  select (personal_number,marital_status,gender,relign,age,education)%>%
  filter(!is.na(personal_number))
nrow(filtered_demographics_14.07.2021)
n_occur<-data.frame(table(filtered_demographics_14.07.2021$personal_number))
n_occur[n_occur$Freq>1,]

filtered_all_policemen_14.07.2021_tifkud <- merge(filtered_all_policemen_14.07.2021, filtered_tifkud_14.07.2021,by=c("personal_number"), all.x=T, all.y=F,sort = FALSE)
filtered_all_policemen_14.07.2021_tifkud_masluli_sherut <- merge(filtered_all_policemen_14.07.2021_tifkud, filtered_masluli_sherut_14.07.2021,by=c("personal_number"), all.x=T, all.y=F,sort = FALSE)
filtered_all_policemen_14.07.2021_tifkud_masluli_sherut_courses <- merge(filtered_all_policemen_14.07.2021_tifkud_masluli_sherut, filtered_courses_14.07.2021,by=c("personal_number"), all.x=T, all.y=F,sort = FALSE)
filtered_all_policemen_14.07.2021_tifkud_masluli_sherut_courses_demographics <- merge(filtered_all_policemen_14.07.2021_tifkud_masluli_sherut_courses, filtered_demographics_14.07.2021,by=c("personal_number"), all.x=T, all.y=F,sort = FALSE)

sum(is.na(criteria_merged$personal_number))

filtered_criteria_merged=criteria_merged%>%
  filter(!is.na(personal_number))%>%
  filter(personal_number!=1)
sum(is.na(filtered_criteria_merged$personal_number))

criteria_merged_all_policemen<-merge(filtered_criteria_merged,filtered_all_policemen_14.07.2021_tifkud_masluli_sherut_courses_demographics,by=c("personal_number"), all.x=T, all.y=F,sort = FALSE)
nrow(criteria_merged_all_policemen)
sum(is.na(criteria_merged_all_policemen$id))

filtered_criteria_merged_all_policemen=criteria_merged_all_policemen%>%
  filter(!is.na(id))
sum(is.na(filtered_criteria_merged_all_policemen$id))

class(filtered_criteria_merged_all_policemen$id)
# criteria_merged_all_policemen$id<-as.numeric(criteria_merged_all_policemen$id)
sum(is.na(gibushon_mamda$id))
filtered_gibushon_mamda=gibushon_mamda%>%
  filter(!is.na(id))
sum(is.na(filtered_gibushon_mamda$id))

class(filtered_gibushon_mamda$id)
# gibushon_mamda$id<-as.numeric(gibushon_mamda$id)
sum(is.na(filtered_gibushon_mamda$personal_number))

filtered_gibushon_mamda$personal_number<-NULL

gibushon_mamda_criteria <- merge(filtered_gibushon_mamda, filtered_criteria_merged_all_policemen,by=c("id"), all.x=T, all.y=F,sort = FALSE)
class(gibushon_mamda_criteria)
#gibushon_mamda_criteria<-as.data.frame(gibushon_mamda_criteria)

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

# Most of the negative gaps (or very low gaps) are because of missing values of criteria and some of them are
# because errors in IDs. That's the reason of the details in the next commands.

library(dplyr)
gibushon_mamda_criteria = gibushon_mamda_criteria %>%
  rowwise() %>%
  mutate(date.tkufatit_14_diff = ifelse(!is.na(tkufatit_14) & (date.tkufatit_14-GibDate)>0,(date.tkufatit_14-GibDate),NA),
         date.tkufatit_15_diff = ifelse(!is.na(tkufatit_15) & (date.tkufatit_15-GibDate)>0,(date.tkufatit_15-GibDate),NA),
         date.period.eval.2015_diff = ifelse(!is.na(date.period.eval.2015) & (date.period.eval.2015-GibDate)>0,(date.period.eval.2015-GibDate),NA),
         date.period.eval.2017_diff = ifelse(!is.na(date.period.eval.2017) & (date.period.eval.2017-GibDate)>0,(date.period.eval.2017-GibDate),NA),
         date.period.eval.2018_diff = ifelse(!is.na(date.period.eval.2018) & (date.period.eval.2018-GibDate)>0,(date.period.eval.2018-GibDate),NA),
         TaarichHavara_am_2010_diff = ifelse(!is.na(TaarichHavara_am_2010) & (TaarichHavara_am_2010-GibDate)>0,(TaarichHavara_am_2010-GibDate),NA),
         TaarichHavara_am_2012_diff = ifelse(!is.na(TaarichHavara_am_2012) & (TaarichHavara_am_2012-GibDate)>0,(TaarichHavara_am_2012-GibDate),NA),
         TaarichHavara_am_2015_diff = ifelse(!is.na(TaarichHavara_am_2015) & (TaarichHavara_am_2015-GibDate)>0,(TaarichHavara_am_2015-GibDate),NA),
         TaarichHavara_am_2018_diff = ifelse(!is.na(TaarichHavara_am_2018) & (TaarichHavara_am_2018-GibDate)>0,(TaarichHavara_am_2018-GibDate),NA),
         TaarichHavara_cf_2010_diff = ifelse(!is.na(TaarichHavara_cf_2010) & (TaarichHavara_cf_2010-GibDate)>0,(TaarichHavara_cf_2010-GibDate),NA),
         TaarichHavara_cf_2012_diff = ifelse(!is.na(TaarichHavara_cf_2012) & (TaarichHavara_cf_2012-GibDate)>0,(TaarichHavara_cf_2012-GibDate),NA),
         TaarichHavara_cf_2015_diff = ifelse(!is.na(TaarichHavara_cf_2015) & (TaarichHavara_cf_2015-GibDate)>0,(TaarichHavara_cf_2015-GibDate),NA),
         TaarichHavara_cf_2018_diff = ifelse(!is.na(TaarichHavara_cf_2018) & (TaarichHavara_cf_2018-GibDate)>0,(TaarichHavara_cf_2018-GibDate),NA),
         date.tkufatit_2019_diff = ifelse(!is.na(date.tkufatit_2019) & (date.tkufatit_2019-GibDate)>0,(date.tkufatit_2019-GibDate),NA))

#RAMA
rama_2012_2019<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/rama_2012_2019.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colnames(rama_2012_2019)[2] <- "id"
colnames(rama_2012_2019)[4] <- "rama_gender"
colnames(rama_2012_2019)[5] <- "rama_religion"
colnames(rama_2012_2019)[7] <- "rama_age"
colnames(rama_2012_2019)[8] <- "rama_date"
colnames(rama_2012_2019)[10] <- "rama_score"

class(rama_2012_2019$rama_age)
rama_2012_2019$rama_age<-as.numeric(rama_2012_2019$rama_age)
class(rama_2012_2019$rama_score)
rama_2012_2019$rama_score<-as.numeric(rama_2012_2019$rama_score)

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
n_occur[n_occur$Freq>1,]

quit$action_end_date<-data.frame(lapply(quit$action_end_date,function(x) {gsub("9999","2021",x)}))

library(dplyr)
quit_filtered=quit%>%
  select(id,action_reason)

class(quit_filtered$id)
quit_filtered$id<-as.numeric(quit_filtered$id)
class(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components$id)
gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit <- merge(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components,quit_filtered,by=c("id"), all.x=T, all.y=F,sort = FALSE)
gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit<-as.data.frame(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit)

#absences

absences_2012_2013<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/absences_2012_2013.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colnames(absences_2012_2013)[1] <- "personal_number"
colnames(absences_2012_2013)[2] <- "type"
colnames(absences_2012_2013)[3] <- "hiyuv_days"
colnames(absences_2012_2013)[4] <- "non_hiyuv_days"
library (data.table)
absences_2012_2013<-data.frame(lapply(absences_2012_2013,function(x) {gsub("חופשה","days_off",x)}))
absences_2012_2013<-data.frame(lapply(absences_2012_2013,function(x) {gsub("מחלה","sick_days",x)}))
class(absences_2012_2013$hiyuv_days)
absences_2012_2013$hiyuv_days<-as.numeric(absences_2012_2013$hiyuv_days)
class(absences_2012_2013$non_hiyuv_days)
absences_2012_2013$non_hiyuv_days<-as.numeric(absences_2012_2013$non_hiyuv_days)
absences_2012_2013$days_2012_2013<-absences_2012_2013$hiyuv_days
class(absences_2012_2013$days_2012_2013)

absences_2014_2019<-read_csv("Q:/04_Mehkar/18_asher/Gibushon/absences_2014_2019.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
colnames(absences_2014_2019)[1] <- "personal_number"
colnames(absences_2014_2019)[2] <- "type"
colnames(absences_2014_2019)[3] <- "days_2014_2019"
library (data.table)
absences_2014_2019<-data.frame(lapply(absences_2014_2019,function(x) {gsub("חופשה","days_off",x)}))
absences_2014_2019<-data.frame(lapply(absences_2014_2019,function(x) {gsub("מחלה","sick_days",x)}))
class(absences_2014_2019$days_2014_2019)
absences_2014_2019$days_2014_2019<-as.numeric(as.character(absences_2014_2019$days_2014_2019))

filtered_absences_2012_2013_sick_days=absences_2012_2013%>%
  filter(type=="sick_days")%>%
  select(personal_number,days_2012_2013)
colnames(filtered_absences_2012_2013_sick_days)[2]<-"sick_days_2012_2013"

filtered_absences_2012_2013_days_off=absences_2012_2013%>%
  filter(type=="days_off")%>%
  select(personal_number,days_2012_2013)
colnames(filtered_absences_2012_2013_days_off)[2]<-"days_off_2012_2013"

filtered_absences_2014_2019_sick_days=absences_2014_2019%>%
  filter(type=="sick_days")%>%
  select(personal_number,days_2014_2019)
colnames(filtered_absences_2014_2019_sick_days)[2]<-"sick_days_2014_2019"

filtered_absences_2014_2019_days_off=absences_2014_2019%>%
  filter(type=="days_off")%>%
  select(personal_number,days_2014_2019)
colnames(filtered_absences_2014_2019_days_off)[2]<-"days_off_2014_2019"

filtered_absences_2012_2013_sick_days_days_off <- merge(filtered_absences_2012_2013_sick_days,filtered_absences_2012_2013_days_off,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
filtered_absences_2014_2019_sick_days_days_off <- merge(filtered_absences_2014_2019_sick_days,filtered_absences_2014_2019_days_off,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)
filtered_absences_2012_2013_2014_2019_sick_days_days_off <- merge(filtered_absences_2012_2013_sick_days_days_off,filtered_absences_2014_2019_sick_days_days_off,by=c("personal_number"), all.x=T, all.y=T,sort = FALSE)

absences <- filtered_absences_2012_2013_2014_2019_sick_days_days_off

# detach plyr and dplyr packages and reattach dplyr************
library(dplyr)
absences = absences %>%
  rowwise() %>%
  mutate(sick_days = sum(sick_days_2012_2013,sick_days_2014_2019,na.rm = T),
         days_off = sum(days_off_2012_2013,days_off_2014_2019,na.rm = T))%>%
  select(personal_number,sick_days,days_off)

n_occur<-data.frame(table(absences$personal_number))
n_occur[n_occur$Freq>1,]

filtered_all_policemen_14.07.2021_id = filtered_all_policemen_14.07.2021%>%
  select(personal_number,id)%>%
  filter(!is.na(id))

absences <- merge(absences,filtered_all_policemen_14.07.2021_id,by=c("personal_number"), all.x=T, all.y=F,sort = FALSE)

library(dplyr)
absences_filtered=absences%>%
  select(id,sick_days,days_off)

class(absences_filtered$id)
# absences_filtered$id<-as.numeric(absences_filtered$id)
class(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit$id)
gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit_absences <- merge(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit,absences_filtered,by=c("id"), all.x=T, all.y=F,sort = FALSE)
class(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit_absences)
#gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit_absences<-as.data.frame(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit_absences)

# languages (Amharic - Ethiopian origin)

languages_14.07.2021<-read_csv("Q:/04_Mehkar/18_asher/languages_14.07.2021.csv",locale = locale(date_names = "he", encoding = "Windows-1255"))
colnames(languages_14.07.2021)[1] <- "personal_number"
colnames(languages_14.07.2021)[2] <- "id"
colnames(languages_14.07.2021)[9] <- "language"
class(languages_14.07.2021)
languages_14.07.2021<-as.data.frame(languages_14.07.2021)

filtered_languages_14.07.2021 <- languages_14.07.2021 %>%
  select (personal_number,id,language)%>%
  filter(!is.na(personal_number))%>%
  filter(grepl('אמהרית',language))

filtered_languages_14.07.2021$personal_number<-NULL

nrow(filtered_languages_14.07.2021)
n_occur<-data.frame(table(filtered_languages_14.07.2021$personal_number))
n_occur[n_occur$Freq>1,]

class(filtered_languages_14.07.2021$id)
class(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit_absences$id)
gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit_absences_language <- merge(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit_absences,filtered_languages_14.07.2021,by=c("id"), all.x=T, all.y=F,sort = FALSE)
class(gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit_absences_language)

# courses_soc

# courses_soc_112020<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/soc/courses_soc_112020.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
# colnames(courses_soc_112020)
# colnames(courses_soc_112020)[1] <- "id"
# colnames(courses_soc_112020)[3] <- "personal_number"
# 
# courses_soc_112020[11:13]<-NULL
# colnames(courses_soc_112020)
# 
# nrow(courses_soc_112020)
# 
# library(dplyr)
# courses_soc_112020 <- courses_soc_112020 %>%
#     filter(GroupId==10026 |
#            GroupId==10036 |
#            GroupId==11003 |
#            GroupId==12001 |
#            GroupId==12012 |
#            GroupId==12047 |
#            GroupId==12423 |
#            GroupId==12430 |
#            GroupId==12507 |
#            GroupId==12545 |
#            GroupId==13202 |
#            GroupId==15124 |
#            GroupId==15637 |
#            GroupId==50703 |
#            GroupId==50724 |
#            GroupId==15931 |
#            GroupId==15932 |
#            GroupId==15933)
# 
# nrow(courses_soc_112020)
# 
# library(dplyr)
# filtered_courses_soc_112020<-courses_soc_112020 %>%
#   select(GroupId,personal_number,Tzyun)
# 
# library(data.table)
# max<-setDT(filtered_courses_soc_112020)[, .N, personal_number]
# n=max(max$N)
# 
# for(i in 1:n){
#   filtered_courses_soc_112020 <- cbind(filtered_courses_soc_112020, data.frame(new=character(),stringsAsFactors=FALSE))
# }
# 
# try(
#   for(i in 1:nrow(filtered_courses_soc_112020)){
#     for (j in 4:ncol(filtered_courses_soc_112020)) {
#       if(filtered_courses_soc_112020[(i),]$personal_number==filtered_courses_soc_112020[(i+1),]$personal_number){
#         filtered_courses_soc_112020[i,j]<-filtered_courses_soc_112020[(i+1),]$Tzyun
#         filtered_courses_soc_112020 <- filtered_courses_soc_112020[-(i+1),]
#       }
#     }
#   }, silent=TRUE)
# 
# nrow(filtered_courses_soc_112020)
# 
# number<-ncol(filtered_courses_soc_112020)
# 
# filtered_courses_soc_112020[,number]<-NULL
# 
# features <- c(sprintf("Tzyun%1d", seq(1,(ncol(filtered_courses_soc_112020)-2))))
# 
# colnames(filtered_courses_soc_112020)[3:ncol(filtered_courses_soc_112020)] <- features
# 
# class(filtered_courses_soc_112020)
# 
# filtered_courses_soc_112020<-as.data.frame(filtered_courses_soc_112020)
# class(filtered_courses_soc_112020$Tzyun8)
# filtered_courses_soc_112020$Tzyun8<-as.numeric(filtered_courses_soc_112020$Tzyun8)
# class(filtered_courses_soc_112020$Tzyun8)
# 
# library(descr)
# library(psych)
# freq(ordered(round(filtered_courses_soc_112020$Tzyun8,2)), plot = F,main=colnames(filtered_courses_soc_112020$Tzyun8),font=2)
# filtered_courses_soc_112020[10:16]<-NULL
# 
# CreateDate_courses_soc<-read.csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Files from Ronen/soc/CreateDate_courses_soc.csv",header=T, sep=",", quote="\"", dec=".", fill=T, comment.char="")
# 
# filtered_courses_soc_112020 <-
#   merge(filtered_courses_soc_112020,CreateDate_courses_soc,by=c("GroupId"), all.x=T, all.y=F,sort = FALSE)
# class(filtered_courses_soc_112020$CreateDate_courses_soc)
# head(filtered_courses_soc_112020$CreateDate_courses_soc)
# filtered_courses_soc_112020$CreateDate_courses_soc<-as.Date(as.factor(filtered_courses_soc_112020$CreateDate_courses_soc),format="%d/%m/%Y")
# class(filtered_courses_soc_112020$CreateDate_courses_soc)
# head(filtered_courses_soc_112020$CreateDate_courses_soc)
# n_occur<-data.frame(table(filtered_courses_soc_112020$personal_number))
# n_occur[n_occur$Freq>1,]
# library(data.table)
# filtered_courses_soc_112020<-setDT(filtered_courses_soc_112020)[,.SD[which.max(CreateDate_courses_soc)],keyby=personal_number]
# n_occur<-data.frame(table(filtered_courses_soc_112020$personal_number))
# n_occur[n_occur$Freq>1,]
# 
# colnames(filtered_courses_soc_112020)[3]<-"RAvg1_courses_soc"
# colnames(filtered_courses_soc_112020)[4]<-"RAvg2_courses_soc"
# colnames(filtered_courses_soc_112020)[5]<-"RAvg3_courses_soc"
# colnames(filtered_courses_soc_112020)[6]<-"RAvg4_courses_soc"
# colnames(filtered_courses_soc_112020)[7]<-"RAvg5_courses_soc"
# colnames(filtered_courses_soc_112020)[8]<-"NPct1_courses_soc"
# colnames(filtered_courses_soc_112020)[9]<-"NPct2_courses_soc"
# filtered_courses_soc_112020$RTeken1_courses_soc<-NA
# filtered_courses_soc_112020$RTeken2_courses_soc<-NA
# filtered_courses_soc_112020$RTeken3_courses_soc<-NA
# filtered_courses_soc_112020$RTeken4_courses_soc<-NA
# filtered_courses_soc_112020$RTeken5_courses_soc<-NA
# filtered_courses_soc_112020$NPct1_courses_soc<-
#   round(as.numeric(filtered_courses_soc_112020$NPct1_courses_soc))
# filtered_courses_soc_112020$NPct2_courses_soc<-
#   round(as.numeric(filtered_courses_soc_112020$NPct2_courses_soc))
# 
# GroupId <- filtered_courses_soc_112020 %>%
#   group_split (GroupId)
# class(GroupId)
# GroupId<-as.list(GroupId)
# class(GroupId)
# length(GroupId)
# 
# for (i in 1:length(GroupId)) {
#   for (j in 1:length(GroupId[[i]]$RAvg1_courses_soc)){
#     GroupId[[i]]$RAvg1_courses_soc<-as.numeric(GroupId[[i]]$RAvg1_courses_soc)
#     GroupId[[i]]$RTeken1_courses_soc[j]<-round((GroupId[[i]]$RAvg1_courses_soc[j]-
#                                                       mean(GroupId[[i]]$RAvg1_courses_soc))/
#                                                      sd(GroupId[[i]]$RAvg1_courses_soc)*10+70,0)
#     
#     GroupId[[i]]$RAvg2_courses_soc<-as.numeric(GroupId[[i]]$RAvg2_courses_soc)
#     GroupId[[i]]$RTeken2_courses_soc[j]<-round((GroupId[[i]]$RAvg2_courses_soc[j]-
#                                                       mean(GroupId[[i]]$RAvg2_courses_soc))/
#                                                      sd(GroupId[[i]]$RAvg2_courses_soc)*10+70,0)
#     
#     GroupId[[i]]$RAvg3_courses_soc<-as.numeric(GroupId[[i]]$RAvg3_courses_soc)
#     GroupId[[i]]$RTeken3_courses_soc[j]<-round((GroupId[[i]]$RAvg3_courses_soc[j]-
#                                                       mean(GroupId[[i]]$RAvg3_courses_soc))/
#                                                      sd(GroupId[[i]]$RAvg3_courses_soc)*10+70,0)
#     
#     GroupId[[i]]$RAvg4_courses_soc<-as.numeric(GroupId[[i]]$RAvg4_courses_soc)
#     GroupId[[i]]$RTeken4_courses_soc[j]<-round((GroupId[[i]]$RAvg4_courses_soc[j]-
#                                                       mean(GroupId[[i]]$RAvg4_courses_soc))/
#                                                      sd(GroupId[[i]]$RAvg4_courses_soc)*10+70,0)
#     
#     GroupId[[i]]$RAvg5_courses_soc<-as.numeric(GroupId[[i]]$RAvg5_courses_soc)
#     GroupId[[i]]$RTeken5_courses_soc[j]<-round((GroupId[[i]]$RAvg5_courses_soc[j]-
#                                                       mean(GroupId[[i]]$RAvg5_courses_soc))/
#                                                      sd(GroupId[[i]]$RAvg5_courses_soc)*10+70,0)
#   }
# }
# 
# GroupId_df<-c()
# for (i in 1:length(GroupId)) {
#   GroupId_df_temp<-as.data.frame(GroupId[[i]])
#   GroupId_df<-rbind(GroupId_df,GroupId_df_temp)
# }
# 
# class(GroupId_df)
# 
# courses_soc_112020_am<-GroupId_df
# 
# nrow(courses_soc_112020_am)
# 
# class(courses_soc_112020_am)
# 
# colnames(courses_soc_112020_am)
# 
# library(readr)
# locale("he")
# courses_soc_megama_07.2021<-read_csv("Q:/04_Mehkar/18_asher/Junior officers MAGAV validation/Alternaitve/courses_soc_megama_07.2021.csv",locale = locale(date_names = "he", encoding = "ISO-8859-8"))
# colnames(courses_soc_megama_07.2021)
# nrow(courses_soc_megama_07.2021)
# class(courses_soc_megama_07.2021)
# courses_soc_megama_07.2021<-as.data.frame(courses_soc_megama_07.2021)
# 
# library(plyr)
# courses_soc_112020_am_megama<-rbind.fill(courses_soc_112020_am,courses_soc_megama_07.2021)
# 
# library(dplyr)
# courses_soc_112020_am_megama <- courses_soc_112020_am_megama %>%
#   mutate_at(c(3:9,11:15), funs(c(scale(.))))
# 
# courses_soc_112020_am_megama<-as.data.frame(courses_soc_112020_am_megama)
# 
# library(dplyr)
# courses_soc_112020_am_megama <- courses_soc_112020_am_megama %>%
#   mutate(RAvg_courses_soc = rowMeans(select(.,RAvg1_courses_soc,
#                                                 RAvg2_courses_soc,
#                                                 RAvg3_courses_soc,
#                                                 RAvg4_courses_soc,
#                                                 RAvg5_courses_soc)))
# courses_soc_112020_am_megama <- courses_soc_112020_am_megama %>%
#   mutate(RTeken_courses_soc = rowMeans(select(.,RTeken1_courses_soc,
#                                                   RTeken2_courses_soc,
#                                                   RTeken3_courses_soc,
#                                                   RTeken4_courses_soc,
#                                                   RTeken5_courses_soc)))
# courses_soc_112020_am_megama <- courses_soc_112020_am_megama %>%
#   mutate(NPct_courses_soc = rowMeans(select(.,NPct1_courses_soc,
#                                                 NPct2_courses_soc)))
# 
# courses_soc_112020_am_megama <- courses_soc_112020_am_megama %>% 
#   mutate(am_courses_soc = rowMeans(select(.,RAvg_courses_soc,RTeken_courses_soc,NPct_courses_soc)))
# 
# filtered_courses_soc_112020_am_megama <- courses_soc_112020_am_megama %>%
#   select(personal_number,GroupId,am_courses_soc)
# 
# gibush_candidates_kakatz_07.2021_with_am <-
#   merge(gibush_candidates_kakatz_07.2021,filtered_courses_soc_112020_am_megama,by=c("personal_number"), all.x=T, all.y=F,sort = FALSE)
# 

gibushon<-gibushon_mamda_criteria_rama_eq_colors_decision_EichutGrade_components_quit_absences_language

#Remove spaces.

library(stringr)
gibushon[]<-lapply(gibushon,str_trim)
is.na(gibushon)<-gibushon==''

class(gibushon)

#gibushon <- as.data.frame(gibushon)


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

# gibushon_civil$job[grep("תנועה", gibushon_civil$job)] <- "traffic"
# gibushon_civil$job[grep("סייר", gibushon_civil$job)] <- "patrol"
# gibushon_civil$job[grep("סיור", gibushon_civil$job)] <- "patrol"
# gibushon_civil$job[grep("חוקר", gibushon_civil$job)] <- "inspector"
# gibushon_civil$job[grep("חקירות", gibushon_civil$job)] <- "inspector"
# gibushon_civil$job[grep("בלש", gibushon_civil$job)] <- "detective"
# gibushon_civil$job[grep("בילוש", gibushon_civil$job)] <- "detective"
# gibushon_civil$job[grep("יס'מ", gibushon_civil$job)] <- "yasam"
# gibushon_civil$job[grep("ימ'ס", gibushon_civil$job)] <- "yamas"
# gibushon_civil$job[grep("ימ'מ", gibushon_civil$job)] <- "yamam"
# gibushon_civil$job[grep("מודיעין", gibushon_civil$job)] <- "inteligence"
# gibushon_civil$job[grep("לוחם", gibushon_civil$job)] <- "soldier"
# gibushon_civil$job[grep("מוקד", gibushon_civil$job)] <- "call_center"
# gibushon_civil$job[grep("קצין מרכז שליטה", gibushon_civil$job)] <- "control_center"
# gibushon_civil$job[grep("יומנאי", gibushon_civil$job)] <- "diary_keeper"
# gibushon_civil$job[grep("עובד נוער", gibushon_civil$job)] <- "youth_worker"
# gibushon_civil$job[grep("מפקד", gibushon_civil$job)] <- "commander"
# gibushon_civil$job[grep("ראש", gibushon_civil$job)] <- "commander"
# gibushon_civil$job[grep("קצין", gibushon_civil$job)] <- "officer"
# gibushon_civil$job[grep("עובד", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("רכז", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("מש'ק", gibushon_civil$job)] <- "other"
# gibushon_civil$job<-str_replace_all(gibushon_civil$job, "[[:punct:]]", " ")
# gibushon_civil$job[grep("מש ק", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("תובע", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("זקיף", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("סטודנט", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("מדריך", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("מפעיל", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("שוטר", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("סמל", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("טכנאי", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("מחסנאי", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("חבלן", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("חשמלאי מבנים", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("טבח", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("טוען מעצרים", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("טירון חובה", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("מאבחן", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("מזכירה כתבנית", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("מטפל בע ח", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("מנהל מערכת", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("נגד", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("נהג", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("נוהג", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("עו ס", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("פקיד", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("צוערי", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("שולט", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("שומר", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("שח ם", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("שת מ", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("תחקירן", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("ארוך", gibushon_civil$job)] <- "other"
# gibushon_civil$job[grep("סופרוויזר", gibushon_civil$job)] <- "other"
gibushon_civil$job_sector4[grep("חקירות_ת.ד.", gibushon_civil$job_sector4)] <- "inspector"
gibushon_civil$job_sector4[grep("סיור", gibushon_civil$job_sector4)] <- "patrol"
gibushon_civil$job_sector4[grep("חוקר", gibushon_civil$job_sector4)] <- "inspector"
gibushon_civil$job_sector4[grep("חקירות", gibushon_civil$job_sector4)] <- "inspector"
gibushon_civil$job_sector4[grep("איסוף", gibushon_civil$job_sector4)] <- "detective"
gibushon_civil$job_sector4[grep("חקירת_זירת_עבירה", gibushon_civil$job_sector4)] <- "inspector"
gibushon_civil$job_sector4[grep("חירום", gibushon_civil$job_sector4)] <- "yasam"
gibushon_civil$job_sector4[grep("ימס", gibushon_civil$job_sector4)] <- "yamas"
gibushon_civil$job_sector4[grep("יממ", gibushon_civil$job_sector4)] <- "yamam"
gibushon_civil$job_sector4[grep("ימר_אתן", gibushon_civil$job_sector4)] <- "detective"
gibushon_civil$job_sector4[grep("לחימה_מגב", gibushon_civil$job_sector4)] <- "soldier_magav"
gibushon_civil$job_sector4[grep("נוער", gibushon_civil$job_sector4)] <- "youth_worker"
gibushon_civil$job_sector4[grep("תנועה", gibushon_civil$job_sector4)] <- "traffic"
gibushon_civil$job_sector4[grep("אבטחה", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("אגמ", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("אגת", gibushon_civil$job_sector4)] <- "other"
#gibushon_civil$job_sector4<-str_replace_all(gibushon_civil$job_sector4, "[[:punct:]]", " ")
gibushon_civil$job_sector4[grep("אחמ", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("אחמ_מנהלי", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("אמש", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("אפסנאות", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("אתן", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("אתל", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("אתן_מנהלי", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("בטחון_מידע", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("בינוי", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("בעלי_חיים", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("בקרה_וביקורת", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("דוברות", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("הדרכה", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("המפכל", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("הסעדה", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("זיהוי_פלילי", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("חבלה", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("חשבות", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("טכנולוגיה", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("ישובים_מגב", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("כא", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("מבצעים", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("מבצעים_מגב", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("מודיעין_טכנולוגי", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("מחקר_אחמ", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("מחשוב", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("מידע_פלילי", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("מיון_כא", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("מפקד_נקודה", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("משטר_ונוהג", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("מתנדבים_אגמ", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("סיגנט", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("פקידות", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("קשר", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("רווחה_ונפגעים", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("רישוי_עסקים", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("רמ", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("שיטור_ימי", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("שיטור_קהילתי", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("תביעות_פלילי", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("תביעות_תעבורה", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("תובלה", gibushon_civil$job_sector4)] <- "other"
gibushon_civil$job_sector4[grep("תלונות_הציבור", gibushon_civil$job_sector4)] <- "other"

gibushon_civil$rama_religion[grep("אחר", gibushon_civil$rama_religion)] <- "Other"
gibushon_civil$rama_religion[grep("בדואי", gibushon_civil$rama_religion)] <- "Bedouin"
gibushon_civil$rama_religion[grep("דרוזי", gibushon_civil$rama_religion)] <- "Druze"
gibushon_civil$rama_religion[grep("יהודי", gibushon_civil$rama_religion)] <- "Jewish"
gibushon_civil$rama_religion[grep("מוסלמי", gibushon_civil$rama_religion)] <- "Moslem"
gibushon_civil$rama_religion[grep("נוצרי", gibushon_civil$rama_religion)] <- "Christian"
gibushon_civil$rama_religion[grep("נוצרי-ערבי", gibushon_civil$rama_religion)] <- "Christian"
gibushon_civil$rama_religion[grep("צ'רקסי", gibushon_civil$rama_religion)] <- "Circassian"

gibushon_civil$religion[grep("אחר", gibushon_civil$religion)] <- "Other"
gibushon_civil$religion[grep("בדואי", gibushon_civil$religion)] <- "Bedouin"
gibushon_civil$religion[grep("דרוזי", gibushon_civil$religion)] <- "Druze"
gibushon_civil$religion[grep("יהודי", gibushon_civil$religion)] <- "Jewish"
gibushon_civil$religion[grep("מוסלמי", gibushon_civil$religion)] <- "Moslem"
gibushon_civil$religion[grep("נוצרי", gibushon_civil$religion)] <- "Christian"
gibushon_civil$religion[grep("נוצרי-ערבי", gibushon_civil$religion)] <- "Christian"
gibushon_civil$religion[grep("צ'רקסי", gibushon_civil$religion)] <- "Circassian"

gibushon_civil$religion<-ifelse(!is.na(gibushon_civil$religion),gibushon_civil$religion,gibushon_civil$rama_religion)

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

# cells<-c( 121,128,130,137,
# 139,146,148,155,157,164,166,170,174,191,198,200,207,209,
# 216,218,225,227,234,236,240,244,262,264,268,270,274,276,
# 280,282,286,288,292,298,304,325,327,331,333,337,339,343,
# 345,349,351,355,361,367,391,395,399,403,407,411,415,419,
# 423,427,431,435,439,443,447,451,455,459,463,467,471,475,
# 479,483,489,491,497,499,505,507,513,515,521,523,529,531,
# 537,550,554,558,562,566,570,574,696,705,578,582,586,590,
# 594,598,602,606,610,614,618,622,626,630,634,638,642,648,
# 650,656,658,664,666,672,674,680,682,688,690,707,709,711,
# 713,715,717,719,721,723,725,727,729,731,749,751,753,755,
# 757,759,761,763,765,767,769,771,773,775,793,794,830:833,
# 839:840)

# for (i in 1:length(cells)) {
#   cells[i]<-cells[i]+1
# }
# cells

# # add comma
# 
# gsub(" ",",","122 129 131 138 140 147 149 156 158 165 167 171 175 192 199 201 208 210 217 219 226 228 235 237 241
# 245 263 265 269 271 275 277 281 283 287 289 293 299 305 326 328 332 334 338 340 344 346 350 352 356
# 362 368 392 396 400 404 408 412 416 420 424 428 432 436 440 444 448 452 456 460 464 468 472 476 480
# 484 490 492 498 500 506 508 514 516 522 524 530 532 538 551 555 559 563 567 571 575 697 706 579 583
# 587 591 595 599 603 607 611 615 619 623 627 631 635 639 643 649 651 657 659 665 667 673 675 681 683
# 689 691 708 710 712 714 716 718 720 722 724 726 728 730 732 750 752 754 756 758 760 762 764 766 768
# 770 772 774 776 794 795 831 832 833 834 840 841",fixed=T)

#arrived here**************************************************************

gibushon_civil_zscore_relevant_columns <- colnames(gibushon_civil 
                                          [c(20:21,23:26,28:32,34:35,43,47:48,51,78,104,106:107,122,
                                             129,131,138,140,147,149,156,158,165,167,171,175,192,199,
                                             201,208,210,217,219,226,228,235,237,241,245,263,265,269,
                                             271,275,277,281,283,287,289,293,299,305,326,328,332,334,
                                             338,340,344,346,350,352,356,362,368,392,396,400,404,408,
                                             412,416,420,424,428,432,436,440,444,448,452,456,460,464,
                                             468,472,476,480,484,490,492,498,500,506,508,514,516,522,
                                             524,530,532,538,551,555,559,563,567,571,575,697,706,579,
                                             583,587,591,595,599,603,607,611,615,619,623,627,631,635,
                                             639,643,649,651,657,659,665,667,673,675,681,683,689,691,
                                             708,710,712,714,716,718,720,722,724,726,728,730,732,750,
                                             752,754,756,758,760,762,764,766,768,770,772,774,776,794,
                                             795,806,840:843,849,850)])

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

library(dplyr)
gibushon_civil = gibushon_civil %>%
  mutate(RAvg_am_2015 = rowMeans(select(., RAvg1_am_2015_zscore,RAvg2_am_2015_zscore,RAvg3_am_2015_zscore,RAvg4_am_2015_zscore,RAvg5_am_2015_zscore),na.rm = T),
         RTeken_am_2015 = rowMeans(select(., RTeken1_am_2015_zscore,RTeken2_am_2015_zscore,RTeken3_am_2015_zscore,RTeken4_am_2015_zscore,RTeken5_am_2015_zscore),na.rm = T))

head(gibushon_civil$RAvg_am_2015,1000)

class(gibushon_civil)
# gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

# Ronen: since 2015, there may be am_2015 or am_2015_special (it appears in the am_regular file, but has only NPct vars).

gibushon_civil = gibushon_civil %>%
  mutate(NPct1_am_2015_special = ifelse(is.na(RAvg_am_2015) & (!is.na(NPct1_am_2015_zscore) | !is.na(NPct2_am_2015_zscore) | !is.na(NPct3_am_2015_zscore)),NPct1_am_2015_zscore,NA),
         NPct2_am_2015_special = ifelse(is.na(RAvg_am_2015) & (!is.na(NPct1_am_2015_zscore) | !is.na(NPct2_am_2015_zscore) | !is.na(NPct3_am_2015_zscore)),NPct2_am_2015_zscore,NA),
         NPct3_am_2015_special = ifelse(is.na(RAvg_am_2015) & (!is.na(NPct1_am_2015_zscore) | !is.na(NPct2_am_2015_zscore) | !is.na(NPct3_am_2015_zscore)),NPct3_am_2015_zscore,NA))

class(gibushon_civil)
# gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

gibushon_civil = gibushon_civil %>%
  mutate(NPct_am_2015 = rowMeans(select(., NPct1_am_2015_zscore,NPct2_am_2015_zscore,NPct3_am_2015_zscore),na.rm = T),
         NPct_am_2015_special = rowMeans(select(., NPct1_am_2015_special,NPct2_am_2015_special,NPct3_am_2015_special),na.rm = T),
         RAvg_am_2018 = rowMeans(select(., RAvg1_am_2018_zscore,RAvg2_am_2018_zscore,RAvg3_am_2018_zscore,RAvg4_am_2018_zscore,RAvg5_am_2018_zscore),na.rm = T),
         RTeken_am_2018 = rowMeans(select(., RTeken1_am_2018_zscore,RTeken2_am_2018_zscore,RTeken3_am_2018_zscore,RTeken4_am_2018_zscore,RTeken5_am_2018_zscore),na.rm = T),
         RTeken_am_2018 = rowMeans(select(., RTeken1_am_2018_zscore,RTeken2_am_2018_zscore,RTeken3_am_2018_zscore,RTeken4_am_2018_zscore,RTeken5_am_2018_zscore),na.rm = T),
         NPct1_am_2018_special = ifelse(is.na(RAvg_am_2018) & (!is.na(NPct1_am_2018_zscore) | !is.na(NPct2_am_2018_zscore) | !is.na(NPct3_am_2018_zscore)),NPct1_am_2018_zscore,NA),
         NPct2_am_2018_special = ifelse(is.na(RAvg_am_2018) & (!is.na(NPct1_am_2018_zscore) | !is.na(NPct2_am_2018_zscore) | !is.na(NPct3_am_2018_zscore)),NPct2_am_2018_zscore,NA),
         NPct3_am_2018_special = ifelse(is.na(RAvg_am_2018) & (!is.na(NPct1_am_2018_zscore) | !is.na(NPct2_am_2018_zscore) | !is.na(NPct3_am_2018_zscore)),NPct3_am_2018_zscore,NA))

class(gibushon_civil)
# gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

gibushon_civil = gibushon_civil %>%
  mutate(NPct_am_2018 = rowMeans(select(., NPct1_am_2018_zscore,NPct2_am_2018_zscore,NPct3_am_2018_zscore),na.rm = T),
         NPct_am_2018_special = rowMeans(select(., NPct1_am_2018_special,NPct2_am_2018_special,NPct3_am_2018_special),na.rm = T))

class(gibushon_civil)
# gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

gibushon_civil = gibushon_civil %>%
  mutate(am_2015 = ifelse(is.na(NPct_am_2015_special),rowMeans(select(., RAvg_am_2015,RTeken_am_2015,NPct_am_2015),na.rm = T),NA),
         am_2015_special = NPct_am_2015_special,
         am_2018 = ifelse(is.na(NPct_am_2018_special),rowMeans(select(., RAvg_am_2018,RTeken_am_2018,NPct_am_2018),na.rm = T),NA),
         am_2018_special = NPct_am_2018_special)

class(gibushon_civil)
# gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

#Ronen: cf_2015 includes only 2 indexes.

gibushon_civil = gibushon_civil %>%
  rowwise() %>%
  mutate(cf_2018 = metuknan_clali_cf_2018_zscore)

class(gibushon_civil)
gibushon_civil<-as.data.frame(gibushon_civil)

gibushon_civil[sapply(gibushon_civil, is.nan)] <- NA

gibushon_civil = gibushon_civil %>%
  mutate(am_not_na = rowSums(!is.na(select(., am_2015,am_2018))),
         cf_not_na = ifelse(is.na(cf_2018),1,0),
         tkufatit_not_na = rowSums(!is.na(select(., tkufatit_14_zscore,final.score.2015_zscore,final.score.2017_zscore,final.score.2018_zscore,row_score_2019))))

head(gibushon_civil$tkufatit_not_na,1000)
# Optimal gap between A.C. date and criteria by QlikView.

# gibushon_civil_for_Qlik_View <- gibushon_civil
# write_excel_csv(gibushon_civil_for_Qlik_View,file="C:/Users/USER/Documents/MAMDA/gibushon/gibushon_civil_for_Qlik_View.csv")

filtered_gibushon_civil_diff = gibushon_civil %>%
  rowwise() %>%
  mutate(tkufatit_14_zscore = ifelse(date.tkufatit_14_diff>=232 & date.tkufatit_14_diff<=1014,tkufatit_14_zscore,NA),#169,943
         final.score.2015_zscore = ifelse(date.period.eval.2015_diff>=308 & date.period.eval.2015_diff<=1252,final.score.2015_zscore,NA),#380,1367
         final.score.2017_zscore = ifelse(date.period.eval.2017_diff>=1170 & date.period.eval.2017_diff<=960,final.score.2017_zscore,NA),#1170,1702
         final.score.2018_zscore = ifelse(date.period.eval.2018_diff>=124 & date.period.eval.2018_diff<=1580,final.score.2018_zscore,NA),#1501,2437
         row_score_2019_zscore = ifelse(date.tkufatit_2019_diff>=256 & date.tkufatit_2019_diff<=1773,row_score_2019_zscore,NA),#1187,2041
         am_2015 = ifelse(TaarichHavara_am_2015_diff>=331 & TaarichHavara_am_2015_diff<=1477,am_2015,NA),#331,1477
         am_2018 = ifelse(TaarichHavara_am_2018_diff>=243 & TaarichHavara_am_2018_diff<2401,am_2018,NA),#918,2342
         cf_2018 = ifelse(TaarichHavara_cf_2018_diff>=309 & TaarichHavara_cf_2018_diff<=2339,cf_2018,NA))#1128,2308

class(filtered_gibushon_civil_diff)
filtered_gibushon_civil_diff<-as.data.frame(filtered_gibushon_civil_diff)

#qa

head(gibushon_civil$am_2015,1000)

head(filtered_gibushon_civil_diff$am_2015,1000)

head(filtered_gibushon_civil_diff$TaarichHavara_am_2015_diff,1000)

#First high order criteria

filtered_gibushon_civil_diff = filtered_gibushon_civil_diff %>%
  mutate(am = rowMeans(select(., am_2015,am_2018),na.rm = T),
         am_special = am_2018_special,
         cf = cf_2018,
         tkufatit = rowMeans(select(., tkufatit_14_zscore,final.score.2015_zscore,final.score.2017_zscore,final.score.2018_zscore,row_score_2019_zscore),na.rm = T))


head(filtered_gibushon_civil_diff$am,1000)
head(filtered_gibushon_civil_diff$am_special,1000)
head(filtered_gibushon_civil_diff$cf,1000)
head(filtered_gibushon_civil_diff$tkufatit,1000)

class(filtered_gibushon_civil_diff)
# filtered_gibushon_civil_diff<-as.data.frame(filtered_gibushon_civil_diff)

filtered_gibushon_civil_diff[sapply(filtered_gibushon_civil_diff, is.nan)] <- NA

# next commands are for range restriction (later)
filtered_gibushon_civil_diff = filtered_gibushon_civil_diff %>%
  rowwise() %>%
  mutate(am_not_na = sum(!is.na(c(am_2015,am_2018))),
         cf_not_na = sum(!is.na(cf_2018)),
         tkufatit_not_na = sum(!is.na(c(tkufatit_14_zscore,final.score.2015_zscore,final.score.2017_zscore,final.score.2018_zscore,row_score_2019))))

class(filtered_gibushon_civil_diff)
filtered_gibushon_civil_diff<-as.data.frame(filtered_gibushon_civil_diff)

filtered_gibushon_civil_diff[sapply(filtered_gibushon_civil_diff, is.nan)] <- NA

#Second high order criteria (listwise deletion)

filtered_gibushon_civil_diff = filtered_gibushon_civil_diff %>%
  mutate(amcf = ifelse((!is.na(am) & !is.na(am_special) & !is.na(cf)), rowMeans(select(., am,am_special,cf),na.rm = F),
                ifelse((!is.na(am) & !is.na(cf)), rowMeans(select(., am,cf),na.rm = F),
                ifelse((!is.na(am_special) & !is.na(cf)),rowMeans(select(., am_special,cf),na.rm = F),NA))),
# tkufatitamcf = ifelse((!is.na(tkufatit) & !is.na(amcf)),rowMeans(select(., tkufatit,amcf),na.rm = F),NA),
# Becouse of an error, I separated this row from the others. 
   tkufatitam = ifelse((!is.na(am) & !is.na(am_special) & !is.na(tkufatit)), rowMeans(select(., am,am_special,tkufatit),na.rm = F),
                ifelse((!is.na(am) & !is.na(tkufatit)),rowMeans(select(., am,tkufatit),na.rm = F),
                ifelse((!is.na(am_special) & !is.na(tkufatit)),rowMeans(select(., am_special,tkufatit),na.rm = F),NA))))

filtered_gibushon_civil_diff = filtered_gibushon_civil_diff %>%
  mutate(tkufatitamcf = ifelse((!is.na(tkufatit) & !is.na(amcf)),rowMeans(select(., tkufatit,amcf),na.rm = F),NA))

head(filtered_gibushon_civil_diff$amcf,1000)
head(filtered_gibushon_civil_diff$tkufatitamcf ,1000)
head(filtered_gibushon_civil_diff$tkufatitam,1000)

class(filtered_gibushon_civil_diff)
# filtered_gibushon_civil_diff<-as.data.frame(filtered_gibushon_civil_diff)

filtered_gibushon_civil_diff[sapply(filtered_gibushon_civil_diff, is.nan)] <- NA

nrow(filtered_gibushon_civil_diff)

# Criteria_count

filtered_gibushon_civil_diff$critria_count <- 
  rowSums(!is.na(filtered_gibushon_civil_diff[c("tkufatit_14_zscore",
                                                "final.score.2015_zscore",
                                                "final.score.2017_zscore",
                                                "final.score.2018_zscore",
                                                "row_score_2019_zscore",
                                                "am_2015",
                                                "am_2018",
                                                "am_2018_special",
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
  mutate(seniority_days_ac = ifelse(!is.na(row_score_2019_zscore),date.tkufatit_2019_diff,
                             ifelse(!is.na(final.score.2018_zscore),date.period.eval.2018_diff,
                             ifelse(!is.na(am_2018),TaarichHavara_am_2018_diff,
                             ifelse(!is.na(am_2018_special),TaarichHavara_am_2018_diff,
                             ifelse(!is.na(cf_2018),TaarichHavara_cf_2018_diff,
                             ifelse(!is.na(final.score.2017_zscore),date.period.eval.2017_diff,
                             ifelse(!is.na(final.score.2015_zscore),date.period.eval.2015_diff,
                             ifelse(!is.na(am_2015),TaarichHavara_am_2015_diff,
                             ifelse(!is.na(tkufatit_14_zscore),date.tkufatit_14_diff,NA))))))))),
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

head(gibushon_final$MazavGrade)

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
gibushon_civil_freq_relevant_columns<-
  colnames(gibushon_final[c(20:21,23:26,28:32,34:35,43,47:48,51,78,104,106:107,122,129,131,138,
                            140,147,149,156,158,165,167,171,175,192,199,201,208,210,217,219,
                            226,228,235,237,241,245,263,265,269,271,275,277,281,283,287,289,
                            293,299,305,326,328,332,334,338,340,344,346,350,352,356,362,368,
                            392,396,400,404,408,412,416,420,424,428,432,436,440,444,448,452,
                            456,460,464,468,472,476,480,484,490,492,498,500,506,508,514,516,
                            522,524,530,532,538,551,555,559,563,567,571,575,697,706,579,583,
                            587,591,595,599,603,607,611,615,619,623,627,631,635,639,643,649,
                            651,657,659,665,667,673,675,681,683,689,691,708,710,712,714,716,
                            718,720,722,724,726,728,730,732,750,752,754,756,758,760,762,764,
                            766,768,770,772,774,776,794,795,799,800:801,806,810,840:843,846,
                            849:850,1058:1066)])
                                                                   
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

gibushon_civil_freq_relevant_columns<-colnames(gibushon_final[c(797,805,807:809,811,844,847:848,851)])
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

library("xlsx")

# Correlations predictors-criteria

gibushon_final_relevant_predictors_columns_for_correlations <- gibushon_final[c(828,842:850,853:858,831:834,1055)]
gibushon_final_relevant_predictors_columns_names_for_correlations <- c(colnames(gibushon_final[c(828,842:850,853:858,831:834,1055)]))
gibushon_final_relevant_criteria_columns_for_correlations <- gibushon_final[c(1047:1053,801,1023:1024)]
gibushon_final_relevant_criteria_columns_names_for_correlations <- c(colnames(gibushon_final[c(1047:1053,801,1023:1024)]))
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
write.xlsx(gibushon_final_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_p_c_corr_output.xlsx")


# Correlations predictors-predictors

gibushon_final_relevant_predictors_columns_for_correlations <- gibushon_final[c(828,842:850,853:858,831:834,1055)]
gibushon_final_relevant_predictors_columns_names_for_correlations <- c(colnames(gibushon_final[c(828,842:850,853:858,831:834,1055)]))
gibushon_final_relevant_criteria_columns_for_correlations <- gibushon_final[c(828,842:850,853:858,831:834,1055)]
gibushon_final_relevant_criteria_columns_names_for_correlations <- c(colnames(gibushon_final[c(828,842:850,853:858,831:834,1055)]))
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
write.xlsx (gibushon_final_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_p_p_corr_output.xlsx")


# Correlations criteria-criteria

gibushon_final_relevant_predictors_columns_for_correlations <- gibushon_final[c(1047:1053,801,1023:1024)]
gibushon_final_relevant_predictors_columns_names_for_correlations <- c(colnames(gibushon_final[c(1047:1053,801,1023:1024)]))
gibushon_final_relevant_criteria_columns_for_correlations <- gibushon_final[c(1047:1053,801,1023:1024)]
gibushon_final_relevant_criteria_columns_names_for_correlations <- c(colnames(gibushon_final[c(1047:1053,801,1023:1024)]))
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
write.xlsx(gibushon_final_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_c_c_corr_output.xlsx")


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
# gibushon_final_relevant_predictors_columns_for_spcorrelations <- gibushon_final[c(828,842:850,853:858,831:834)]
# gibushon_final_relevant_predictors_columns_names_for_spcorrelations <- c(colnames(gibushon_final[c(828,842:850,853:858,831:834)]))
gibushon_final_relevant_predictors_columns_for_spcorrelations <- gibushon_final[c(842:850,853:858,831:834)]
gibushon_final_relevant_predictors_columns_names_for_spcorrelations <- c(colnames(gibushon_final[c(842:850,853:858,831:834)]))
gibushon_final_relevant_criteria_columns_for_spcorrelations <- gibushon_final[c(1047:1053,801,1023:1024)]
gibushon_final_relevant_criteria_columns_names_for_spcorrelations <- c(colnames(gibushon_final[c(1047:1053,801,1023:1024)]))
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
write.xlsx(gibushon_final_spcorr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_spcorr_output_p-c.xlsx")


# Correlations predictors-criteria on gibushon_final_filtered

class(gibushon_final$GibDate)
gibushon_final$GibDate<-as.Date(as.character(gibushon_final$GibDate))

gibushon_final_filtered=gibushon_final%>%
# filter(job == "detective" | job == "inspector" | job == "patrol" | job == "traffic" | job == "yasam" | is.na(job))
# filter(job == "detective" | job == "inspector" | job == "patrol" | job == "traffic" | is.na(job))
# filter(job == "inspector" | job == "patrol" | job == "traffic" | job == "yasam" | is.na(job))
# filter(job == "detective" | job == "patrol" | job == "traffic" | job == "yasam" | is.na(job))
# filter( != "Moslem" | is.na())
# filter(GibDate <= 01/09/2018 | is.na(GibDate))
filter(FinalGradeg > 3.5)

gibushon_final_filtered_relevant_predictors_columns_for_correlations <- gibushon_final_filtered[c(828,842:850,853:858,831:834,1055)]
gibushon_final_filtered_relevant_predictors_columns_names_for_correlations <- c(colnames(gibushon_final_filtered[c(828,842:850,853:858,831:834,1055)]))
gibushon_final_filtered_relevant_criteria_columns_for_correlations <- gibushon_final_filtered[c(1047:1053,801,1023:1024)]
gibushon_final_filtered_relevant_criteria_columns_names_for_correlations <- c(colnames(gibushon_final_filtered[c(1047:1053,801,1023:1024)]))
gibushon_final_filtered_corr_output<-data.frame()[23,]

for(i in 1:length(gibushon_final_filtered_relevant_criteria_columns_names_for_correlations)){
  corr_output_temp<-c()
  for(j in 1:length(gibushon_final_filtered_relevant_predictors_columns_names_for_correlations)){
    corr_temp<-c()
    corr_try <- try(cor.test(as.numeric(gibushon_final_filtered_relevant_criteria_columns_for_correlations[[i]]),as.numeric(gibushon_final_filtered_relevant_predictors_columns_for_correlations[[j]]),use="pairwise.complete.obs"), silent=T)
    corr_temp$"predictor" <-ifelse(class(corr_try)=="try-error", NA, corr_try$estimate)
    corr_temp$p.value <-ifelse(class(corr_try)=="try-error", NA, corr_try$p.value)
    corr_temp$n <-(ifelse(class(corr_try)=="try-error", NA, corr_try$parameter+2))
    corr_temp<-data.frame(corr_temp)
    colnames(corr_temp)[1]<-gibushon_final_filtered_relevant_criteria_columns_names_for_correlations[i]
    row.names(corr_temp)<-gibushon_final_filtered_relevant_predictors_columns_names_for_correlations[[j]]
    corr_output_temp<-rbind (corr_output_temp,corr_temp)
    corr_output_temp <-round(corr_output_temp,2)
  }
  corr_output_temp$""<-"|"
  gibushon_final_filtered_corr_output<-cbind(gibushon_final_filtered_corr_output,corr_output_temp,row.names = NULL)
}
row.names(gibushon_final_filtered_corr_output)<-gibushon_final_filtered_relevant_predictors_columns_names_for_correlations

for(i in 1:(ncol(gibushon_final_filtered_corr_output)/4)){
  colnames(gibushon_final_filtered_corr_output)[i*4] <- ""
}
# write.xlsx(gibushon_final_filtered_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_filtered_p_c_corr_output.xlsx")
# write.xlsx(gibushon_final_filtered_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_filtered_no_yasam_p_c_corr_output.xlsx")
# write.xlsx(gibushon_final_filtered_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_filtered_no_detective_p_c_corr_output.xlsx")
# write.xlsx(gibushon_final_filtered_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_filtered_no_inspector_p_c_corr_output.xlsx")
# write.xlsx(gibushon_final_filtered_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_filtered_no_Moslems_p_c_corr_output.xlsx")
# write.xlsx(gibushon_final_filtered_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_filtered_before_01.09.2018_p_c_corr_output.xlsx")
write.xlsx(gibushon_final_filtered_corr_output,file = "C:/Users/USER/Documents/MAMDA/gibushon/gibushon_final_filtered_FinalGradeg_gt_then_3.5_p_c_corr_output.xlsx")
#-----------------------------------------------------------------------------------------------------------------------------------------------------
# Range restriction.
# The variance of all the sample of candidates in the A.C. should be higher then the variance of the sample that I performed on it
# the validation study (after the various filtering)

library (descr)
library (psych)

try(cor.test(as.numeric(gibushon_final$FinalGradeg_zscore),as.numeric(gibushon_final$tkufatit),use="pairwise.complete.obs"), silent=T)
try(cor.test(as.numeric(gibushon_final$FinalGradeg_zscore),as.numeric(gibushon_final$am),use="pairwise.complete.obs"), silent=T)
try(cor.test(as.numeric(gibushon_final$FinalGradeg_zscore),as.numeric(gibushon_final$tkufatitam),use="pairwise.complete.obs"), silent=T)

round(describe (as.numeric(filtered_gibushon_civil_diff$FinalGradeg)),2)

gibushon_final$ac_final_grade_restricted<-gibushon_final$FinalGradeg

round(describe (as.numeric(gibushon_final$ac_final_grade_restricted)),2)

# Average number of repeated criteria (for n in range restriction Excel file).

library(dplyr)

counter = gibushon_final %>%
  rowwise() %>%
  mutate(tkufatit_nna = sum(!is.na(c(final.score.2015_zscore,final.score.2017_zscore,tkufatit_14_zscore,final.score.2018_zscore,row_score_2019_zscore))),
         am_nna = sum(!is.na(c(am_2015,am_2018,am_2018_special))))

library (descr)
library (psych)

round(freq(ordered(counter$tkufatit_nna), plot = F,main=colnames(counter$tkufatit_nna),font=2),2)
notna_tkufatit_average<-(1448*1+3906*2+193*3)/(180+1448+3906+193)
round(notna_tkufatit_average,2)

round(freq(ordered(counter$am_nna), plot = F,main=colnames(counter$am_nna),font=2),2)
notna_am_average<-(3159*1+1409*2)/(1159+3159+1409)
round(notna_am_average,2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
library (descr)
library (psych)

try(cor.test(as.numeric(gibushon_final$mini_sociometry_negative_percent),as.numeric(gibushon_final$tkufatitam),use="pairwise.complete.obs"), silent=T)
round(describe (as.numeric(filtered_gibushon_civil_diff$mini_sociometry_negative_percent)),2)

round(describe (as.numeric(filtered_gibushon_civil_diff$SocioFinalGrade)),2)

gibushon_final$SocioFinalGrade_restricted<-gibushon_final$SocioFinalGrade

round(describe (as.numeric(gibushon_final$SocioFinalGrade_restricted)),2)

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
round(freq(ordered(as.numeric(unlist(filtered_gibushon_civil_diff$date.tkufatit_2019_diff))), plot = F,main=colnames(filtered_gibushon_civil_diff$date.tkufatit_2019_diff),font=2),2)
round(freq(ordered(gibushon_final$ac_date), plot = F,main=colnames(gibushon_final$ac_date),font=2))
round(describe (as.numeric(filtered_gibushon_civil_diff$date.tkufatit_2019_diff)))
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
freq(gibushon_civil$job_sector4, plot = F,main=colnames(gibushon_civil$job_sector4),font=2)
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

