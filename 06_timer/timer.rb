class Timer
  attr_accessor :seconds
  def seconds
    @seconds=0
  end
  def time_string
    mintues=0
    hours=0
    while @seconds>59
      if(mintues<59)
        @seconds-=60
        mintues+=1
      else
        mintues=0
        hours+=1
        @seconds-=60
      end
    end
    return padded(hours)+':'+padded(mintues)+':'+padded(@seconds)
  end
  def padded n
    n=n.to_s
    if n.length==1
      n='0'+n
    end
    n
  end
end
