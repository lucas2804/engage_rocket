class DetectSetCardsService
  def set?(cards)
    [:shape, :color, :fill, :count].each do |attr|
      return true if all_the_same?(cards, attr) || all_diff?(cards, attr)
    end

    false
  end

  private

  def all_the_same?(cards, attr)
    (cards.map(&attr).uniq.size == 1)
  end

  def all_diff?(cards, attr)
    (cards.map(&attr).uniq.size == cards.size)
  end
end
