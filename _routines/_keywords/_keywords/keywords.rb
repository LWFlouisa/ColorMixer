module Keywords
  class Text
    def self.retrieve_words
      input = File.read("_input/input.txt").to_s.downcase

      filename = input.tr " ", "_"

      input_tokens = input.split(" ")

      iteration = input_tokens.size.to_i

      row  = 0

      open("_output.txt", "w") { |f|
        iteration.times do
          string = input_tokens[row]

          dquote = '"'

          trim1 = string.strip.tr ",", ""
          trim2 = trim1.tr "#{dquote}", ""
          trim3 = trim2.tr "-", "_"
          trim4 = trim3.tr ".", ""

          f.puts "#{trim4} = :#{trim4}, '#{trim4}', '#{trim4}'"

          row = row + 1   
        end
      }
    end

#    def self.refine_database
#      row = 0
#
#      database = File.readlines("_database/output.txt")
#
#      loop_limit = database.size.to_i
#
#      loop_limit.times do
#        new_symbol = database[row]
#
#        if new_symbol    == "“stay = :“stay, '“stay', '“stay'"
#        else
#          open("_output/output.rb", "a") { |f|
#            f.puts "#{new_symbol}"
#          }
#        end
#
#        row = row + 1
#      end
#    end
  end
end
