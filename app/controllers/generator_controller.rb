class GeneratorController < ApplicationController
  def get_diploma
    p = Participant.where("code = :c", {:c => params[:code]}).first

    if !p 
      render :text => "404 Not Found", :status => 404
      return
    end

    path = "#{Rails.root}/private/diplomas/#{p.code}.pdf"
    if !File.exist?(path)
      Prawn::Document.generate(path, {:template => p.event.template.to_s}) do
        text_box p.name,
                 :at => [p.event.x, p.event.y],
                 :width => p.event.width,
                 :height => p.event.height,
                 :align => :center,
                 :valign => :center,
                 :size => 42,
                 :overflow => :shrink_to_fit,
                 :min_font_size => 14
        #bounding_box([p.event.x, p.event.y], :width => p.event.width, :height => p.event.height) do
        #  transparent(0.5) { stroke_bounds }
        #end
      end
    end
    
    send_file path, :x_sendfile=>true, :type => "application/pdf", :disposition => 'inline'

  end
end
