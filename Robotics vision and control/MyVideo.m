%读取某时刻摄像头画面
%{
vid=videoinput('winvideo',1);
preview(vid);
frame=getsnapshot(vid);
figure;
imshow(frame);
%}
vid=videoinput('winvideo',1,'YUY2_640x480');
preview(vid);
filename='today';
nframe=300;
N=60;
writerObj = VideoWriter( [filename '.avi'] );
writerObj.FrameRate = N;
open(writerObj);

figure;
for ii = 1: nframe
    frame = getsnapshot(vid);
    imshow(frame);
    f.cdata = frame;
    f.colormap = [];
    writeVideo(writerObj,f);
end

close(writerObj)