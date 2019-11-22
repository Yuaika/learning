%加载peter corke的机器人工具箱
%startup_rvc;
im=iread('church.png','grey','double');
edges=icanny(im);%canny算子
h=Hough(edges,'suppress',5);
lines=h.lines();
figure(1);
idisp(im);
lines(1:10).plot();
edges=isobel(im);%sobel算子
h=Hough(edges,'suppress',5);
lines=h.lines();
figure(2);
idisp(im);
lines(1:10).plot();

