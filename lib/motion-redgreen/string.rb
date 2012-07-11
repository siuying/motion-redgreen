class String
  alias_method :string_original_method_missing, :method_missing
  def method_missing(sym, *args, &block)
    Term::ANSIColor.send(sym) { self } rescue string_original_method_missing
  end
end