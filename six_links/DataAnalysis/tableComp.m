function b = tableComp(b_array,name)

for i=1:size(b_array,2)
    b_cur = b_array{1,i};
    row=b_cur(1,:);
    row.Properties.RowNames=name(1,i);
    if exist('b','var')==1
        b = [b;row];
    else
        b = row;
    end
    
end


end