require_relative 'dictionary'

class WordSelector
  attr_reader :word_to_guess

  def initialize(wordbook)
    @dictionary = wordbook
    @word_to_guess = ''
  end

  def specific(i)
    @dictionary.words[i]
  end

  def random
    vetted_dic = @dictionary.words.select { |x| x.length > 5 && x.length < 12 }
    vetted_dic[rand(vetted_dic.length)]
  end
end
