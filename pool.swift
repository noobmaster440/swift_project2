public class pool{
    var easy:[question]
    var medium:[question]
    var hard:[question]

    init(){
        let q1=question(quesText:"The place of origin of an earthquake is called",options:["Epicentre","Seismal","Focus","Amphidromic Point"],labeloptions:["a","b","c","d"],difficultyRating:"easy",correctOption:"a")
        let q2=question(quesText:"The Tropic of cancer does not pass through",options:["India","Pakistan","Bangladesh","Myanmar"],labeloptions:["a","b","c","d"],difficultyRating:"easy",correctOption:"b")
        let q3=question(quesText:"Name the Continents that form a mirror image of each other",options:["North America and South America","Asia and Africa","Africa and South America","Europe and Asia"],labeloptions:["a","b","c","d"],difficultyRating:"easy",correctOption:"c")
        let q4=question(quesText:"The busiest and most important sea route of the world is",options:[" North Pacific Sea Route","North Atlantic Sea Route","South Atlantic Sea Route","Indian Ocean Route"],labeloptions:["a","b","c","d"],difficultyRating:"easy",correctOption:"d")
        let q5=question(quesText:"The highest average salinity amongst the following seas is reported from",options:["Dead Sea","Red Sea","Black Sea","Migration Sea"],labeloptions:["a","b","c","d"],difficultyRating:"easy",correctOption:"c")

        let q6=question(quesText:"Which is the largest fishing ground in the world?",options:["Japan sea","North sea","North-East-Pacific","Newfoundland water"],labeloptions:["a","b","c","d"],difficultyRating:"medium",correctOption:"b")
        let q7=question(quesText:"Which is the second most abundant metal in the earth's crust ?",options:["Iron","Aluminium","Copper","Zinc"],labeloptions:["a","b","c","d"],difficultyRating:"medium",correctOption:"c")
        let q8=question(quesText:"Which city is known as 'Gold capital of the world' ?",options:["Johannesburg","Paris","Dubai","Saudi"],labeloptions:["a","b","c","d"],difficultyRating:"medium",correctOption:"d")
        let q9=question(quesText:"Ema is an example of ",options:["Active volcano","Dormant Volcano"," Extinct volcano","Plateau in a volcano region"],labeloptions:["a","b","c","d"],difficultyRating:"medium",correctOption:"a")
        let q10=question(quesText:"__________ is called the 'low country' of the earth",options:["Spain","Holland","Italy","Hungary"],labeloptions:["a","b","c","d"],difficultyRating:"medium",correctOption:"a")

        let q11=question(quesText:"Smallest gulf in the world is",options:["Gulf of Mexico","Persian Gulf","Gulf of Oman","Gulf of California"],labeloptions:["a","b","c","d"],difficultyRating:"hard",correctOption:"c")
        let q12=question(quesText:"Which of the following features is the product of vulcanicity",options:["Geosyncline","Escarpment","Atoll","Fold mountain"],labeloptions:["a","b","c","d"],difficultyRating:"hard",correctOption:"d")
        let q13=question(quesText:"what does the term 'Lithosphere' refer to",options:["Interior of the earth","Crust of the earth","Plants and animals","None of the above"],labeloptions:["a","b","c","d"],difficultyRating:"hard",correctOption:"b")
        let q14=question(quesText:"In which region does rainfall occur throughout the year?",options:["Equatorial region","Polar region","Sub-polar region","Middle-latitude region"],labeloptions:["a","b","c","d"],difficultyRating:"hard",correctOption:"a")
        let q15=question(quesText:"Latitude of place is indicated of its",options:["Time","Altitude","Amount of rain","Temparature"],labeloptions:["a","b","c","d"],difficultyRating:"hard",correctOption:"b")


        self.easy=[q1,q2,q3,q4,q5]
        self.medium=[q6,q7,q8,q9,q10]
        self.hard=[q11,q12,q13,q14,q15]
    }
}
