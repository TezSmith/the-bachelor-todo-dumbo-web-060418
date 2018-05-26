def get_first_name_of_season_winner(data, season)
  # return the first name of that season's winner
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
        if contestant["hometown"] == hometown
            counter +=1
        end #ends if
     end #ends contestants.each
   end #ends data.each
   return counter
end #ends method

def get_occupation(data, hometown)
  # returns the occupation of the first contestant who hails from that hometown
  occupations = []
  data.each do |season, contestants|
    contestants.each do |contestant|
        if contestant["hometown"] == hometown
          occupations << contestant["occupation"]
        end #ends if
    end #ends contestants
  end #ends data
  return occupations.first
end

def get_average_age_for_season(data, season)
  #Iterate through the hash and return the average age of all of the contestants for that season.
    sum_of_ages = 0
    counter = 0
    data.each do |season, contestants|
      contestants.each do |contestant|
        sum_of_ages += contestant["age"].to_i
        counter +=1
      end
    end
    average_age = (sum_of_ages / counter)
    average_age.to_f.round
end
