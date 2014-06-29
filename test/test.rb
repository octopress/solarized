require 'colorator'
has_failed = false

system('rake css_build')

diff1 = `diff ../build/solarized-dark.min.css expected/solarized-dark.min.css`
diff2 = `diff ../build/solarized-light.min.css expected/solarized-light.min.css`

abort "Failed with diff: #{diff1}" if diff1.size > 0
abort "Failed with diff: #{diff2}" if diff2.size > 0

puts "passed".green
