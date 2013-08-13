require 'ysd-plugins' unless defined?Plugins::Plugin

Plugins::SinatraAppPlugin.register :price do

   name=        'price'
   author=      'yurak sisa'
   description= 'Integrate the Price Aspect'
   version=     '0.1'
   hooker       Yito::Extension::PriceExtension
  
end