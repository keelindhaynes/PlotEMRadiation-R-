#Attribution and Purpose of Code====
# Code by Keelin Haynes (hayneskd@miamioh.edu, Political Science Major, Miami University, Oxford, OH USA
# 
#This code is a very simple plot designed to visualize the relationship between frequency and wavelength of EM radiation



temp <- c(287, 310, 1000, 2500, 3500, 6000)
peakwl <- c(10097, 9348, 2898, 1159, 827.9, 483)
radenergy <- c(384.69, 523.64, 56700, 2214843.75, 8508543.75, 73483200)

par(mar=c(5, 4, 4, 6) + 0.1)


plot(temp, radenergy, xlab = "Temperature (K)", ylab = "Radiant Energy (Wm^2", col = "blue", type = "b", main = "Relationship between Wavelength and Radiant Energy of EMR at Selected Temperatures")
#mtext("Radiant Energy (Wm^2)", side = 2, col ="blue", line = 2)
axis(2, col = "blue", col.axis = "blue")


par(new = TRUE)

plot(temp, peakwl, xlab = "", ylab = "", ylim = c(0, 7000), axes=FALSE, col = "red", type = "b")
mtext("Peak Wavelength (nm)", side = 4, col = "red", line=4)
axis(4, ylim = c(0, 7000), col.axis = "red", col = "red", las = 1)

axis.break(axis=2, breakcol = "black", style="slash")

