
pollutantmean <- function(directory, pollutant, id) {

setwd("/Users/shashankraina/")
cur_dir<-getwd()
spec_dir<-paste(cur_dir, directory, sep="/")
setwd(spec_dir)
#initiate variable
count=0
sum = 0
summer=0
addvalue=0
average=0
summer2=0
#START
for (i in id){
  if (pollutant=="sulfate"){ 
    if (i>-1 && i<10){
      name<-paste("00",i,sep="")
      name<-paste(name,".csv",sep="")
      dataframe<-read.csv(name, header=TRUE) 
      dataframe<-na.omit(dataframe)
      sulfate_vector<-dataframe$sulfate
      addvalue<-sum(sulfate_vector)
      is.numeric(addvalue) 
      summer = summer + addvalue
      adder<-nrow(dataframe)
      is.numeric(adder)
      summer2 = summer2 + adder
       
      
    }else if (i>9 && i<100){
      
      
      name<-paste("0",i,sep="")
      name<-paste(name,".csv",sep="")
      dataframe<-read.csv(name, header=TRUE) 
      dataframe<-na.omit(dataframe)
      sulfate_vector<-dataframe$sulfate
      addvalue<-sum(sulfate_vector)
      is.numeric(addvalue)
      summer = summer + addvalue
      adder<-nrow(dataframe)
      is.numeric(adder)
      summer2 = summer2 + adder
      
    }else if(i>99 && i<332){
      
      
      name<-paste("",i,sep="")
      name<-paste(name,".csv",sep="")
      dataframe<-read.csv(name, header=TRUE) 
      dataframe<-na.omit(dataframe)
      sulfate_vector<-dataframe$sulfate
      addvalue<-sum(sulfate_vector)
      is.numeric(addvalue)
      summer = summer + addvalue
      adder<-nrow(dataframe)
      is.numeric(adder)
      summer2 = summer2 + adder
      
    }
    
  }
  else
    {
    
    if (i>-1 && i<10){
      
      name<-paste("00",i,sep="")
      name<-paste(name,".csv",sep="")
      dataframe<-read.csv(name, header=TRUE)
      dataframe<-na.omit(dataframe)
      nitrate_vector<-dataframe$nitrate
      addvalue<-sum(nitrate_vector)
      is.numeric(addvalue)
      summer = summer + addvalue
      adder<-nrow(dataframe)
      is.numeric(adder)
      summer2 = summer2 + adder
      
    }else if (i>9 && i<100){
      name<-paste("0",i,sep="")
      name<-paste(name,".csv",sep="")
      dataframe<- read.csv(name, header=TRUE)
      dataframe<-na.omit(dataframe)
      nitrate_vector<-dataframe$nitrate
      addvalue<-sum(nitrate_vector)
      is.numeric(addvalue)
      summer = summer + addvalue
      adder<-nrow(dataframe)
      is.numeric(adder)
      summer2 = summer2 + adder
                            }
    else if(i>99 && i<332){
      name<-paste("",i,sep="")
      name<-paste(name,".csv",sep="")
      dataframe<- read.csv(name, header=TRUE)
      dataframe<-na.omit(dataframe)
      nitrate_vector<-dataframe$nitrate
      addvalue<-sum(nitrate_vector)
      is.numeric(addvalue)
      summer = summer + addvalue
      adder<-nrow(dataframe)
      is.numeric(adder)
      summer2 = summer2 + adder
                           }
    
  }
  
} 
            
mean=summer/summer2
return(mean)
   }

pollutantmean("specdata", "nitrate", 70:72)                                                                





