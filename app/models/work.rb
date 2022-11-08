class Work < ApplicationRecord
    belongs_to :user

    def where_work
        "I am  work in " +self.work_location+'now'
    end  

    def cond_out
         work_name+" "+work_location
        
         
    end

    def career_title
        "Career Title " +self.work_name

    end
end
