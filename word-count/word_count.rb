=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
class Phrase
    def initialize(string)
        @string=string
    end
    
    def word_count()
        # words = @string.split(/\w+/)
        # frequency = Hash.new(0)
        # words.each { |word| frequency[word.downcase] += 1 }
        # return frequency
        @string.scan(/\w+/).reduce(Hash.new(0)){|res,w| res[w.downcase]+=1;res}   
    end
end
