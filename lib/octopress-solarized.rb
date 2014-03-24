require "octopress-solarized/version"

module Octopress
  module Solarized
    class Plugin < Octopress::Ink::Plugin
      def configuration
        {
          name:          "Octopress Solarized code",
          slug:          "solarized",
          description:   "Style code snippets with Ethan Schoonover's Solarized theme (tweaked a bit).",
          version:       Octopress::Solarized::VERSION,
          assets_path:   File.expand_path(File.join(File.dirname(__FILE__), '../assets'))
        }
      end
    end
  end
end

Octopress::Ink.register_plugin(Octopress::Solarized::Plugin)
