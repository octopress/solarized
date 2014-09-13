require "octopress-solarized/version"
require "octopress-ink"

Octopress::Ink.add_plugin({
  name:        "Octopress Solarized",
  description: "Style code snippets with Ethan Schoonover's Solarized theme (tweaked a bit).",
  path:         File.expand_path(File.join(File.dirname(__FILE__), '../')),
  version:      Octopress::Solarized::VERSION,
})
