
class TestsController < ApplicationController

http_basic_authenticate_with :name => "adm", :password => "111", :only => :destroy

	def create
		@monter = Monter.find(params[:monter_id])
		@test = @monter.tests.new(params[:test])
		redirect_to monter_path(@monter)
	end
	
	def new
		@monter = Monter.find(params[:monter_id])
		@test = @monter.tests.create(params[:test])
		redirect_to monter_path(@monter)
	end
	
#	def show
#		@test = Test.find(params[:id])
#	end

	def update
		@monter = Monter.find(params[:monter_id])
		@test = @monter.tests.find(params[:id])
		
		selected_keywords = params[:test1]
    @test.test1 = selected_keywords.join()
    selected_keywords = params[:test2]
    @test.test2 = selected_keywords.join()
    selected_keywords = params[:test3]
    @test.test3 = selected_keywords.join()
    selected_keywords = params[:test4]
    @test.test4 = selected_keywords.join()
    selected_keywords = params[:test5]
    @test.test5 = selected_keywords.join()
    selected_keywords = params[:test6]
    @test.test6 = selected_keywords.join()
    selected_keywords = params[:test7]
    @test.test7 = selected_keywords.join()
    selected_keywords = params[:test8]
    @test.test8 = selected_keywords.join()
    selected_keywords = params[:test9]
    @test.test9 = selected_keywords.join()
 
		if @test.update_attributes(params[:test])
			redirect_to monter_path(@monter)
		else
			render 'edit'
		end
	end
  
	def destroy
		@monter = Monter.find(params[:monter_id])
		@test = @monter.tests.find(params[:id])
		@test.destroy
		redirect_to monter_path(@monter)
	end
	
	def graph
	graph = Scruffy::Graph.new
    graph.title = "Sample Line Graph"
    graph.renderer = Scruffy::Renderers::Standard.new

    graph.add :line, 'Example', [20, 100, 70, 30, 106]

    graph.render :to => "line_test.svg"
    graph.render  :width => 300, :height => 200,
      :to => "line_test.png", :as => 'png'
	end
	
	def edit
		@monter = Monter.find(params[:monter_id])
		@test = @monter.tests.find(params[:id])
	end
	
#	def show
#	@monter = Monter.find(params[:monter_id])
#	@test = @monter.tests.find(params[:id])
#	end
	
	def show
	@monter = Monter.find(params[:monter_id]) 
	@test = @monter.tests.find(params[:id])
	
		k1=0
		k2=0.000
		k3=0.00
		t1 = "+--++----+---+--++-+--+-++-+---+---++--------++-+-"
		counter=0
		i=0
		for i in 0..@test.test1.to_s.size-1
		  if (@test.test1[i] == '0')
       break;
     end  
			counter = counter + 1	
			if @test.test1[i] == t1[i]
			 k1 += 1
			end
		end
		
		@test.rawbal1 = k1
		@test.rawbal2 = (k1/(i).to_f).round(2)
		@test.rawbal3 = ((i+1)*0.02.to_f).round(2)
		
		k4 = 0
		k5 = 0
		k6 = 0
		i1 = 0
		t2="вбагбгвагвагвавбгбвбабаввбвгбв"
		for i1 in 0..@test.test2.to_s.size-1
		  if (@test.test2[i1] == '0')
       break;
     end  
			if (@test.test2[i1] == t2[i1])
			 k4 += 1
			end
		end
		
		@test.rawbal4 = k4
		tk4 = i1+1
		@test.rawbal5 = (k4/tk4.to_f).round(2)
		@test.rawbal6 = (i1/28.to_f).round(2)
		
		k7 = 0
		k8 = 0
		k9 = 0
		t3="451263621345261213564345823874517612343786541253768215241635"
		for i1 in 0..@test.test3.to_s.size-1
			if (@test.test3[i1] == t3[i1])
			 k7 += 1
			end
			if (@test.test3[i1] == '0')
			 break
			end
		end
		
		@test.rawbal7 = k7
		@test.rawbal8 = (k7/(i1+1).to_f).round(0)
		@test.rawbal9 = ((i1+1)/60.to_f).round(0)
		
		k10 = 0
		k11 = 0
		k12 = 0
		t4="2213223323232312132321332313213213132312123131132321211212212132123131"
		for i1 in 0..@test.test4.to_s.size-1
		 if (@test.test4[i1] == '0')
		   break;
		 end	
			if (@test.test4[i1] == t4[i1])
			 k10 += 1
			end
		end
		
		@test.rawbal10 = k10
		@test.rawbal11 = (k10/(i1).to_f).round
		@test.rawbal12 = ((i1+1)/70.to_f).round
		
		k13 = 0
		k14 = 0
		k15 = 0
		k16 = 0
		mk5 = [0,0,0,0]
		t5="+++++++++++++++++-++++++-++++++++-+-++++++++++-+++-+++++-+-+++-+++-+++++++++++++++++++++++++++++++++++++++-+++++++++++++++-++++-++++++"
		t51="32112312323213121213131133233231322222132333131232122331312112332123223113232133111233232233313211233123111222321133123211112232213111";
		for i1 in 0..@test.test5.to_s.size-1
		  
			index = t51[i1].to_i - 1
			if (@test.test5[i1] == t5[i1])
			 mk5[index.to_i] += 2
			end
			if (@test.test5[i1] == '0')
			 mk5[index.to_i] += 1
			end
		end
		
		@test.rawbal13 = mk5[0]
		@test.rawbal14 = mk5[1]
		@test.rawbal15 = mk5[2]
		if (mk5[1] != 0)
		  @test.rawbal16 = (mk5[0]/mk5[1].to_f).round(2)
		else
		  @test.rawbal16 = 0
		end    
		
		
		mk6 = [0,0,0,0,0,0,0,0,0,0]
		t6="++++-++++++-++++++++++++-+++++-++++-+++++++++-++++-+-+++++-+++++-+++++++++++++++++++++++"
		t61=[1,2,3,4,5,6,7,8,9,10,1,2,3,4,2,5,4,6,7,8,9,7,1,2,3,4,5,6,7,8,9,10,1,2,3,4,2,5,4,6,7,8,9,7,1,2,3,4,5,6,7,8,9,10,1,2,3,4,2,5,4,6,7,8,9,7,1,2,3,4,5,6,7,8,9,10,1,2,3,4,2,5,4,6,7,8,9,7];
		for i1 in 0..@test.test6.to_s.size-1
			index = t61[i1].to_i - 1
			if (@test.test6[i1] == t6[i1])
			 mk6[index.to_i] += 1
			end
		end
		

		
		@test.rawbal17 = mk6[0]*3
		@test.rawbal18 = mk6[1]*2
		@test.rawbal19 = mk6[2]*3
		@test.rawbal20 = mk6[3]*2
		@test.rawbal21 = mk6[4]*3
		@test.rawbal22 = mk6[5]*3
		@test.rawbal23 = mk6[6]*2
		@test.rawbal24 = mk6[7]*3
		@test.rawbal25 = mk6[8]*3
		@test.rawbal26 = mk6[9]*6
		
		k27 = 0
		
		for i1 in 0..@test.test7.to_s.size-1
			if (@test.test7[i1] == '+')
			 k27 += 1
			end
		end
		
		@test.rawbal27 = k27
		
		str = @test.test8.to_s
		k28 = 0
		if (str.size > 0)  
		
		if ((@test.test8[0] == 'a')||(@test.test8[0] == 'c'))
			 k28 += 1
			end
		if ((@test.test8[1] == 'c'))
			 k28 += 1
			end
		if ((@test.test8[2] == 'b'))
			 k28 += 1
			end
		if ((@test.test8[3] == 'a')||(@test.test8[0] == 'b'))
			 k28 += 1
			end
		if ((@test.test8[4] == 'a')||(@test.test8[4] == 'c'))
			 k28 += 1
			end
		if ((@test.test8[5] == 'a')||(@test.test8[4] == 'b'))
			 k28 += 1
			end
		if ((@test.test8[6] == 'a')||(@test.test8[6] == 'c'))
			 k28 += 1
			end
		if ((@test.test8[7] == 'a')||(@test.test8[7] == 'b'))
			 k28 += 1
			end	
		if ((@test.test8[8] == 'c'))
			 k28 += 1
			end	
		if ((@test.test8[9] == 'a')||(@test.test8[9] == 'c'))
			 k28 += 1
			end	
		if ((@test.test8[10] == 'c'))
			 k28 += 1
			end		
		if ((@test.test8[11] == 'b'))
			 k28 += 1
			end		
		if ((@test.test8[12] == 'a'))
			 k28 += 1
			end		
		if ((@test.test8[13] == 'c')||(@test.test8[13] == 'b'))
			 k28 += 1
			end		
		if ((@test.test8[14] == 'c')||(@test.test8[14] == 'b'))
			 k28 += 1
			end		
		if ((@test.test8[15] == 'a'))
			 k28 += 1
			end		
		if ((@test.test8[16] == 'a')||(@test.test8[16] == 'b'))
			 k28 += 1
			end			
		if ((@test.test8[17] == 'b')||(@test.test8[17] == 'c'))
			 k28 += 1
			end
		if ((@test.test8[18] == 'c'))
			 k28 += 1
			end
		if ((@test.test8[19] == 'c'))
			 k28 += 1
			end
		if ((@test.test8[20] == 'b')||(@test.test8[20] == 'c'))
			 k28 += 1
			end	
		if ((@test.test8[21] == 'b')||(@test.test8[21] == 'c'))
			 k28 += 1
			end	
		if ((@test.test8[22] == 'b'))
			 k28 += 1
			end	
		if ((@test.test8[23] == 'c'))
			 k28 += 1
			end		
		if ((@test.test8[24] == 'b'))
			 k28 += 1
			end	
		if ((@test.test8[25] == 'a')||(@test.test8[25] == 'c'))
			 k28 += 1
			end	
		if ((@test.test8[26] == 'a')||(@test.test8[26] == 'b'))
			 k28 += 1
			end	
		if ((@test.test8[27] == 'c'))
			 k28 += 1
			end	
		if ((@test.test8[28] == 'b'))
			 k28 += 1
			end	
		if ((@test.test8[29] == 'a')||(@test.test8[29] == 'c'))
			 k28 += 1
			end		
			
		end
		@test.rawbal28 = k28
		
		k29=0
		t9=" ++++-++++  -++++- -++  -++++++-+   -+-- +"
		
		for i1 in 0..@test.test9.to_s.size-1
			if (@test.test9[i1] == t9[i1])
			 k29 += 1
			end
		end
		
		@test.rawbal29 = k29
		
		
	fsum1 =0
	fsum2 =0

	msum1t5 = [12,29,-32,37,41,48,49,50,-63,-67,69,73,-74,81,-86,-87,90,91,92,95,97,-105,118,-122,-123,-127,-130]
	msum2t5 = [-9,-24,25,-40,45,-47,-57,-69,-78,82,-85,-94,-105,-110,124,-127]

    str = @test.test5.to_s
    i=0
    fsum1 = 0
  if (str.size > 0)  
	for i in 0..16 
        if (msum2t5[i].to_i > 0)
            if ((str[msum2t5[i].to_i-1] == '+') )
                   fsum2+=1
			end
		end		  
            if (msum2t5[i].to_i < 0)
                 if ((str[(msum2t5[i].to_i*(-1))-1] == '-') || (str[(msum2t5[i].to_i*(-1))-1] == '0'))
                   fsum2+=1
				 end
			end 
	end 		 
  for i  in 0..28
    if ( msum1t5[i].to_i > 0 )
	 if (str[msum1t5[i].to_i-1] == '+')
        fsum1+=1
	 end
	end 
    if (msum1t5[i].to_i < 0)
       if ((str[(msum1t5[i].to_i*(-1))-1] == '-') || (str[(msum1t5[i].to_i*(-1))-1] == '0'))
          fsum1+=1
       end
    end
  end 
  
end		

  msum1t6 = [-7,14,19,-26,-28,-31,-33,37,-53,-54,57,59,61,67,72,-73,74,-77,79]
  msum2t6 = [-6,-9,10,-11,-19,-25,37]

  str =  @test.test6.to_s
 for i in 0..7 
  if ( msum2t6[i].to_i > 0 )
    if (str[msum2t6[i].to_i-1] == '+')
       fsum2 += 1
    end
  end	
  if (msum2t6[i].to_i < 0)  
    if (str[(msum2t6[i].to_i*(-1))-1] == '-')
       fsum2 += 1
    end
  end	
  end
  
  for i in 0..19 
    if ( msum1t6[i].to_i > 0 )
     if (str[msum1t6[i].to_i-1] == '+')
        fsum1 += 1;
     end
	end 
    if (msum1t6[i].to_i < 0)
      if (str[(msum1t6[i].to_i*(-1))-1] == '-')
       fsum1+=1;
      end
    end
   end	

  msum1t7 = [1,9,14,18,-22]
  msum2t7 = [10,12,13,15,22]

 str =  @test.test7.to_s;
 for i in 0..5
   if ( msum2t7[i].to_i > 0 )
      if (str[msum2t7[i].to_i-1] == '+')
         fsum2+=1
      end
  end	  
  if (msum2t7[i].to_i < 0)
      if (str[(msum2t7[i].to_i*(-1))-1] == '-')
         fsum2+=1
      end   
  end
 end  
  for i in 0..5 
    if ( msum1t7[i].to_i > 0 )
      if (str[msum1t7[i].to_i-1] == '+')
         fsum1+=1
       end
	end   
    if (msum1t7[i].to_i < 0)
      if (str[(msum1t7[i].to_i*(-1))-1] == '-')
          fsum1+=1
       end
	end
  end	
  
  
  msum1t9 = [15,16,-18,20,26,-27,-33,36,37,38]
  msum2t9 = [-2,6,-7,-14,17,20,31,-33,-37]

 str = @test.test9.to_s;
 for i in 0..9 
   if ( msum2t9[i].to_i > 0 )
      if (str[msum2t9[i].to_i-1] == '+')
            fsum2+=1
		end
	end	
   if (msum2t9[i].to_i < 0)
      if (str[(msum2t9[i].to_i*(-1))-1] == '-')
            fsum2+=1
      end
	end  
  end
  
  for  i in 0..10 
    if ( msum1t9[i].to_i > 0 )
       if (str[msum1t9[i].to_i-1] == '+')
             fsum1+=1
        end
	end	
    if (msum1t9[i].to_i < 0)
       if (str[(msum1t9[i].to_i*(-1))-1] == '-')
             fsum1+=1
        end
    end
  end	
  
@test.sum1 = fsum1		
@test.sum2 = fsum2
 
maskbal = [[57.781,61.122,64.462,67.802,71.143,74.483,77.823,81.164,84.504,86.174],[8.427,10.631,12.835,15.038,17.242,19.446,21.65,23.853,26.057,27.159],
			[12.841,15.586,18.33,21.074,23.818,26.562,29.307,32.051,34.795,36.167],[17.194,19.904,22.614,25.325,28.035,30.745,33.455,36.165,38.875,40.23]]
	
	
#BAL2--------------------------------------------------------------------------------------------------------------------------------------
	b1 = 0
	maskb2 = [[37.396,42.386,47.376,52.366,57.356,62.346,67.336,72.326,77.317,79.812],[34.173,38.932,43.692,48.452,53.212,57.972,62.732,67.492,72.252,74.632],
			[29.683,32.654,35.625,38.597,41.568,44.54,47.511,50.482,53.454,54.939]]
			tt = @test.rawbal13
				for i in 0..10
					if (tt.to_f < maskb2[0][i].to_f)
							b1 += i+1
							break
					end
					if (tt.to_f > maskb2[0][9].to_f)
							b1 += 10
							break
					end
				end

			tt = @test.rawbal15
				for i in 0..10
					if (tt.to_f < maskb2[1][i].to_f)
							b1 += i+1
							break
					end
					if (tt.to_f > maskb2[1][9].to_f)
							b1 += 10
							break
					end
				end
			
			tt = @test.sum1
				for i in 0..10
					if (tt.to_f < maskb2[2][i].to_f)
							b1 += i+1
							break
					end
					if (tt.to_f > maskb2[2][9].to_f)
							b1 += 10
							break
					end
				end
	
	for i in 0..10
		if (b1.to_f < maskbal[1][i].to_f)
			@test.b1  = i+1
			break
		end	
		if (b1.to_f > maskbal[1][9].to_f)
			@test.b1  = 10
			break
		end	
	end
	
	#BAL3--------------------------------------------------------------------------------------------------------------------------------------
	b2 = 0
	maskb3 = [[6.407,11.498,16.59,21.681,26.672,31.863,36.955,42.046,47.137,49.683],[3.333,8.66,13.987,19.315,24.642,29.969,35.296,40.624,45.951,48.615],
			[-3.203,-0.521,2.161,4.844,7.526,10.208,12.89,15.572,18.254,19.595],[1.617,3.752,5.888,8.023,10.158,12.293,14.429,16.564,18.699,19.767]]
			tt = @test.rawbal7
				for i in 0..10
					if (tt.to_f < maskb3[0][i].to_f)
							b2 += i+1
							break
					end
					if (tt.to_f > maskb3[0][9].to_f)
							b2 += 10
							break
					end
				end

			tt = @test.rawbal10
				for i in 0..10
					if (tt.to_f < maskb3[1][i].to_f)
							b2 += i+1
							break
					end
					if (tt.to_f > maskb3[1][9].to_f)
							b2 += 10
							break
					end
				end
				
			tt = @test.rawbal21
				for i in 0..10
					if (tt.to_f < maskb3[2][i].to_f)
							b2 += 10 - i
							break
					end
					if (tt.to_f > maskb3[2][9].to_f)
							b2 += 10
							break
					end
				end	
			
			tt = @test.rawbal27
				for i in 0..10
					if (tt.to_f < maskb3[3][i].to_f)
							b2 += i+1
							break
					end
					if (tt.to_f > maskb3[3][9].to_f)
							b2 += 10
							break
					end
				end
	
	for i in 0..10
		if (b2.to_f < maskbal[2][i].to_f)
			@test.b2  = i+1
			break
		end	
		if (b2.to_f > maskbal[2][9].to_f)	
			@test.b2  = 10
			break
		end
	end

	#BAL4--------------------------------------------------------------------------------------------------------------------------------------
	b3 = 0
	maskb4 = [[39.589,45.795,52.002,58.208,64.414,70.62,76.826,83.032,89.239,92.342],[0.523,0.623,0.723,0.823,0.923,1.022,1.122,1.222,1.322,1.371],
			[-2.348,0.458,3.263,6.069,8.874,11.68,14.485,17.291,20.097,21.499],[-4.322,-0.625,3.072,6.768,10.465,14.162,17.858,21.555,25.252,27.1],
			[2.573,4.359,6.145,7.931,9.716,11.502,13.288,15.074,16.859,17.752]]
#if (@test.rawbal14 > 0)			
	tt = @test.rawbal14
				for i in 0..10
					if (tt.to_f < maskb4[0][i].to_f)
							b3 += i+1
							break
					end
					if (tt.to_f > maskb4[0][9].to_f)
							b3 += 10
							break
					end
				end			          
#end 
					
#if (@test.rawbal16 > 0) 
	tt = @test.rawbal16
				for i in 0..10
					if (tt.to_f < maskb4[1][i].to_f)
							b3 += 10 - i
							break
					end
					if (tt.to_f > maskb4[1][9].to_f)
							b3 += 1
							break
					end		
				end          
#end 
				
#if (@test.rawbal24 > 0)  				
	tt = @test.rawbal24
				for i in 0..10
					if (tt.to_f < maskb4[2][i].to_f)
							b3 += 10 - i
							break
					end
					if (tt.to_f > maskb4[2][9].to_f)
							b3 += 1
							break
					end		
				end	
#end 
				
#if	 (@test.rawbal26 > 0)  
	tt = @test.rawbal26
				for i in 0..10
					if (tt.to_f < maskb4[3][i].to_f)
							b3 += 10 - i
							break
					end
					if (tt.to_f > maskb4[3][9].to_f)
							b3 += 1
							break
					end		
				end
#end 
				
if	(@test.rawbal28 > 0)  			
	tt = @test.rawbal28
				for i in 0..10
					if (tt.to_f < maskb4[4][i].to_f)
							b3 += 10 - i
							break
					end
					if (tt.to_f > maskb4[4][9].to_f)
							b3 += 1
							break
					end		
				end
end	
	for i in 0..10
		if (b3.to_f < maskbal[3][i].to_f)
			@test.b3  = i+1
			break
		end
		if (b3.to_f > maskbal[3][9].to_f)	
			@test.b3  = 10
			break
		end
	end
	
#BAL1--------------------------------------------------------------------------------------------------------------------------------------
 bal1 = 0.000000000000000
# sn = [6,9,12,13,14,15,-16,-20,-23,-25,26,-27]
 

		
		mask = [[-11.1,-3.239,4.625,12.49,20.354,28.218,36.082,43.947,51.811,55.743],[-12.19,-4.911,2.366,9.642,16.919,24.195,31.472,38.748,46.025,49.663],
				[-16.33,-1.403,13.529,28.46,43.392,58.324,73.255,88.187,103.12,110.58],[-17.26,-1.217,14.826,30.869,46.911,62.954,78.997,95.039,111.08,119.1],
				[-14.93,-1.322,12.287,25.896,39.505,53.114,66.723,80.333,93.942,100.75],[0.52,0.62,0.72,0.82,0.92,1.02,1.12,1.22,1.32,1.37],
				[-5.863,-3.227,-0.592,2.044,4.68,7.315,9.951,12.587,15.222,16.54],[-5.501,-2.62,0.262,3.144,6.025,8.907,11.788,14.67,17.552,18.993],
				[-6.795,-3.158,0.478,4.114,7.751,11.387,15.023,18.66,22.296,24.114],[-5.14,-1.80,1.54,4.88,8.22,11.56,14.901,18.241,21.581,23.251],
				[-4.773,-1.916,0.942,3.80,6.657,9.515,12.373,15.23,18.088,19.517],[-10.47,-0.635,9.204,19.042,28.88,38.719,48.557,58.396,68.234,73.153],
				[30.116,33.066,36.016,38.965,41.915,44.865,47.814,50.764,53.714,55.188]]

			
			
			
			tt = @test.rawbal7.to_f
				for i in 0..10
					if (tt.to_f < mask[0][i].to_f)
							bal1 += i+1
							break
					end
					if (tt.to_f > mask[0][9].to_f)
							bal1 += 10
							break
					end		
				end
				
			tt = @test.rawbal10
				for i in 0..10
					if (tt.to_f < mask[1][i].to_f)
							bal1 += i+1
							break
					end
					if (tt.to_f > mask[1][9].to_f)
							bal1 += 10
							break
					end		
				end
				
			tt = @test.rawbal13
				for i in 0..10
					if (tt.to_f < mask[2][i].to_f)
							bal1 += i+1
							break
					end
					if (tt.to_f > mask[2][9].to_f)
							bal1 += 10
							break
					end		
				end

			tt = @test.rawbal14
				for i in 0..10
					if (tt.to_f < mask[3][i].to_f)
							bal1 += i+1
							break
					end
					if (tt.to_f > mask[3][9].to_f)
							bal1 += 10
							break
					end		
				end	
				
			tt = @test.rawbal15
				for i in 0..10
					if (tt.to_f < mask[4][i].to_f)
							bal1 += i+1
							break
					end
					if (tt.to_f > mask[4][9].to_f)
							bal1 += 10
							break
					end		
				end	
				
				
			tt = @test.rawbal16
				for i in 0..10
					if (tt < mask[5][3])
							bal1 += 5
							break
					end
					
					
					if (tt < mask[5][6])
							bal1 += 6
							break
					end
					
					if (tt > mask[5][6])
							bal1 += 7
							break
					end
				end		

				
			tt = @test.rawbal21
				for i in 0..10
					if (tt.to_f < mask[6][i].to_f)
							bal1 += 10-i
							break
					end
					if (tt.to_f > mask[6][9].to_f)
							bal1 += 1
							break
					end		
				end

			tt = @test.rawbal24
				for i in 0..10
					if (tt.to_f < mask[7][i].to_f)
							bal1 += 10-i
							break
					end
					if (tt.to_f > mask[7][9].to_f)
							bal1 += 1
							break
					end		
				end	
				
			tt = @test.rawbal26
				for i in 0..10
					if (tt.to_f < mask[8][i].to_f)
							bal1 += 10-i
							break
					end
					if (tt.to_f > mask[8][9].to_f)
							bal1 += 1
							break
					end		
				end

			tt = @test.rawbal27
				for i in 0..10
					if (tt.to_f < mask[9][i].to_f)
							bal1 += i+1
							break
					end
					if (tt.to_f > mask[9][9].to_f)
							bal1 += 10
							break
					end		
				end
			
			tt = @test.rawbal28
				for i in 0..10
					if (tt.to_f < mask[10][i].to_f)
							bal1 += 10 - i
							break
					end
					if (tt.to_f > mask[10][9].to_f)
							bal1 += 1
							break
					end		
				end
				
			
	tt = @test.sum1	
	for i in 0..10
		if (tt.to_f < mask[11][i].to_f)
				bal1 += i+1
				break
		end
		if (tt.to_f > mask[11][9].to_f)
				bal1 += 10
				break
		end	
	end	
	
	@test.ib = bal1
	
	
	for i in 0..10
		if (bal1 < maskbal[0][i])
			@test.ib  = i+1
			break
		end
		if (bal1 > maskbal[0][9])	
			@test.ib  = 10
			break
		end
	end	
#	@test.ib = bal1
	
#	bal1 = @test.ib
#	@test.ib = bal1
#
#	if (( bal1 > 7 and((@test.b1 < 5)or(@test.b2 < 5)or(@test.b3 < 5))))
#	   @test.ib = 7
#	if ((bal1 > 5)&&((@test.b1 < 4)or(@test.b2 < 4)or(@test.b3 < 4)))
#	   @test.ib = 5
#	if ((bal1 > 5)&&(((@test.b1 < 4)&&(@test.b2 < 4))or((@test.b1 < 4)and(@test.b3 < 4))or((@test.b2 < 4)&&(@test.b3 < 4))))
#	   @test.ib = 4
#	end
	
	
	
	if @test.ib.to_i < 4
		@test.kat = 1
		@test.tkat = "В результате психологического обследования установленна I категория проффесиональной пригодности для работы в ОРБ."
	elsif @test.ib.to_i < 6
		@test.kat = 2
		@test.tkat = "В результате психологического обследования установленна II категория проффесиональной пригодности для работы в ОРБ."
	elsif @test.ib.to_i < 8
		@test.kat = 3
		@test.tkat = "В результате психологического обследования установленна III категория проффесиональной пригодности для работы в ОРБ."
	elsif @test.ib.to_i < 11
		@test.kat = 4	
		@test.tkat = "В результате психологического обследования установленна IV категория проффесиональной пригодности для работы в ОРБ."
	end	
	
	if @test.b1.to_i < 4
		
		@test.tb1 = "Низкая психическая выносливость. Трудности с мобилизацией внутренних ресурсов в экстремальных ситуациях. 
		Может не справится с ситуациями требующими энергичных действий. "
	elsif @test.b1.to_i < 6
		
		@test.tb1 = "Психическая выносливость ниже среднего уровня, в ситуациях требующих энергичных действий 
		может наблюдатся заторможенность в поведении и принятии решения. "
	elsif @test.b1.to_i < 8
		
		@test.tb1 = "Хорошая психическая выносливость и готовность к осуществлению дейтельности в ситуация, 
		требующих энергичных действий, достаточно быстрая перестройка при столкновениями с нестандартными ситуациями."
	elsif @test.b1.to_i < 11
			
		@test.tb1 = "Высокая психическая устойчивость, высокая готовность к осуществлению деятельности в ситуациях, 
		требующих энергичных действий, гибкое поведение при столкновении с нестандартной ситуацией.  "
	end	
	
	if @test.b2.to_i < 4
		@test.tb2 = "Невнимательный, небрежный, либо со слаборазвитым логическим мышлением, низкие темпы обучения, трудности с освоением сложного оборудования. "
	elsif @test.b2.to_i < 6
		@test.tb2 = "Уровень развития технического и логического мышления достаточен для оперативной работы, возможны трудности при освоении нового оборудования."
	elsif @test.b2.to_i < 8
		@test.tb2 = "Обладает хорошим логическим мышлением, при соответсвующей заинтересованности может довольно быстро обучатся, 
		достаточно хорошо разбирается в технических закономерностях, внимателен  "  
	elsif @test.b2.to_i < 11
		@test.tb2 = "Обладает развитым логическим мышлением , хорошо понимает технические закономерности, сообразителен, 
		высокая степень обучаемости, интеллектуально гибок, быстро схватывает новое, хорошее внимание."
	end

	if @test.b3.to_i < 4
		@test.tb3 = "Низкая эмоциональная устойчивость; в экстремальных ситуациях возможны срывы из-за трудностей контроля над эмоциями и поведением,
		высока вероятность импульсивных,неадекватных действий. "
	elsif @test.b3.to_i < 6
		@test.tb3 = "Средний уровень развития эмоциональной устойчивости, старается держать себя в руках, 
		однако это не всегда удается, и тогда эмоции одерживают верх, подвержен влиянию настроения.  "
	elsif @test.b3.to_i < 8
		@test.tb3 = "Хорошая эмоциональная устойчивость; обычно спокоен и выдержан, умеет держать себя в руках, 
		редко поддается влиянию настроения, хорошо адаптируется к сложным ситуациям."
	elsif @test.b3.to_i < 11
		@test.tb3 = "Высокая эмоциональная устойчивость; хорошо контролирует свои эмоции и поведение, 
		выдержанный, организованный, умеет держать себя в руках, сдерживаться от импульсивных действий.  "
	end
	
	@test.update_attributes(params[:test])
	
	end

end
