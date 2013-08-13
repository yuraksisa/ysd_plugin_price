Gem::Specification.new do |s|
  s.name    = "ysd_plugin_price"
  s.version = "0.2.0"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2013-08-09"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb']
  s.description = "Price management Yito Plugin"
  s.summary = "Price management Yito Plugin"
  s.homepage = "http://github.com/yuraksisa/ysd_plugin_price"  
  
  s.add_runtime_dependency "ysd_md_price",">=0.2.0"         # The model
      
end
