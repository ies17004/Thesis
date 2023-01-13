# Preparing R Studio ----
install.packages(c("rtweet","tidyverse","tidytext","tm","wordcloud","dplyr","TSstudio","forestmangr","plotly"))
library(rtweet)
library(tidyverse)
library(tidytext)
library(tm)
library(wordcloud)
library(dplyr)
library(TSstudio)
library(forestmangr)

my_authorization <- rtweet_bot(api_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",              # Developer Account on
                               api_secret = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",           # Twitter Needed, this
                               access_token="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",           # part authorizes the app
                               access_secret = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")        # you create afterwards.
auth_as('create_token')    # After an update on August, this was needed to access the API on my PC.
options(scipen=10)         #

# Gathering Twitter Data ----
## Hashtags / THIS SECTION WAS DROPPED IN THE FINAL VERSION OF THE THESIS ---- 
q <- "#putin lang:en"
hashtag1.1 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241100", 
                                  toDate = "202202241101", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag1.2 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241200", 
                                  toDate = "202202241201", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag1.3 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241300", 
                                  toDate = "202202241301", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag1.4 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241400", 
                                  toDate = "202202241401", 
                                  env_name = "research", 
                                  token = my_authorization)
q <- "#ukraine lang:en"
hashtag2.1 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241100", 
                                  toDate = "202202241101", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag2.2 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241200", 
                                  toDate = "202202241201", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag2.3 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241300", 
                                  toDate = "202202241301", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag2.4 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241400", 
                                  toDate = "202202241401", 
                                  env_name = "research", 
                                  token = my_authorization)
q <- "#ucrania lang:en"
hashtag3.1 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241100", 
                                  toDate = "202202241101", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag3.2 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241200", 
                                  toDate = "202202241201", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag3.3 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241300", 
                                  toDate = "202202241301", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag3.4 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241400", 
                                  toDate = "202202241401", 
                                  env_name = "research", 
                                  token = my_authorization)
q <- "#worldwar3 lang:en"
hashtag4.1 <- search_fullarchive (q, 
                                  n = 200, 
                                  fromDate = "202202241100", 
                                  toDate = "202202241101", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag4.2 <- search_fullarchive (q, 
                                  n = 200, 
                                  fromDate = "202202241200", 
                                  toDate = "202202241201", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag4.3 <- search_fullarchive (q, 
                                  n = 200, 
                                  fromDate = "202202241300", 
                                  toDate = "202202241301", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag4.4 <- search_fullarchive (q, 
                                  n = 200, 
                                  fromDate = "202202241400", 
                                  toDate = "202202241401", 
                                  env_name = "research", 
                                  token = my_authorization)
q <- "#NATO lang:en"
hashtag5.1 <- search_fullarchive (q, 
                                  n = 200, 
                                  fromDate = "202202241100", 
                                  toDate = "202202241101", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag5.2 <- search_fullarchive (q, 
                                  n = 200, 
                                  fromDate = "202202241200", 
                                  toDate = "202202241201", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag5.3 <- search_fullarchive (q, 
                                  n = 200, 
                                  fromDate = "202202241300", 
                                  toDate = "202202241301", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag5.4 <- search_fullarchive (q, 
                                  n = 200, 
                                  fromDate = "202202241400", 
                                  toDate = "202202241401", 
                                  env_name = "research", 
                                  token = my_authorization)
q <- "#Biden lang:en"
hashtag6.1 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241100", 
                                  toDate = "202202241101", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag6.2 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241200", 
                                  toDate = "202202241201", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag6.3 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241300", 
                                  toDate = "202202241301", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag6.4 <- search_fullarchive (q, 
                                  n = 100, 
                                  fromDate = "202202241400", 
                                  toDate = "202202241401", 
                                  env_name = "research", 
                                  token = my_authorization)
q <- "#Kiev lang:en"
hashtag7.1 <- search_fullarchive (q, 
                                  n = 300, 
                                  fromDate = "202202241100", 
                                  toDate = "202202241101", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag7.2 <- search_fullarchive (q, 
                                  n = 300, 
                                  fromDate = "202202241200", 
                                  toDate = "202202241201", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag7.3 <- search_fullarchive (q, 
                                  n = 300, 
                                  fromDate = "202202241300", 
                                  toDate = "202202241301", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag7.4 <- search_fullarchive (q, 
                                  n = 300, 
                                  fromDate = "202202241400", 
                                  toDate = "202202241401", 
                                  env_name = "research", 
                                  token = my_authorization)
q <- "#Russia lang:en"
hashtag8.1 <- search_fullarchive (q, 
                                  n = 300, 
                                  fromDate = "202202241100", 
                                  toDate = "202202241130", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag8.2 <- search_fullarchive (q, 
                                  n = 300, 
                                  fromDate = "202202241200", 
                                  toDate = "202202241230", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag8.3 <- search_fullarchive (q, 
                                  n = 300, 
                                  fromDate = "202202241300", 
                                  toDate = "202202241330", 
                                  env_name = "research", 
                                  token = my_authorization)
hashtag8.4 <- search_fullarchive (q, 
                                  n = 300, 
                                  fromDate = "202202241400", 
                                  toDate = "202202241430", 
                                  env_name = "research", 
                                  token = my_authorization)
q <- "#stopwar lang:en"
hashtag9 <- search_fullarchive (q, 
                                n = 500, 
                                fromDate = "202202241100", 
                                toDate = "202202241400", 
                                env_name = "research", 
                                token = my_authorization)


## Ukraine Timeslines ----
ZelenskyyUa <- rtweet::get_timeline(c("ZelenskyyUa"), n = 3000, parse=T, token=my_authorization)
ZelenskyyUa <- ZelenskyyUa[-c(659:2344),]
ZelenskyyUa <- ZelenskyyUa[-c(1:191),]

Ukraine <- rtweet::get_timeline(c("Ukraine"), n = 3000, parse=T, token=my_authorization)
Ukraine <- Ukraine[-c(178:1878),]
Ukraine <- Ukraine[-c(1:28),]

lesiavasylenko <- rtweet::get_timeline(c("lesiavasylenko"), n = 3000, parse=T, token=my_authorization)
lesiavasylenko <- lesiavasylenko[-c(1627:1950),]
lesiavasylenko <- lesiavasylenko[-c(1:296),]

Denys_Shmyhal <- rtweet::get_timeline(c("Denys_Shmyhal"), n = 3000, parse=T, token=my_authorization)
Denys_Shmyhal <- Denys_Shmyhal[-c(664:1577),]
Denys_Shmyhal <- Denys_Shmyhal[-c(1:219),]

StefanishynaO <- rtweet::get_timeline(c("StefanishynaO"), n = 3000, parse=T, token=my_authorization)
StefanishynaO <- StefanishynaO[-c(308:974),]
StefanishynaO <- StefanishynaO[-c(1:121),]

FedorovMykhailo <- rtweet::get_timeline(c("FedorovMykhailo"), n = 3000, parse=T, token=my_authorization)
FedorovMykhailo <- FedorovMykhailo[-c(443:634),]
FedorovMykhailo <- FedorovMykhailo[-c(1:130),]

DmytroKuleba <- rtweet::get_timeline(c("DmytroKuleba"), n = 3000, parse=T, token=my_authorization)
DmytroKuleba <- DmytroKuleba[-c(604:2996),]
DmytroKuleba <- DmytroKuleba[-c(1:169),]

oleksiireznikov <- rtweet::get_timeline(c("oleksiireznikov"), n = 3000, parse=T, token=my_authorization)
oleksiireznikov <- oleksiireznikov [-c(251:460),]
oleksiireznikov <- oleksiireznikov [-c(1:107),]

otkachenkoua <- rtweet::get_timeline(c("otkachenkoua"), n = 3000, parse=T, token=my_authorization)
otkachenkoua <- otkachenkoua [-c(299:438),]
otkachenkoua <- otkachenkoua [-c(1:143),]

Podolyak_M <- rtweet::get_timeline(c("Podolyak_M"), n = 3000, parse=T, token=my_authorization)
Podolyak_M <- Podolyak_M [-c(1:470),]

NewVoiceUkraine <- rtweet::get_timeline(c("NewVoiceUkraine"), n = 3000, parse=T, token=my_authorization)
NewVoiceUkraine <- NewVoiceUkraine [-c(1:1373),]

MFA_Ukraine <- rtweet::get_timeline(c("MFA_Ukraine"), n = 3000, parse=T, token=my_authorization)
MFA_Ukraine <- MFA_Ukraine [-c(2730:3000),]
MFA_Ukraine <- MFA_Ukraine [-c(1:910),]

SergiyKyslytsya <- rtweet::get_timeline(c("SergiyKyslytsya"), n = 3000, parse=T, token=my_authorization)
SergiyKyslytsya <- SergiyKyslytsya [-c(1288:2999),]
SergiyKyslytsya <- SergiyKyslytsya [-c(1:378),]

UKRinUN <- rtweet::get_timeline(c("UKRinUN"), n = 3000, parse=T, token=my_authorization)
UKRinUN <- UKRinUN [-c(2129:3000),]
UKRinUN <- UKRinUN [-c(1:222),]

Makeiev <- rtweet::get_timeline(c("Makeiev"), n = 3000, parse=T, token=my_authorization)
Makeiev <- Makeiev [-c(1096:2985),]
Makeiev <- Makeiev [-c(1:577),]

## Russia Timelines ----
mfa_russia <- rtweet::get_timeline(c("mfa_russia"), n = 3000, parse=T, token=my_authorization)
mfa_russia <- mfa_russia[-c(2719:2997),]
mfa_russia <- mfa_russia[-c(1:1140),]

Russia <- rtweet::get_timeline(c("Russia"), n = 3000, parse=T, token=my_authorization)
Russia <- Russia[-c(481:2999),]
Russia <- Russia[-c(1:263),]

KremlinRussia_E <- rtweet::get_timeline(c("KremlinRussia_E"), n = 3000, parse=T, token=my_authorization)
KremlinRussia_E <- KremlinRussia_E[-c(49:2997),]

GovernmentRF <- rtweet::get_timeline(c("GovernmentRF"), n = 3000, parse=T, token=my_authorization)
GovernmentRF <- GovernmentRF[-c(8:2998),]

MID_Kaliningrad <- rtweet::get_timeline(c("MID_Kaliningrad"), n = 3000, parse=T, token=my_authorization)
MID_Kaliningrad <- MID_Kaliningrad[-c(401:2987),]
MID_Kaliningrad <- MID_Kaliningrad[-c(1:179),]

MedvedevRussiaE <- rtweet::get_timeline(c("MedvedevRussiaE"), n = 3000, parse=T, token=my_authorization)
MedvedevRussiaE <- MedvedevRussiaE[-c(20:1500),]
MedvedevRussiaE <- MedvedevRussiaE[-c(1:9),]

mod_russia <- rtweet::get_timeline(c("mod_russia"), n = 3000, parse=T, token=my_authorization)
mod_russia <- mod_russia[-c(594:3000),]


DnKornev <- rtweet::get_timeline(c("DnKornev"), n = 3000, parse=T, token=my_authorization)
DnKornev <- DnKornev[-c(107:2985),]
DnKornev <- DnKornev[-c(1:9),]

Amb_Ulyanov <- rtweet::get_timeline(c("Amb_Ulyanov"), n = 3000, parse=T, token=my_authorization)
Amb_Ulyanov <- Amb_Ulyanov[-c(2520:2969),]
Amb_Ulyanov <- Amb_Ulyanov[-c(1:1034),]

Dpol_un <- rtweet::get_timeline(c("Dpol_un"), n = 3000, parse=T, token=my_authorization)
Dpol_un <- Dpol_un[-c(1033:2916),]
Dpol_un <- Dpol_un[-c(1:478),]

A__Alimov <- rtweet::get_timeline(c("A__Alimov"), n = 3000, parse=T, token=my_authorization)
A__Alimov <- A__Alimov[-c(1469:2864),]
A__Alimov <- A__Alimov[-c(1:534),]

RussiaUN <- rtweet::get_timeline(c("RussiaUN"), n = 3000, parse=T, token=my_authorization)
RussiaUN <- RussiaUN[-c(2646:3000),]
RussiaUN <- RussiaUN[-c(1:1161),]

FridrihShow <- rtweet::get_timeline(c("FridrihShow"), n = 3000, parse=T, token=my_authorization)
FridrihShow <- FridrihShow[-c(92:102),]
FridrihShow <- FridrihShow[-c(1:4),]

RusMission_EU <- rtweet::get_timeline(c("RusMission_EU"), n = 3000, parse=T, token=my_authorization)
RusMission_EU <- RusMission_EU[-c(339:2990),]
RusMission_EU <- RusMission_EU[-c(1:95),]

politblogme <- rtweet::get_timeline(c("politblogme"), n = 3000, parse=T, token=my_authorization)
politblogme <- politblogme[-c(1915:2987),]
politblogme <- politblogme[-c(1:726),]

## Backup/Saving extracted Data ----

write_as_csv(ZelenskyyUa,"ZelenskyyUa.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(Ukraine,"Ukraine.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(lesiavasylenko,"lesiavasylenko.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(Denys_Shmyhal,"Denys_Shmyhal.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(StefanishynaO,"StefanishynaO.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(FedorovMykhailo,"FedorovMykhailo.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(DmytroKuleba,"DmytroKuleba.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(oleksiireznikov,"oleksiireznikov.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(otkachenkoua,"otkachenkoua.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(Podolyak_M,"Podolyak_M.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(NewVoiceUkraine,"NewVoiceUkraine.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(MFA_Ukraine,"MFA_Ukraine.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(SergiyKyslytsya,"SergiyKyslytsya.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(UKRinUN,"UKRinUN.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(Makeiev,"Makeiev.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

write_as_csv(mfa_russia,"mfa_russia.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(Russia,"Russia.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(KremlinRussia_E,"KremlinRussia_E.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(GovernmentRF,"GovernmentRF.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(MID_Kaliningrad,"MID_Kaliningrad.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(MedvedevRussiaE,"MedvedevRussiaE.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(mod_russia,"mod_russia.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(DnKornev,"DnKornev.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(Amb_Ulyanov,"Amb_Ulyanov.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(Dpol_un,"Dpol_un.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(A__Alimov,"A__Alimov.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(RussiaUN,"RussiaUN.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(FridrihShow,"FridrihShow.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(RusMission_EU,"RusMission_EU.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(politblogme,"politblogme.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")


write_as_csv(hashtag1,"putin1.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag1.1,"putin2.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag1.2,"putin3.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag1.3,"putin4.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag1.4,"putin5.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

write_as_csv(hashtag2.1,"ukraineh1.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag2.2,"ukraineh2.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag2.3,"ukraineh3.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag2.4,"ukraineh4.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

write_as_csv(hashtag3.1,"ucrania1.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag3.2,"ucrania2.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag3.3,"ucrania3.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag3.4,"ucrania4.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

write_as_csv(hashtag4.1,"ww3_1.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag4.2,"ww3_2.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag4.3,"ww3_3.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag4.4,"ww3_4.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

write_as_csv(hashtag5.1,"NATO1.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag5.2,"NATO2.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag5.3,"NATO3.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag5.4,"NATO4.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

write_as_csv(hashtag6.1,"Biden1.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag6.2,"Biden2.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag6.3,"Biden3.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag6.4,"Biden4.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

write_as_csv(hashtag7.1,"Kiev1.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag7.2,"Kiev2.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag7.3,"Kiev3.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag7.4,"Kiev4.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

write_as_csv(hashtag8.1,"Russia1.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag8.2,"Russia2.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag8.3,"Russia3.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
write_as_csv(hashtag8.4,"Russia4.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

write_as_csv(hashtag9,"stopwar.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")

# Processing Twitter Data ----
## Network analysis ----
### Ukraine Interaction Network ----
#### Ukraine Metadata / THIS SECTION WAS DROPPED IN THE FINAL VERSION OF THE THESIS---- 
UKRusers <- c("ZelenskyyUa", "Ukraine", "lesiavasylenko","Denys_Shmyhal",
              "StefanishynaO","FedorovMykhailo","DmytroKuleba","oleksiireznikov",
              "otkachenkoua","Podolyak_M","NewVoiceUkraine","MFA_Ukraine",
              "SergiyKyslytsya","UKRinUN","Makeiev")
UKRMeta <- lookup_users(UKRusers)
#### Ukraine Nodes---------------
temp5 <- ZelenskyyUa
for (i in 1:14){
  temp5 <- rbind(temp5,get(UKRusers[i+1]))
}
temp6 <- temp5[1]
temp6[2]<- temp5[4]
temp6[3]<- temp5[9]
temp6[4]<- temp5[10]
temp6[5]<- temp5[30]
temp6[6]<- temp5[31]
temp6[7]<- temp5[39]
temp6[8]<- temp5[40]
temp6[9]<- temp5[54]
temp6[10]<-temp5[55]
temp7 <- temp6[!grepl(",",temp6$mentions_user_id),]
temp1 <- temp7[1:2]
colnames(temp1)[1] <- "ID"
colnames(temp1)[2] <- "Label"
temp1 <- drop_na(temp1)
temp2 <- temp7[3:4]
colnames(temp2)[1] <- "ID"
colnames(temp2)[2] <- "Label"
temp2 <- drop_na(temp2)
temp3 <- temp7[5:6]
colnames(temp3)[1] <- "ID"
colnames(temp3)[2] <- "Label"
temp3 <- drop_na(temp3)
temp4 <- temp7[7:8]
temp4 <- drop_na(temp4)
colnames(temp4)[1] <- "ID"
colnames(temp4)[2] <- "Label"
temp4 <- rbind(temp4,temp3)
temp4 <- rbind(temp4,temp2)
temp4 <- rbind(temp4,temp1)
temp4 <- unique(temp4)
temp7 <- temp6
temp7 <- unlist(temp6$mentions_user_id)
temp7<- as.data.frame(temp7)
temp8 <- temp6
temp8 <- unlist(temp6$mentions_screen_name)
temp8<- as.data.frame(temp8)
temp1 <- temp7
temp1[2] <- temp8
temp1 <- drop_na(temp1)
temp1 <- unique(temp1)
colnames(temp1)[1] <- "ID"
colnames(temp1)[2] <- "Label"
temp1 <- as.data.frame(temp1)
temp4 <- as.data.frame(temp4)
temp10 <- rbind(temp1,temp4)
temp10 <- unique(temp10)
temp10 <- as.data.frame(temp10)
temp10 <- apply(temp10,2,as.character)
write.csv(temp10,"C:/XXXXXXXXXXXXX.csv", row.names = FALSE)
#### Ukraine Network Edges---------------
temp5 <- ZelenskyyUa
for (i in 1:14){
  temp5 <- rbind(temp5,get(UKRusers[i+1]))
}
temp6 <- temp5[1]
temp6[2]<- temp5[9]
temp6[3]<- temp5[30]
temp6[4]<- temp5[39]
temp6[5]<- temp5[54]
temp7 <- temp6[!grepl(",",temp6$mentions_user_id),]
temp1 <- temp7[1:2]
colnames(temp1)[1] <- "Source"
colnames(temp1)[2] <- "Target"
temp2<-temp7[1]
temp2[2]<-temp7[3]
colnames(temp2)[1] <- "Source"
colnames(temp2)[2] <- "Target"
temp3<-temp7[1]
temp3[2]<-temp7[4]
colnames(temp3)[1] <- "Source"
colnames(temp3)[2] <- "Target"
temp4<-temp7[1]
temp4[2]<-temp7[5]
colnames(temp4)[1] <- "Source"
colnames(temp4)[2] <- "Target"
temp9 <- temp1
temp9 <- rbind(temp9,temp2)
temp9 <- rbind(temp9,temp3)
temp9 <- rbind(temp9,temp4)
for (i in 1:15){
  temp5 <- get(UKRusers[i])
  temp6 <- temp5[1]
  temp6[2]<- temp5[9]
  temp6[3]<- temp5[30]
  temp6[4]<- temp5[39]
  temp6[5]<- temp5[54]
  rm(temp8)
  temp8 <- temp6[grepl(",",temp6$mentions_user_id),]
  if (nrow(temp8)>0){
    temp8 <- unlist(temp8$mentions_user_id)
    temp8 <- as.data.frame(temp8)
    temp8[2] <- temp5[1]
    colnames(temp8)[2] <- "Source"
    colnames(temp8)[1] <- "Target"
    temp8 <- temp8[c("Source","Target")]
    temp9 <- rbind(temp9, temp8)
  }
}
temp9 <- apply(temp9,2,as.character)
temp9 <- as.data.frame(temp9)
temp9 <- drop_na(temp9)
temp9 <- apply(temp9,2,as.character)
write.csv(temp9,"C:/XXXXXXXXXXXXXXXXX.csv", row.names = FALSE) # Pathing of your choice


### Russia Interaction Network ----
#### Russia Metadata / THIS SECTION WAS DROPPED IN THE FINAL VERSION OF THE THESIS-------- 
RUSusers <- c("mfa_russia","Russia","KremlinRussia_E","GovernmentRF",
              "MID_Kaliningrad","MedvedevRussiaE","mod_russia","DnKornev",
              "Amb_Ulyanov","Dpol_un","A__Alimov","RussiaUN","FridrihShow",
              "RusMission_EU","politblogme")
RUSMeta <- lookup_users(RUSusers)
#### Russia Network Nodes ----
temp5 <- mfa_russia
for (i in 1:14){
  temp5 <- rbind(temp5,get(RUSusers[i+1]))
}
temp6 <- temp5[1]
temp6[2]<- temp5[4]
temp6[3]<- temp5[9]
temp6[4]<- temp5[10]
temp6[5]<- temp5[30]
temp6[6]<- temp5[31]
temp6[7]<- temp5[39]
temp6[8]<- temp5[40]
temp6[9]<- temp5[54]
temp6[10]<-temp5[55]
temp7 <- temp6[!grepl(",",temp6$mentions_user_id),]
temp1 <- temp7[1:2]
colnames(temp1)[1] <- "ID"
colnames(temp1)[2] <- "Label"
temp1 <- drop_na(temp1)
temp2 <- temp7[3:4]
colnames(temp2)[1] <- "ID"
colnames(temp2)[2] <- "Label"
temp2 <- drop_na(temp2)
temp3 <- temp7[5:6]
colnames(temp3)[1] <- "ID"
colnames(temp3)[2] <- "Label"
temp3 <- drop_na(temp3)
temp4 <- temp7[7:8]
temp4 <- drop_na(temp4)
colnames(temp4)[1] <- "ID"
colnames(temp4)[2] <- "Label"
temp4 <- rbind(temp4,temp3)
temp4 <- rbind(temp4,temp2)
temp4 <- rbind(temp4,temp1)
temp4 <- unique(temp4)
temp7 <- temp6
temp7 <- unlist(temp6$mentions_user_id)
temp7<- as.data.frame(temp7)
temp8 <- temp6
temp8 <- unlist(temp6$mentions_screen_name)
temp8<- as.data.frame(temp8)
temp1 <- temp7
temp1[2] <- temp8
temp1 <- drop_na(temp1)
temp1 <- unique(temp1)
colnames(temp1)[1] <- "ID"
colnames(temp1)[2] <- "Label"
temp1 <- as.data.frame(temp1)
temp4 <- as.data.frame(temp4)
temp10 <- rbind(temp1,temp4)
temp10 <- unique(temp10)
temp10 <- as.data.frame(temp10)
temp10 <- apply(temp10,2,as.character)
write.csv(temp10,"C:/XXXXXXXXXXXXXXXXX.csv", row.names = FALSE) # Pathing of your choice

#### Russia Network Edges ----
temp5 <- mfa_russia
for (i in 1:14){
  temp5 <- rbind(temp5,get(RUSusers[i+1]))
}
temp6 <- temp5[1]
temp6[2]<- temp5[9]
temp6[3]<- temp5[30]
temp6[4]<- temp5[39]
temp6[5]<- temp5[54]
temp7 <- temp6[!grepl(",",temp6$mentions_user_id),]
temp1 <- temp7[1:2]
colnames(temp1)[1] <- "Source"
colnames(temp1)[2] <- "Target"
temp2<-temp7[1]
temp2[2]<-temp7[3]
colnames(temp2)[1] <- "Source"
colnames(temp2)[2] <- "Target"
temp3<-temp7[1]
temp3[2]<-temp7[4]
colnames(temp3)[1] <- "Source"
colnames(temp3)[2] <- "Target"
temp4<-temp7[1]
temp4[2]<-temp7[5]
colnames(temp4)[1] <- "Source"
colnames(temp4)[2] <- "Target"
temp9 <- temp1
temp9 <- rbind(temp9,temp2)
temp9 <- rbind(temp9,temp3)
temp9 <- rbind(temp9,temp4)
for (i in 1:15){
  temp5 <- get(RUSusers[i])
  temp6 <- temp5[1]
  temp6[2]<- temp5[9]
  temp6[3]<- temp5[30]
  temp6[4]<- temp5[39]
  temp6[5]<- temp5[54]
  rm(temp8)
  temp8 <- temp6[grepl(",",temp6$mentions_user_id),]
  if (nrow(temp8)>0){
    temp8 <- unlist(temp8$mentions_user_id)
    temp8 <- as.data.frame(temp8)
    temp8[2] <- temp5[1]
    colnames(temp8)[2] <- "Source"
    colnames(temp8)[1] <- "Target"
    temp8 <- temp8[c("Source","Target")]
    temp9 <- rbind(temp9, temp8)
  }
}
temp9 <- apply(temp9,2,as.character)
temp9 <- as.data.frame(temp9)
temp9 <- drop_na(temp9)
temp9 <- apply(temp9,2,as.character)
write.csv(temp9,"C:XXXXXXXXXXXXXXXXXXXXXx.csv", row.names = FALSE) # Pathing of your choice


## Content analysis ----
### Tweeting Frequency and Frequency Correlation ----
#### Ukraine Individual Graphs ----
rtweet::ts_plot(get(UKRusers[1]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[1],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[2]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[2],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[3]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[3],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[4]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[4],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[5]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[5],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[6]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[6],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[7]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[7],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[8]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[8],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[9]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[9],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[10]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[10],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[11]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[11],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[12]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[12],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[13]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[13],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[14]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[14],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(UKRusers[15]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",UKRusers[15],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

#### Russian Individual Graphs----
rtweet::ts_plot(get(RUSusers[1]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[1],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[2]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[2],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[3]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[3],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[4]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[4],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[5]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[5],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[6]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[6],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[7]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[7],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[8]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[8],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[9]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[9],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[10]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[10],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[11]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[11],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[12]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[12],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[13]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[13],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[14]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[14],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)

rtweet::ts_plot(get(RUSusers[15]),"days")+
  ggplot2::theme_minimal()+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold"))+
  ggplot2::labs(
    x = NULL, y = NULL,
    title = paste0("Frequency of Tweets from ","\"",RUSusers[15],"\"",sep=""),
    subtitle = "Daily Tweet Count",
    caption = "\nSource: Data collected from Twitter's API via rtweet")+
  geom_line(color="#27aeef", size=0.5, alpha=3, linetype=1)


#### Ukraine F&FC ----
for (i in 1:15){
  a <- ts_data(get(UKRusers[i]))
  colnames(a) <- c("Date",UKRusers[i])
  assign(paste0("UKR",i,sep=""), a)
}
temp <- UKR1
for (i in 2:15){
  temp2 <- get(paste0("UKR",i,sep=""))
  temp <- full_join(temp,temp2)
}
temp[is.na(temp)] <- 0
TSstudio::ts_plot(temp)

temp2 <- temp
temp2[1] <- NULL
corr_matrix <- round(cor(temp2, method="spearman"),2)
ggcorrplot::ggcorrplot(corr_matrix,
                       lab=TRUE,
                       lab_size = 2.7) + ggplot2::labs(
                         x = NULL, y = NULL,
                         title = paste0("Tweet coordination for Ukrainian group"),
                         subtitle = "Spearman's Correlation between tweeting frequencies of profiles",
                         caption = "\nSource: Data collected from Twitter's API via rtweet")

#### Russia F&FC ----
for (i in 1:15){
  a <- ts_data(get(RUSusers[i]))
  colnames(a) <- c("Date",RUSusers[i])
  assign(paste0("RUS",i,sep=""), a)
} 
temp <- RUS1
for (i in 2:15){
  temp2 <- get(paste0("RUS",i,sep=""))
  temp <- full_join(temp,temp2)
}
temp[is.na(temp)] <- 0
TSstudio::ts_plot(temp)

temp2 <- temp
temp2[1] <- NULL
corr_matrix <- round(cor(temp2, method="spearman"),2)
ggcorrplot::ggcorrplot(corr_matrix,
                       lab=TRUE,
                       lab_size = 2.7) + ggplot2::labs(
                         x = NULL, y = NULL,
                         title = paste0("Tweet coordination for Russian group"),
                         subtitle = "Spearman's Correlation between tweeting frequencies of profiles",
                         caption = "\nSource: Data collected from Twitter's API via rtweet")
### Organic Tweet Charts ----
#### Ukraine chart ----
ukr.stat.chart <- data.frame(matrix(ncol = 13, nrow = 0))
colnames(ukr.stat.chart) <- c("Profile","Total Tweets","Organic",
                              "Organic %","Retweets","Retweets %",
                              "Replies","Replies %","Average Tweets/Day",
                              "Total Favorites","Average Favorites",
                              "Total Retweets", "Average Retweets")
for (i in 1:15){
  n <- get(UKRusers[i])
  k <- n[n$is_retweet==FALSE,]
  k <- subset(k, is.na(k$reply_to_status_id)) 
  l <- n[n$is_retweet==TRUE,]
  m <- subset(n, !is.na(n$reply_to_status_id))
  o <- (nrow(k) + nrow(l) +nrow(m))
  ukr.stat.chart[i,1]<- UKRusers[i]
  ukr.stat.chart[i,2]<- o
  ukr.stat.chart[i,3]<- as.integer(nrow(k))
  ukr.stat.chart[i,4]<- nrow(k)/o*100
  ukr.stat.chart[i,5]<- nrow(l)
  ukr.stat.chart[i,6]<- nrow(l)/o*100
  ukr.stat.chart[i,7]<- nrow(m)
  ukr.stat.chart[i,8]<- nrow(m)/o*100
  ukr.stat.chart[i,9]<- o/length(which(get(paste0("UKR",i,sep=""))[,2]!=0))
  ukr.stat.chart[i,10]<- sum(n$favorite_count)
  ukr.stat.chart[i,11]<- sum(n$favorite_count)/nrow(n)
  ukr.stat.chart[i,12]<- sum(n$retweet_count)
  ukr.stat.chart[i,13]<- sum(n$retweet_count)/nrow(n)
}
ukr.stat.chart <- round_df(ukr.stat.chart, 2)
rownames(ukr.stat.chart) <-ukr.stat.chart$Profile
ukr.stat.chart$Profile<-NULL
#### Russian chart ----
rus.stat.chart <- data.frame(matrix(ncol = 13, nrow = 0))
colnames(rus.stat.chart) <- c("Profile","Total Tweets","Organic",
                              "Organic %","Retweets","Retweets %",
                              "Replies","Replies %","Average Tweets/Day",
                              "Total Favorites","Average Favorites",
                              "Total Retweets", "Average Retweets")
for (i in 1:15){
  n <- get(RUSusers[i])
  k <- n[n$is_retweet==FALSE,]
  k <- subset(k, is.na(k$reply_to_status_id)) 
  l <- n[n$is_retweet==TRUE,]
  m <- subset(n, !is.na(n$reply_to_status_id))
  o <- (nrow(k) + nrow(l) +nrow(m))
  rus.stat.chart[i,1]<- RUSusers[i]
  rus.stat.chart[i,2]<- o
  rus.stat.chart[i,3]<- as.integer(nrow(k))
  rus.stat.chart[i,4]<- nrow(k)/o*100
  rus.stat.chart[i,5]<- nrow(l)
  rus.stat.chart[i,6]<- nrow(l)/o*100
  rus.stat.chart[i,7]<- nrow(m)
  rus.stat.chart[i,8]<- nrow(m)/o*100
  rus.stat.chart[i,9]<- o/length(which(get(paste0("RUS",i,sep=""))[,2]!=0))
  rus.stat.chart[i,10]<- sum(n$favorite_count)
  rus.stat.chart[i,11]<- sum(n$favorite_count)/nrow(n)
  rus.stat.chart[i,12]<- sum(n$retweet_count)
  rus.stat.chart[i,13]<- sum(n$retweet_count)/nrow(n)
}
rus.stat.chart <- round_df(rus.stat.chart, 2)
rownames(rus.stat.chart) <-rus.stat.chart$Profile
rus.stat.chart$Profile<-NULL

#### Russian-Ukraine chart and Metric Correlation ----
rusukr.chart <- data.frame(matrix(ncol = 8, nrow = 0))
colnames(rusukr.chart) <- c("Profiles","Total Tweets","Average Organic %",
                            "Average Retweets %"," Average Replies %","Average Tweets / Day",
                            "Average Favorites", "Average Retweets")
for (i in 1:2){
  if (i==1){
    temp <- ukr.stat.chart
    rusukr.chart[i,1] <- "Ukraine Accounts"
  }
  else{
    temp <- rus.stat.chart
    rusukr.chart[i,1] <- "Russian Accounts"
  }
  rusukr.chart[i,2] <- sum(temp$`Total Tweets`)
  rusukr.chart[i,3] <- mean(temp$`Organic %`)
  rusukr.chart[i,4] <- mean(temp$`Retweets %`)
  rusukr.chart[i,5] <- mean(temp$`Replies %`)
  rusukr.chart[i,6] <- mean(temp$`Average Tweets/Day`)
  rusukr.chart[i,7] <- mean(temp$`Average Favorites`)
  rusukr.chart[i,8] <- mean(temp$`Average Retweets`)
}
rusukr.chart <- round_df(rusukr.chart, 2)
rownames(rusukr.chart) <-rusukr.chart$Profile
rusukr.chart$Profiles<-NULL

correlation <- round(cor(ukr.stat.chart, method="spearman"),2)
ggcorrplot::ggcorrplot(correlation,
                       lab=TRUE,
                       lab_size = 2.7) + ggplot2::labs(
                         x = NULL, y = NULL,
                         title = paste0("Tweet type importance for Ukrainian group"),
                         subtitle = "Spearman's Correlation between Tweet type and Tweet metrics",
                         caption = "\nSource: Data collected from Twitter's API via rtweet")
correlation <- round(cor(rus.stat.chart, method="spearman"),2)
ggcorrplot::ggcorrplot(correlation,
                       lab=TRUE,
                       lab_size = 2.7)+ ggplot2::labs(
                         x = NULL, y = NULL,
                         title = paste0("Tweet type importance for Russian group"),
                         subtitle = "Spearman's Correlation between Tweet type and Tweet metrics",
                         caption = "\nSource: Data collected from Twitter's API via rtweet")


### Text mining and Sentiment analysis ----
#### Content Wordclouds and Barplots ----
UKRresults <- get(UKRusers[1])
RUSresults <- get(RUSusers[1])
for (i in 2:15){
  UKRresults <- rbind(UKRresults, get(UKRusers[i]))
  RUSresults <- rbind(RUSresults, get(RUSusers[i]))
}
##### Ukraine W&B----
a<- nrow(UKRresults)
setwd("C:/XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX") # Pathing of your choice
for (i in 1:a){
  write.table(UKRresults[i,5], file = paste0("ukr",i,"text.txt"), sep = "\t",
              col.names=FALSE, row.names = FALSE)
}
UKRresults <- Corpus (DirSource("C:/XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")) # Pathing of your choice
UKRresults <- tm_map(UKRresults, tolower)
convert_to_space <- content_transformer(function(x, pattern) gsub(pattern, " ", x))
UKRresults <- tm_map(UKRresults, convert_to_space, 
                     "€|£|™|“|”|â|/|@|<|~|Ÿ|ð|®|\\|\"|ã|©|œa|œi|˜|œ|_|—|–|’")
UKRresults <- tm_map(UKRresults, removeWords, 
                     stopwords("english"))
UKRresults <- tm_map(UKRresults, removePunctuation)
UKRresults <- tm_map(UKRresults, removeNumbers)
UKRresults <- tm_map(UKRresults, removeWords, 
                     c("also","will","day","can","many","around",
                       "new","including","get","one","two","tco",
                       "https","now","amp","uffa","uff","ufe","ufea",
                       "ufef","ufac","uf","ufd","ue","ud","u","ua",
                       "ub","ufee","—","_","s","–","’","just","may",
                       "ufb","still","since","ufec"))
convert_similar_ukr <- content_transformer(function(x, pattern) gsub(pattern, "ukraine", x))
convert_similar_rus <- content_transformer(function(x, pattern) gsub(pattern, "russia", x))
UKRresults <- tm_map(UKRresults, convert_similar_ukr, 
                     "ukrainian|ukrainians|ukraines")
UKRresults <- tm_map(UKRresults, convert_similar_rus, 
                     "russian|russians|russias")
UKRresults <- tm_map(UKRresults, stripWhitespace)

wordcloud(UKRresults, scale=c(3,0.5), min.freq = 200 ,
          random.order=FALSE, rot.per=0.35, use.r.layout=FALSE,
          colors=brewer.pal(8, "Spectral"))
ukrm <- as.matrix(TermDocumentMatrix(UKRresults))
ukrms <- rowSums(ukrm)
oukrms <- ukrms[order(-ukrms)]

default_margins <- par("mar")
default_margins
new_margins <- default_margins + c(4, 0, 0, 0)
par(mar = new_margins)

barplot(oukrms[1:50], 
        las=2, 
        names.arg = rownames(oukrms)[1:50],
        col ="navyblue", 
        main ="Ukrainian frequent words", 
        ylab = "Word frequencies") 
##### Russia W&B ----
a<- nrow(RUSresults)
setwd("C:XXXXXXXXXXXXXXXXXXXXXX") # Pathing of your choice
for (i in 1:a){
  write.table(RUSresults[i,5], file = paste0("rus",i,"text.txt"), sep = "\t",
              col.names=FALSE, row.names = FALSE)
}
RUSresults <- Corpus (DirSource("C:/XXXXXXXXXXXXXXXXXXXXXXXXXXXXX")) # Pathing of your choice
RUSresults <- tm_map(RUSresults, tolower)
RUSresults <- tm_map(RUSresults, convert_to_space, 
                     "€|£|™|“|”|â|/|@|<|~|Ÿ|ð|®|\\|\"|ã|©|œa|œi|˜|œ|_|—|–|’")
RUSresults <- tm_map(RUSresults, removeWords, 
                     stopwords("english"))
RUSresults <- tm_map(RUSresults, removePunctuation)
RUSresults <- tm_map(RUSresults, removeNumbers)
RUSresults <- tm_map(RUSresults, removeWords, 
                     c("also","will","day","can","many","around",
                       "new","including","get","one","two","tco",
                       "https","now","amp","uffa","uff","ufe","ufea",
                       "ufef","ufac","uf","ufd","ue","ud","u","ua",
                       "ub","ufee","—","_","s","–","’","just","may",
                       "ufa","ufhttps","don","ufc","ufec","ufb","uffe",
                       "still","since"))
RUSresults <- tm_map(RUSresults, convert_similar_ukr, 
                     "ukrainian|ukrainians|ukraines")
RUSresults <- tm_map(RUSresults, convert_similar_rus, 
                     "russian|russians|russias")
convert_similar_rus1 <- content_transformer(function(x, pattern) gsub(pattern, "zakharova", x))
RUSresults <- tm_map(RUSresults, convert_similar_rus1, 
                     "ufaczakharova")
convert_similar_rus2 <- content_transformer(function(x, pattern) gsub(pattern, "nazi", x))
RUSresults <- tm_map(RUSresults, convert_similar_rus2, 
                     "neonazi|neonazis|nazism|nationalists|azov")
convert_similar_rus3 <- content_transformer(function(x, pattern) gsub(pattern, "west", x))
RUSresults <- tm_map(RUSresults, convert_similar_rus2, 
                     "western")
RUSresults <- tm_map(RUSresults, stripWhitespace)

wordcloud(RUSresults, scale=c(4,0.5), min.freq = 200 ,
          random.order=FALSE, rot.per=0.35, use.r.layout=FALSE,
          colors=brewer.pal(8, "Spectral"))

rusm <- as.matrix(TermDocumentMatrix(RUSresults))
rusms <- rowSums(rusm)
orusms <- rusms[order(-rusms)]

barplot(orusms[1:50], 
        las=2, 
        names.arg = rownames(orusms)[1:50], 
        col ="red4", 
        main ="Russian frequent words", 
        ylab = "Word frequencies") 

#### Sentiment charts ----
##### Ukraine Sentiment ----
temp <- data.frame("word"= names(oukrms),
                   "frequency" = oukrms)
temp2 <- get_sentiments("nrc")
ukr.sent <- inner_join(temp, temp2)
ukr.sent <- subset(ukr.sent, ukr.sent$sentiment!="positive")
ukr.sent <- subset(ukr.sent, ukr.sent$sentiment!="negative")
ggplot(data=ukr.sent,aes(x=sentiment,y=frequency))+
  geom_bar(aes(fill=sentiment),stat = "identity")+
  theme_minimal()+
  theme(legend.position="none")+
  theme(axis.text=element_text(size=10,colour="black"))+
  theme(title = element_text(face = "bold"))+
  xlab(NULL)+ylab("frequency")+
  labs(title="Ukrainian Tweets' Projected Sentiment",
       subtitle = "Based on the NRC lexicon",
       caption = "\nSource: Data collected from Twitter's API via rtweet")
###### extras----
temp <- data.frame("word"= names(oukrms),
                   "frequency" = oukrms)
temp2 <- get_sentiments("nrc")
ukr.sent2 <- inner_join(temp, temp2)
ukr.sent2 <- subset(ukr.sent2, ukr.sent2$sentiment!="joy")
ukr.sent2 <- subset(ukr.sent2, ukr.sent2$sentiment!="trust")
ukr.sent2 <- subset(ukr.sent2, ukr.sent2$sentiment!="fear")
ukr.sent2 <- subset(ukr.sent2, ukr.sent2$sentiment!="disgust")
ukr.sent2 <- subset(ukr.sent2, ukr.sent2$sentiment!="anticipation")
ukr.sent2 <- subset(ukr.sent2, ukr.sent2$sentiment!="anger")
ukr.sent2 <- subset(ukr.sent2, ukr.sent2$sentiment!="sadness")
ukr.sent2 <- subset(ukr.sent2, ukr.sent2$sentiment!="surprise")
ggplot(data=ukr.sent2,aes(x=sentiment,y=frequency))+
  geom_bar(aes(fill=sentiment),stat = "identity")+
  theme_minimal()+
  theme(legend.position="none")+
  theme(axis.text=element_text(size=10,colour="black"))+
  theme(title = element_text(face = "bold"))+
  xlab(NULL)+ylab("frequency")+
  labs(title="Ukrainian Tweets Positive-Negative",
       subtitle = "Based on the NRC lexicon",
       caption = "\nSource: Data collected from Twitter's API via rtweet")

temp <- ukr.sent2
temp <- subset(temp, temp$sentiment!="negative")
print(sum(temp$frequency))      
temp <- ukr.sent2
temp <- subset(temp, temp$sentiment!="positive")
print(sum(temp$frequency))

##### Russia Sentiment ----   
temp <- data.frame("word"= names(orusms),
                   "frequency" = orusms)
temp2 <- get_sentiments("nrc")
rus.sent <- inner_join(temp, temp2)
rus.sent <- subset(rus.sent, rus.sent$sentiment!="positive")
rus.sent <- subset(rus.sent, rus.sent$sentiment!="negative")
ggplot(data=rus.sent,aes(x=sentiment,y=frequency))+
  geom_bar(aes(fill=sentiment),stat = "identity")+
  theme_minimal()+
  theme(legend.position="none")+
  theme(axis.text=element_text(size=10,colour="black"))+
  theme(title = element_text(face = "bold"))+
  xlab(NULL)+ylab("frequency")+
  labs(title="Russian Tweets' Projected Sentiment",
       subtitle = "Based on the NRC lexicon",
       caption = "\nSource: Data collected from Twitter's API via rtweet")
###### extras----
temp <- data.frame("word"= names(orusms),
                     "frequency" = orusms)
temp2 <- get_sentiments("nrc")
rus.sent2 <- inner_join(temp, temp2)
rus.sent2 <- subset(rus.sent2, rus.sent2$sentiment!="joy")
rus.sent2 <- subset(rus.sent2, rus.sent2$sentiment!="trust")
rus.sent2 <- subset(rus.sent2, rus.sent2$sentiment!="fear")
rus.sent2 <- subset(rus.sent2, rus.sent2$sentiment!="disgust")
rus.sent2 <- subset(rus.sent2, rus.sent2$sentiment!="anticipation")
rus.sent2 <- subset(rus.sent2, rus.sent2$sentiment!="anger")
rus.sent2 <- subset(rus.sent2, rus.sent2$sentiment!="sadness")
rus.sent2 <- subset(rus.sent2, rus.sent2$sentiment!="surprise")
ggplot(data=rus.sent2,aes(x=sentiment,y=frequency))+
  geom_bar(aes(fill=sentiment),stat = "identity")+
  theme_minimal()+
  theme(legend.position="none")+
  theme(axis.text=element_text(size=10,colour="black"))+
  theme(title = element_text(face = "bold"))+
  xlab(NULL)+ylab("frequency")+
  labs(title="Russian Tweets Positive-Negative",
       subtitle = "Based on the NRC lexicon",
       caption = "\nSource: Data collected from Twitter's API via rtweet")

temp <- rus.sent2
temp<- subset(temp, temp$sentiment!="negative")
print(sum(temp$frequency))      
temp <- rus.sent2
temp <- subset(temp, temp$sentiment!="positive")
print(sum(temp$frequency))
