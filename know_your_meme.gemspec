
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "know_your_meme/version"

Gem::Specification.new do |spec|
  spec.name          = "know_your_meme"
  spec.version       = KnowYourMeme::VERSION
  spec.authors       = ["Annalisa Graziano"]
  spec.email         = ["arosegraz@gmail.com"]

  spec.summary       = "Retrieves retrieve stats on the top 8 entries from knowyourmeme.com's 'Popular' page."
  spec.homepage      = "https://github.com/annalisarose/know-your-meme-cli-gem"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = ["know-your-meme"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri", ">= 0"
end
