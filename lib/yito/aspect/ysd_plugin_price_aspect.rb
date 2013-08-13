require 'ui/ysd_ui_fieldset_render' unless defined?UI::FieldSetRender

module Yito
  module Aspect
    #
    # Price Aspect Delegate
    #
    class PriceAspectDelegate
      include ContentManagerSystem::Support

      #
      # Custom representation 
      #
      # @param [Hash] the context
      # @param [Object] the element
      #
      def custom(context={}, element, aspect_model)
    
        app = context[:app]
      
        if (not element.price_value)  
          ''
        else
          aspect = aspect_model.aspect('price')  
          renderer = ::UI::FieldSetRender.new('price', app)
          renderer.render('view')
        end
      
      end    

      # ========= Entity Management extension ========= 
    
      #
      # Information
      #
      def element_info(context={})
        app = context[:app]
        {:id => 'price', :description => "#{app.t.aspect.price.description}"} 
      end

      #
      # Renders the tab
      #
      def element_form_tab(context={}, aspect_model)
        app = context[:app]
        info = element_info(context)
        render_tab("#{info[:id]}_form", info[:description])
      end

      #
      # Add fields to edit the photo information in the content form
      #
      def element_form(context={}, aspect_model)
      
        app = context[:app]
      
        renderer = ::UI::FieldSetRender.new('price', app)      
        renderer.render('form', 'em')    
      
      end
    end    
  
  end
end