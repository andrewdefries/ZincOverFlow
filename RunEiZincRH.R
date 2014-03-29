####################
library(eiR)
####################
files<-list.files(recursive=TRUE, pattern=".sdf")
####################
####################
DoThis<-function(a){
####################
sdfset<-read.SDFset(files[a])
####################
valid <- validSDF(sdfset)
sdfset <- sdfset[valid]
apset<-sdf2ap(sdfset)
sdfset<-sdfset[!sapply(as(apset,"list"),length)==1]
write.SDF(sdfset, file=files[a], cid=T, sig=T)
####################
eiInit(files[a])
}
#################
####################
a<-1:length(files)
lapply(a,DoThis)
####################
r <- 60
d <- 40
refIddb <- eiMakeDb(r,d)
####################
