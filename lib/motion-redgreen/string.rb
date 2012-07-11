class String
  alias_method :string_original_method_missing, :method_missing
  def method_missing(sym, *args, &block)
    begin
      Term::ANSIColor.send(sym) { self } 
    rescue NoMethodError
      string_original_method_missing(sym, *args, &block)
    end
  end
end