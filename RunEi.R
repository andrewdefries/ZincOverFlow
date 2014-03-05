library(eiR)
####################
files<-list.files(recursive=TRUE, pattern=".sdf")
####################
files<-files[1:length(files)]
DoThis<-function(a){
        eiInit(files[a])
}
####################
a<-1:length(files)
lapply(a,DoThis)
####################

