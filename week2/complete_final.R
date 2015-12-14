complete <- function(directory, id = 1:332) {
  setwd("/Users/shashankraina/")
  cur_dir<-getwd()
  spec_dir<-paste(cur_dir, directory, sep="/")
  setwd(spec_dir)
  #initiate variable
  output=0
  rows=0
  count=0
  print("    id  nobs", quote=FALSE)
  #START
  for (i in id){
      if (i<10){
        name<-paste("00",i,sep="")
        name<-paste(name,".csv",sep="")
      }else if(i>9 && i<100){
        name<-paste("0",i,sep="")
        name<-paste(name,".csv",sep="")
      } else if (i>99) {
        name<-paste("",i,sep="")
        name<-paste(name,".csv",sep="") }
    #COMMON PART
    count=count+1  
    dataframe<-read.csv(name, header=TRUE) 
    dataframe<-na.omit(dataframe)
    rows<-nrow(dataframe)
    output<-paste(count,i, rows, sep="   ")
    print(output,quote=FALSE)
}
                                                          }
#complete("specdata",c(1,3,5,7,8))
