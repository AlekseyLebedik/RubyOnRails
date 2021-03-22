dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }



def get_city_names(somehash)
    somehash.keys
    end
    
def get_area_code(somehash, key)
    somehash[key]
    end
     
 
loop do
    puts 'Хотите узнать код вашего города (Y/N)'

    answer  = gets.chomp.downcase
    
    break if answer !='y'
    puts  'Вот весь список городов в словаре'
    puts get_city_names(dial_book)  
      
    puts  'Введите название города : '
    answer = gets.chomp.downcase
    puts answer
    
        if dial_book.include?(answer)
            puts "Ваш город : #{answer} имеет такое значение: #{ get_area_code(dial_book, answer)}"
        else
            puts 'Такого города нет в списке словаря!'            
        end    
end