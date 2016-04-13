require 'mailgun'

class HomeController < ApplicationController
    def first
        
    end
    
    def second
        
        
        @orange = params[:address]
        
        @grape = params[:content]
        
        @pear = params[:title]
        
        
       
        mg_client = Mailgun::Client.new("key-b7de5c526fbd0999792737f6a613d9ce")

        message_params =  {
                            from: 'sunwoolyu@naver.com',
                            to:  @orange ,
                            subject: @pear,
                            text:    @grape
                         }

        result = mg_client.send_message('sandbox5dd3a635ca1e41b08bfc6343ee7ee6d0.mailgun.org', message_params).to_h!

        message_id = result['id']
        message = result['message']
        
        
    end
    
    

end
