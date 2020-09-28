movies = Hash.new


movies = {
  Tenet: 4,
}


while choice != 0
puts "What do you want?"
choice = gets.chomp
if choice == 0
  break
end
case choice
  when "add"
    puts "What movie do you want to add?"
    title = gets.chomp

    if movies[title.to_sym].nil?
      puts "What's the rating of that movie?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The movie: #{title} with the rating #{rating} was added to the library"
    else
      puts "The movie already exists!"
    end

  when "update"
    puts "What movie rating do you want to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "The movie is not here!"
    else
      puts "Set the new rating: "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each {|movie, rating| puts "#{movie}: #{rating}"}
  when "delete"
    puts "What movie do you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "The movie is not here!"
    else
      movies.delete(title.to_sym)
      puts "#{title} is deleted!"
    end
  else 
    puts "Error!"
end
end