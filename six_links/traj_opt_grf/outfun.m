function stop = outfun(x,optimValues,state)
stop = false;
if(optimValues.constrviolation<0.06)
    stop = true;
end