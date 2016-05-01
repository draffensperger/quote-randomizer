class RandomCombination
  def initialize(quotes)
    @quotes = quotes
  end

  def random_combo
    sentence1, sentence2 = random_sentence_pair

    split_word = random_split_word(sentence1, sentence2)
    left = sentence1.split(split_word)[0]
    right = sentence2.split(split_word)[1]

    "#{left} #{split_word} #{right}."
  end

  private

  def random_split_word(sentence1, sentence2)
    common_words = sentence1.split & sentence2.split
    common_words[rand(common_words.size)] + ' '
  end

  def random_sentence_pair
    index1 = rand(sentences.size)
    index2 = rand_not_equal(sentences.size, index1)
    [sentences[index1], sentences[index2]]
  end

  def rand_not_equal(size, cannot_equal)
    loop do
      index = rand(size)
      return index if index != cannot_equal
    end
  end

  def sentences
    @sentences ||= @quotes.flat_map(&:sentences)
  end
end
