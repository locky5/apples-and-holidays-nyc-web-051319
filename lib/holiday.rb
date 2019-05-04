require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, items| 
    items << supply 
    puts supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, items|
    items << supply
    puts supply 
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array ##creates a new holiday
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = holiday_hash[:winter].values
  all_winter_supplies = winter_supplies.flatten
  return all_winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:" ##ex. Winter:
      data.each do |holiday, supply| ##ONE HOLIDAY AT A TIME
        array = holiday.to_s.split("_") ##new_years --> new years
        final_holiday = []
        final_holiday << array.capitalize ##new years --> New Years
        holiday = final_holiday.join(" ") ##New Years
        supply = supply.join(", ") ##Lights, Wreath
        puts "  #{holiday}: #{supply}" ## Christmas: Lights, Wreath (space is required)
      end
  end
end
  
def all_holidays_with_bbq(holiday_hash)
  answer = []
  holiday_hash.each do |season, data|
    data.each do |holiday, value|
      value.each do |supply|
      if supply == "BBQ"
          answer.push(holiday)
        end
      end
    end
  end	
  return answer
end