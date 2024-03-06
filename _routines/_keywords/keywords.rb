require_relative "_keywords/keywords.rb"

require 'humanist_errors'
include HumanistErrors

with_human_errors do

Keywords::Text.retrieve_words
# Keywords::Text.refine_database

end
