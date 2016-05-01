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
    words1 = sentence1.split
    words2 = sentence2.split
    common_words = words1 & words2
    common_words[rand(common_words.size)] + ' '
  end

  def random_sentence_pair
    sentence1_index = rand_index(sentences.size)
    sentence2_index = rand_index(sentences.size, sentence1_index)
    [sentences[sentence1_index], sentences[sentence2_index]]
  end

  def sentences
    @sentences ||= @quotes.map(&:text).flat_map { |t| t.split('.') }.map(&:strip)
  end

  def rand_index(size, *excludes)
    loop do
      index = rand(size)
      return index unless index.in?(excludes)
    end
  end
end
