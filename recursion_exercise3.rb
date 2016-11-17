class Array
  def deep_dup
    if self.none?{|el| el.is_a?(Array)}
      new_array = []
      self.each do |el|
        new_array << el
      end
      return new_array
    end
      #inductive step
    self.map {|el| el.deep_dup}
  end
end
