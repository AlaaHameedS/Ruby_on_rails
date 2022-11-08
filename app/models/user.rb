class User < ApplicationRecord
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    validates_length_of :username, :minimum => 5
    #validates :name , presence :true
    validates :identifier , presence: true 
    #validates :greeting ,with => /[w+]/
    has_one :Work


    scope :with_count, -> { where(work_year >3) }


    def self.generate_number
        SecureRandom.hex(10)

    end
    def self.print_out
        "This is User table"
    end
    
    def self.aaa_out
       
        User.find(all)
    end
    def self.bbb_out
 
      User.find(4)    
    
    end
    def self.ccc_out
        User.all
 
      end

      before_validation :generate_id
      private 
          def generate_id
           self.identifier = "ABC-#{SecureRandom.hex(5)}"
          end

          before_validation :print_out
     private
     
        def print_out 
            self.greeting ="Welcom "

        end
     
end
