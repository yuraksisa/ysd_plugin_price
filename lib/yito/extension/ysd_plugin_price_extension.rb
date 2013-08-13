require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener
require 'ysd_md_price' unless defined?Yito::BM::Prices::PriceModelAspect

module Yito
  module Extension
  	#
  	# Plugin price extension
  	#
  	class PriceExtension < Plugins::ViewListener

      # ========= Aspects ==================
    
      #
      # Retrieve an array of the aspects defined in the plugin
      #
      # The attachment aspect (complement)
      #
      def aspects(context={})
      
        app = context[:app]
      
        aspects = []
        aspects << ::Plugins::Aspect.new(:price, app.t.aspect.price.label, 
        	                             Yito::BM::Prices::PriceModelAspect, 
        	                             Yito::Aspect::PriceAspectDelegate.new)
                                               
        return aspects
       
      end   


  	end
  end
end