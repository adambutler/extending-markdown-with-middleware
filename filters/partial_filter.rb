require 'yaml'

# partial_filter.rb
class PartialFilter < Banzai::Filter
  def call(input)
    # Regex for the block, capture the contents
    input.gsub(/```partial(.+?)```/m) do |s|

      # Run the captured contents through YAML to read the config
      config = YAML.load($1)

      # Take the source key from the config, this is the file we'll be injecting.
      document_path = "./#{config["source"]}"

      # Read the contents of the file and return the result
      File.read(document_path)
    end
  end
end
