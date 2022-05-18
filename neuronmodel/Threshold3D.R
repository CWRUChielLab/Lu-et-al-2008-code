filename <- "Skewed Threshold -1000 to -100 in 30 steps pulse 0 to 8 in 45 steps" 
current_threshold <- as.matrix(read.csv(paste(filename,".csv",sep="")))
pulse_width <- as.vector(rownames(current_threshold), "numeric")
electrode_distance <- scan(paste(filename,".csv",sep=""), n=dim(current_threshold)[2], sep=",")

pdf(paste(filename,".pdf",sep=""), paper="letter")
persp(current_threshold/1000, x=pulse_width, y=electrode_distance, col="lightsteelblue1", border="lightsteelblue4", lwd=0.5, theta=130, ltheta=130, lphi=130, ticktype="detailed", shade=0.6)
dev.off()

pdf(paste("Sqrt ",filename,".pdf",sep=""), paper="letter")
persp(sqrt(current_threshold), x=pulse_width, y=electrode_distance, col="lightsteelblue1", border="lightsteelblue4", lwd=0.5, theta=130, ltheta=130, lphi=130, ticktype="detailed", shade=0.6)
dev.off()

scaled_threshold <- apply(current_threshold, 2, function(x) return(x/x[length(x)]))

pdf(paste("Scaled ",filename,".pdf",sep=""), paper="letter")
persp(scaled_threshold, x=pulse_width, y=electrode_distance, col="lightsteelblue1", border="lightsteelblue4", lwd=0.5, theta=130, ltheta=130, lphi=130, ticktype="detailed", shade=0.6)
dev.off()

pdf(paste("Face Scaled ",filename,".pdf",sep=""), paper="letter")
persp(1/(scaled_threshold), x=pulse_width, y=electrode_distance, col="lightsteelblue1", border="lightsteelblue4", lwd=0.5, theta=90, phi=0, ltheta=130, lphi=130, ticktype="detailed", shade=0.6, d=10000)
dev.off()

pdf(paste("Edge Scaled ",filename,".pdf",sep=""), paper="letter")
persp(1/(scaled_threshold), x=pulse_width, y=electrode_distance, col="lightsteelblue1", border="lightsteelblue4", lwd=0.5, theta=0, phi=0, ltheta=130, lphi=130, ticktype="detailed", shade=0.6, d=10000)
dev.off()

