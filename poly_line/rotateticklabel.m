function th=rotateticklabel(h,rot,demo)
%ROTATETICKLABEL rotates tick labels
%   TH=ROTATETICKLABEL(H,ROT) ris the calling form where H is a handle to
%   the axis that contains the XTickLabels that are to be rotated. ROT is
%   an optional parameter that specifies the angle of rotation. The default
%   angle is 90. TH is a handle to the text objects created. For long
%   strings such as those produced by datetick, you may have to adjust the
%   position of the axes so the labels don't get cut off.
%
%   Of course, GCA can be substituted for H if desired.
%
%   TH=ROTATETICKLABEL([],[],'demo') shows a demo figure.
%
%   Known deficiencies: if tick labels are raised to a power, the power
%   will be lost after rotation.
%
%   See also datetick.
%   Written Oct 14, 2005 by Andy Bliss
%   Copyright 2005 by Andy Bliss
%
%   此函数的作用是将横坐标的labels倾斜一定角度（rot）
%   使得过长的标识能够不重叠
%   折线图示例如下：
%     plot(y,'LineWidth',3);
%     set(gca,'xticklabels',{'benchmark1','benchmark2','benchmark3','benchmark4','benchmark5'});
%     h = gca;
%     th=rotateticklabel(h, 30);%调用下面的函数，坐标倾斜30度
% 
%   也可用于画柱状图
%     x = round(rand(5,3)*10);
%     h=bar(x,1,'group');
%     set(gca,'xticklabels',{'benchmark1','benchmark2','benchmark3','benchmark4','benchmark5'});
%     h = gca;
%     th=rotateticklabel(h, 45);%调用下面的函数，坐标倾斜45度
%
if nargin==3
    x=[now-.7 now-.3 now];
    y=[20 35 15];
    figure
    plot(x,y,'.-')
    datetick('x',0,'keepticks')
    h=gca;
    set(h,'position',[0.13 0.35 0.775 0.55])
    rot=90;
end
%set the default rotation if user doesn't specify
if nargin==1
    rot=90;
end
%make sure the rotation is in the range 
% 0:360 (brute force method)
% while rot>360
%     rot=rot-360;
% end
% while rot<0
%     rot=rot+360;
% end
%get current tick labels
a=get(h,'XTickLabel');
%erase current tick labels from figure
set(h,'XTickLabel',[]);
%get tick label positions
b=get(h,'XTick');
c=get(h,'YTick');
%make new tick labels
% if rot<180
%     th=text(b,repmat(c(1)-.1*(c(2)-c(1)),length(b),1),a,'HorizontalAlignment','right','fontsize',14,'fontweight','bold','rotation',rot);
% else
%     th=text(b,repmat(c(1)-.1*(c(2)-c(1)),length(b),1),a,'HorizontalAlignment','left','fontsize',14,'fontweight','bold','rotation',rot);
% end
% 上面是加粗的，这个不加粗
if rot<180
    th=text(b,repmat(c(1)-.1*(c(2)-c(1)),length(b),1),a,'HorizontalAlignment','right','fontsize',12,'rotation',rot);
else
    th=text(b,repmat(c(1)-.1*(c(2)-c(1)),length(b),1),a,'HorizontalAlignment','left','fontsize',12,'rotation',rot);
end