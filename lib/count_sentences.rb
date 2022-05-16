require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = self.split(/[!.?]{1}/)
    result = count.filter {|word| word.length > 1}
    result.length
  end
end

