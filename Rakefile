require "bundler/gem_tasks"
require "autoprefixer-rails"

desc "Generate CSS build"
task :build_css do
 
  light_css_file = 'build/solarized-light.min.css'
  dark_css_file = 'build/solarized-dark.min.css'
 
  system "sass --no-cache --style compressed build/sass/solarized-light.scss #{light_css_file}"
  system "sass --no-cache --style compressed build/sass/solarized-dark.scss #{dark_css_file}"

  # post process with Autoprefixer
  #
  prefix_css(light_css_file)
  prefix_css(dark_css_file)
end

def prefix_css(css_file)
  css = File.open(css_file).read
  css = AutoprefixerRails.process(css)
  File.open(css_file, 'w') { |f| f.write css }
end
