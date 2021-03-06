def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation 
        return contestant_hash["name"]
      end 
    end
  end
end

def count_contestants_by_hometown(data, hometown)
count_by_hometown = 0 
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count_by_hometown += 1 
      end
    end
  end
  return count_by_hometown
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
counter = 0 
sum_of_ages = 0 
  data[season].each do|contestant_hash|
    counter += 1 
    sum_of_ages += contestant_hash["age"].to_f
  end
  (sum_of_ages / counter).round 
end
