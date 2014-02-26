require 'optaplanner'

Awestruct::Extensions::Pipeline.new do
	helper Awestruct::Extensions::Partial
	helper Awestruct::Extensions::Relative
	helper Awestruct::Extensions::Optaplanner

  extension Awestruct::Extensions::Posts.new('/blog')
  # extension Awestruct::Extensions::AutoTag.new(:posts)
  extension Awestruct::Extensions::Paginator.new(:posts, '/blog/index', :per_page => 8)
  extension Awestruct::Extensions::Tagger.new(:posts, '/blog/index', '/blog/tags', :per_page => 8)
  extension Awestruct::Extensions::Disqus.new()
end
