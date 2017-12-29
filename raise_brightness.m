function [final_img] = raise_brightness(img1)
imshow(img1);
new_img1=rgb2gray(img1);
[row,col]=size(new_img1);
C=new_img1';%'表示的是转置，把原来的行变成新的列，原来的列变成新的行
D=(C(:))';
M=(1:255);
same_M_newimg1=count_same(M,D);
x1=sum(same_M_newimg1);
percent=untitled5(same_M_newimg1);
cumulative=untitled7(percent);
final=cumulative*255;
final_img = zeros(row,col);
for i= 1:row
    for j=1:col
        final_img(i,j) = final(new_img1(i,j));
    end
end
end

