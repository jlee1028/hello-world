function output = blur(img,w)
img = double(img);
output = zeros(size(img));
submat = [];
for ii = 1:size(img,1)
    minrow = ii-w;
    maxrow = ii+w;
    if minrow <= 0
        minrow = 1;
    elseif maxrow > size(img,1)
        maxrow = size(img,1);
    end
        for jj = 1:size(img,2)
            mincol = jj-w;
            maxcol = jj+w;
            if mincol <= 0
                mincol = 1;
            elseif maxcol > size(img,2)
                maxcol = size(img,2);
            end
            submat = img(minrow:maxrow,mincol:maxcol);
            output(ii,jj) = round(sum(submat,'all')/numel(submat));
        end
end
    output = uint8(output);
end