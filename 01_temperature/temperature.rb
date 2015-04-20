require "spec_helper"

def ftoc(ftemp)
  @ftemp = ftemp
  @ctemp = (ftemp - 32) * (5.0 / 9.0)
  @ctemp
end

def ctof(ctemp)
  @ctemp = ctemp
  @ftemp = @ctemp * (9.0 / 5.0) + 32
  @ftemp
end
