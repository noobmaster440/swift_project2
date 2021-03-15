class user{
    var quesAnswered:[answer]
    var score:Int
    var getScore:Int{
      get{
          for q in quesAnswered{
    print("The current question is \(i)")
            
            switch i {
            // case 1,2:{
            //   if q.reply==q.question.correctOption {
            //     score=0

            //   }else{
            //     score=0
            //   }
            // }
            case 3:
              if q.reply==q.question.correctOption {
                score=10000
              }else{
                score=0
              }
            
            // case 4,5:{
            //   if q.reply==q.question.correctOption {
            //     score=0

            //   }else{
            //     score=0
            //   }
            // }
            case 6:
              if q.reply==q.question.correctOption {
                return 100000
              }else{
                return 10000
              }
            
            case 7:
              if q.reply==q.question.correctOption {
                return 250000
              }else{
                return 100000
              }
            
            case 8:
              if q.reply==q.question.correctOption {
                return 500000
              }else{
                return 100000
              }
            
            case 9:
              if q.reply==q.question.correctOption {
                return 1000000
              }else{
                return 100000
              }
            
            default:
              return score
            }
            // if(q.question.difficultyRating=="easy"&&q.reply==q.question.correctOption){
            //   score+=10
            //   print("score updated \(score)")
            // }else if(q.question.difficultyRating=="medium"&&q.reply==q.question.correctOption){
            //   score=10000
            // }else if(q.question.difficultyRating=="hard"&&q.reply==q.question.correctOption){
            //   score=100000
            // }
            
          }
        return score
      }
    }
    init (score:Int){
      self.score=score
      self.quesAnswered=[]
    }
}