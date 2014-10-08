class Student

  attr_accessor :awards

  def method_missing(name, *args)
    if /^has_.+?\?/.match(name.to_s)
      false
    elsif name == :award
      @awards ||= []
      @awards += args
      args.each do |award_name|
        self.send(:define_singleton_method, "has_#{award_name}?") do
          return true if @awards.include? award_name
          false
        end
      end
      self
    else
      super name
    end
  end

end
