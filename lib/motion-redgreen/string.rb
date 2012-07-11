class String
  Term::ANSIColor::ATTRIBUTE_NAMES.each do |color|
    define_method(color) do
      Term::ANSIColor.send(color, self)
    end
  end
end