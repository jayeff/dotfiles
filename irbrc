# see http://rakeroutes.com/blog/customize-your-irb/

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:EVAL_HISTORY] = 1000
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File::expand_path("~/.irb_history")

require 'awesome_print'
AwesomePrint.irb!

# source: https://gist.github.com/jimweirich/4950443
# edit with `vim #{location[0]} +#{location[1]}`
def src(object, method)
  if object.respond_to?(method)
    meth = object.method(method)
  elsif object.is_a?(Class)
    meth = object.instance_method(method)
  end
  location = meth.source_location
  # edit(*location) if location
  location
rescue NameError => ex
  nil
end
