run_analysis.R

train_table_x=read.table('G:\\好好学习\\cleaning data\\UCI HAR Dataset\\train\\X_train.txt')
train_table_y=read.table('G:\\好好学习\\cleaning data\\UCI HAR Dataset\\train\\y_train.txt')
train_table=cbind(train_table_x,train_table_y)
class=rep('train',nrow(train_table))
train_table=cbind(train_table,class)
test_table_x=read.table('G:\\好好学习\\cleaning data\\UCI HAR Dataset\\test\\X_test.txt')
test_table_y=read.table('G:\\好好学习\\cleaning data\\UCI HAR Dataset\\test\\y_test.txt')
test_table=cbind(test_table_x,test_table_y)
class=rep('train',nrow(test_table))
test_table=cbind(test_table,class)
table=rbind(train_table,test_table)
table=as.data.frame(table)
mean=apply(table[,1:(ncol(table)-2)],1,mean)
sd=apply(table[,1:(ncol(table)-2)],1,sd)
name=read.table('G:\\好好学习\\cleaning data\\UCI HAR Dataset\\features.txt')
names(table)=name
write.table(table,file="table",row.name=FALSE)
