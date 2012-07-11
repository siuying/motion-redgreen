class String
  [  
    :clear        ,
    :reset        , 
    :bold         ,
    :dark         ,
    :italic       , 
    :underline    ,
    :underscore   , 
    :blink        ,
    :rapid_blink  , 
    :negative     , 
    :concealed    ,
    :strikethrough, 
    :black        ,
    :red          ,
    :green        ,
    :yellow       ,
    :blue         ,
    :magenta      ,
    :cyan         ,
    :white        ,
    :on_black     ,
    :on_red       ,
    :on_green     ,
    :on_yellow    ,
    :on_blue      ,
    :on_magenta   ,
    :on_cyan      ,
    :on_white     
  ].each do |color|
    define_method(color) do |*args, &block|
      Term::ANSIColor.send(color, *args, &block)
    end
  end
end