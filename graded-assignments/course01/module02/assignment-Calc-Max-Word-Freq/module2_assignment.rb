#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  #Implement the following read-only attributes in the LineAnalyzer class. 
  #* highest_wf_count - a number with maximum number of occurrences for a single word (calculated)
  #* highest_wf_words - an array of words with the maximum number of occurrences (calculated)
  #* content          - the string analyzed (provided)
  #* line_number      - the line number analyzed (provided)
  
  @@highest_wf_count = 0
  @@highest_wf_words = []
  
  @content = ""
  @line_number = 0
  @word_frequency = Hash.new(0)
  
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number
  

  #Add the following methods in the LineAnalyzer class.
  #* initialize() - taking a line of text (content) and a line number
  
  def initialize(content, line_number)
  	self.content = content
  	self.line_number = line_number
  	self.calculate_word_frequency()
  	#puts @word_frequency
  	self.update_highest_wf_count()
  	self.update_highest_wf_words()
  	#puts @@highest_wf_words.class
  end
  
  #TODO Is this really needed?
  def content= (content)
    @content = content
  end
  
  #TODO is this really needed?
  def line_number= (line_number)
    @line_number= line_number
  end
  
  #* calculate_word_frequency() - calculates result

  def calculate_word_frequency()
    @word_frequency = Hash.new(0) 
    
    content.split.each do |word| @word_frequency[word.downcase] += 1
    #puts @word_frequency
    # puts "ok "
  end
  
  def update_highest_wf_count()
    max = @word_frequency.values.max
    if (max > @@highest_wf_count) 
      @@highest_wf_count = max
      #puts "hoyeste oppdatert til " + @@highest_wf_count.to_s
    end
  end
  
  def update_highest_wf_words()
    #puts max
    highest_freq_words = Hash[@word_frequency.select { |word, frequency| frequency == @@highest_wf_count }]
    #puts word_frequency.max_by { |word,frequency| frequency }
    #highest_wf_count(highest_freq_words.values[0])
    @@highest_wf_words.push highest_freq_words.keys.each
    #puts @@highest_wf_words.to_s
    #puts highest_freq_words
  end
    
  end
  #Implement the initialize() method to:
  #* take in a line of text and line number
  #* initialize the content and line_number attributes
  #* call the calculate_word_frequency() method.

  #Implement the calculate_word_frequency() method to:
  #* calculate the maximum number of times a single word appears within
  #  provided content and store that in the highest_wf_count attribute.
  #* identify the words that were used the maximum number of times and
  #  store that in the highest_wf_words attribute.
end

LineAnalyzer.new("dette er en dette er en fin en sang er", 3)

#  Implement a class called Solution. 
class Solution

  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute 
  #  equal to the highest_count_across_lines determined previously.

  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers and stores them in analyzers.
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  #  highest_count_words_across_lines attribute values
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in 
  #  highest_count_words_across_lines in the specified format
  
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines 
  #  attribute value determined previously and stores them in highest_count_words_across_lines.

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format
end
