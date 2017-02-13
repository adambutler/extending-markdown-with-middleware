# markdown_pipeline.rb
class MarkdownPipeline < Banzai::Pipeline
  def initialize
    super(
      DynamicContentFilter,
      CredentialsFilter,
      PartialFilter,
      MarkdownFilter, # Convert the Markdown to HTML
      HeadingFilter,
    )
  end
end
