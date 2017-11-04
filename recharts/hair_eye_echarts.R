attach(hair_eye_male)
hair_eye_male <- subset(as.data.frame(HairEyeColor), Sex == "Male")
hair_eye_male[,1] <- paste0("Hair",hair_eye_male[,1])
hair_eye_male[,2] <- paste0("Eye",hair_eye_male[,2])
echart(data = hair_eye_male, x = Hair, y = ~Freq,  series = ~Eye,
        type = 'bar', palette='fivethirtyeight',
        xlab = 'Hair', ylab = 'Freq')
detach(hair_eye_male)