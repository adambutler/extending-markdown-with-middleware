require 'banzai'
require 'nokogiri'
require 'redcarpet'
require 'active_support/all'

Dir["./pipelines/*.rb"].each { |file| require file }
Dir["./filters/*.rb"].each { |file| require file }

document = File.read("./document.md")
content = MarkdownPipeline.new.call(document)

puts content
