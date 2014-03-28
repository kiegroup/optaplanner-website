require File.expand_path '../haml/filters/asciidoc.rb', __FILE__
require 'optaplanner'

Awestruct::Extensions::Pipeline.new do
	helper Awestruct::Extensions::Partial
	helper Awestruct::Extensions::Relative
	helper Awestruct::Extensions::Optaplanner

  extension Awestruct::Extensions::Posts.new('/blog')
  extension Awestruct::Extensions::Paginator.new(:posts, '/blog/index', :per_page => 5)
  extension Awestruct::Extensions::Tagger.new(:posts, '/blog/index', '/blog/tags', :per_page => 5)
  extension Awestruct::Extensions::Disqus.new
  extension Awestruct::Extensions::Atomizer.new(:posts, '/blog/news.atom', :template => File.join( File.dirname(__FILE__), 'relative_template.atom.haml'))
end
