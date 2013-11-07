require "Matriz.rb"

describe Matriz do

	before :each do
	@m1 = Matriz.random(3,3)
	@m2 = Matriz.identidad(3,3)
	@m3 = @m1 + @m2
	
	end

	describe "Comprobacion de matrices" do
		it "Comprobando matriz identidad" do
		@m2.to_s
		@m2.to_s.should eq("[[1,0,0][0,1,0][0,0,1]]")
		end
	end


      describe "Comprobacion de las operaciones" do        

         it "La suma" do
         for i in 0...2
         for j in 0...2
         @m3[i][j].is_a? Integer
         end
         end        
         end
	end

end


