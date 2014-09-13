require "bundler/gem_tasks"
require "autoprefixer-rails"

desc "Generate CSS build"

task :build_css, :style do |t, args|
  style = args.style || 'compressed'
  add_sass
  compile 'build/solarized-light.scss', style
  compile 'build/solarized-dark.scss', style
  remove_sass
end

def add_sass
  sass = "$solarized: dark; @import '../assets/stylesheets/index';"
  File.open('build/solarized-dark.scss', 'w') { |f| f.write sass }
  File.open('build/solarized-light.scss', 'w') { |f| f.write sass.sub(/dark/,'light') }
end

def remove_sass
  `rm build/*.scss build/*.map`
end


def compile(file, style='default')
  css = file.sub(/scss/,'css')
  system "sass --style #{style} --no-cache #{file} #{css}"
  prefix_css(css)
end

def prefix_css(css_file)
  css = File.open(css_file).read
  css = AutoprefixerRails.process(css)
  File.open(css_file, 'w') { |f| f.write css }
end
