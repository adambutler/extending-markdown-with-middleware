# dynamic_content_filter.rb
class DynamicContentFilter < Banzai::Filter
  def call(input)
    input.gsub("$CURRENT_YEAR", Time.current.year.to_s)
  end
end
