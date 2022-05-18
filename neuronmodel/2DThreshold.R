filename <- "Threshold x -1000 to 0 in 11 steps y -1000 to 0 in 11 steps"
current_threshold <- as.matrix(read.csv(paste(filename,".csv",sep="")))
electrode_y_distance <- as.vector(rownames(current_threshold), "numeric")
electrode_x_distance <- scan(paste(filename,".csv",sep=""), n=dim(current_threshold)[2], sep=",")

pdf(paste(filename,".pdf",sep=""), paper="letter")
#png(paste(filename,".png",sep=""), width=2048, height=2048)
#persp(current_threshold/1000, y=electrode_x_distance, x=electrode_y_distance, col="steelblue1", border="lightsteelblue4", lwd=0.5, theta=130, ltheta=130, lphi=130, ticktype="detailed", shade=0.6)
persp(current_threshold/1000, y=electrode_x_distance, x=electrode_y_distance, col="steelblue1", lwd=2, theta=130, ltheta=130, lphi=130, ticktype="detailed", shade=0.8, d=100000)
dev.off()

pdf(paste("Sqrt ",filename,".pdf",sep=""), paper="letter")
#png(paste("Sqrt",filename,".png",sep=""), width=2048, height=2048)
#persp(sqrt(current_threshold), y=electrode_x_distance, x=electrode_y_distance, col="steelblue1", border="lightsteelblue4", lwd=0.5, theta=135, ltheta=90, lphi=130, ticktype="detailed", shade=0.6, d=100000)
persp(sqrt(current_threshold), y=electrode_x_distance, x=electrode_y_distance, col="steelblue1", lwd=2, theta=135, ltheta=90, lphi=130, ticktype="detailed", shade=0.8, d=100000)
dev.off()

