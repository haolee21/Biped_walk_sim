function stop = outfun(x,optimValues,state)
stop = false;
if(optimValues.constrviolation<0.001)
    stop = true;
end