%����peter corke�Ļ����˹�����
%startup_rvc;
im=iread('church.png','grey','double');
edges=icanny(im);%canny����
h=Hough(edges,'suppress',5);
lines=h.lines();
figure(1);
idisp(im);
lines(1:10).plot();
edges=isobel(im);%sobel����
h=Hough(edges,'suppress',5);
lines=h.lines();
figure(2);
idisp(im);
lines(1:10).plot();

