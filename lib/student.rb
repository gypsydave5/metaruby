class Student

  def initialize
    @awards = []
  end

  def award *awards
    @awards += awards
    awards.each do |award_name|
      self.send(:define_singleton_method, "has_#{award_name}?") do
        @awards.include? award_name
      end
    end
  end

  def method_missing name
    if /^has_.+?\?/.match(name.to_s)
      false
    else
      super name
    end
  end

  def remove_award award
    @awards.delete(award)
  end

end
