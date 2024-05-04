def work(page)
  page.content = page.content.gsub('world', 'yes')
end

Jekyll::Hooks.register :pages, :pre_render do |page|
  work(page)
  fail
end

Jekyll::Hooks.register :posts, :pre_render do |page|
  work(page)
  fail
end
