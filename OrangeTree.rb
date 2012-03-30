class OrangeTree  
  def initialize vozrast
    @hightOrang=0
    @orangeCount=0
    @oneYear=0
    @vozrastMax=vozrast
    @vozrastPlodonoheniia=1
  end
  def hight
    oneYearPasses
    @hightOrang=@hightOrang+rand(10)+1
    puts 'Za ' + @oneYear.to_s + ' orange tree vyroslo na ' + @hightOrang.to_s + ' sm '
    countTheOranges
  end
  def oneYearPasses
    if @oneYear<@vozrastMax
      @oneYear=@oneYear+1      
    else
      puts 'Orange tree umerlo'
      exit
    end    
  end
  def countTheOranges
    
    if @oneYear>@vozrastPlodonoheniia
      @orangeCount=@oneYear#*2      
      puts  @orangeCount.to_s + ' oranges vyroslo'
      pickAnOrange
      @orangeCount=0      
    end
    
  end
  def pickAnOrange
    3.times do
      if @orangeCount>0
        @orangeCount=@orangeCount-1
        puts 'Orange ochen\' vkusnyi/ Ostalos\': '+@orangeCount.to_s
      else
        puts 'Orange konchilis\''
      end      
    end
  end  
end
t=rand(10)
pet=OrangeTree.new t
puts t
puts
g=rand(10)+1
puts g
p=0
puts 'r'
r=gets.chomp
if r=='hight'
  while p!=g
    pet.hight
    p=p+1
  end
end
#if r=='hight'
  #while p!=g
    #pet.r
    #p=p+1
  #end
#end