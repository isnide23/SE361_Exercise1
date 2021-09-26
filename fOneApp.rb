def get_driver_list
    driver_data = File.open("drivers.txt").readlines.map(&:chomp)
    driver_list = []
    driver_data.each do |driver|
        driver_list << driver.split
    end
    driver_list
end

def sort_by_last_name
    driver_data = get_driver_list
    sorted_driver_data = driver_data.sort_by { |x| x[1] }
    sorted_driver_data.each do |driver|
        puts driver.join(" ")
    end
end

def sort_by_driver_number
    driver_data = get_driver_list
    sorted_driver_data = driver_data.sort_by { |x| x[2].to_i }
    sorted_driver_data.each do |driver|
        puts driver.join(" ")
    end
end


puts "2021 F1 Drivers"
puts "==============="
puts
puts "2021 F1 Drivers : alphabetical"
puts "=============================="
sort_by_last_name
puts 
puts "2021 F1 Drivers : driver number"
puts "==============================="
sort_by_driver_number

