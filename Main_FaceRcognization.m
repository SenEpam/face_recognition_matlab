%%%%%%%%%%%%%%%%%%%%%
%%%      2011150209_�ֻ���      %%%
%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%
%ȫ�ֱ���������������FR
%%%%%%%%%%%%%%%%%%%%%
global FR;

%%%%%%%%%%%%%%%%%%%%%
%ȫ�ֱ�������������չʾ��Ϣ�����panel��ÿ������չʾ��ͬ��panel
%  openfile_panel������չʾ�û�ѡ��򿪵��ļ�
%  facedetection_panel������չʾ�����ֶ�λ�Ľ��
%  eyesdetection_panel������չʾ�ֶ�λ������ʶ��Ľ��
%  facelocation_panel������չʾͨ������λ�ú��˹����Ʋ�����λ���������
%  normalization_panel����ʾresize������ڼ�������Ľ��
%  recognization_panel����ʾԭ���������������lbpͳ��ͼ
%%%%%%%%%%%%%%%%%%%%%
global openfile_panel;
global facedetection_panel;
global eyesdetection_panel;
global facelocation_panel;
global normalization_panel;
global recognization_panel;

%%%%%%%%%%%%%%%%%%%%%
%ȫ�ֱ���������panel�е�axes���þ�չʾÿ�������Ľ��
%show1����չʾ����ͼ��
%show2����չʾ���ͼ��
%%%%%%%%%%%%%%%%%%%%%
global image_show;

global facedetection_panel_show1;
global facedetection_panel_show2;

global eyesdetection_panel_show1;
global eyesdetection_panel_show2;

global facelocation_panel_show1;
global facelocation_panel_show2;

global normalization_panel_show1;
global normalization_panel_show2;

global face_show;
global face_analysis;
global face_r_show;
global face_r_analysis;

%%%%%%%%%%%%%%%%%%%%%
%ȫ�ֱ�����������ť�����ڿ�������
%  openfile_button��ѡ�����ͼƬ
%  facedetection_button����������������
%  eyesdetection_button������������ۼ��
%  facelocation_button��������������ض�λ
%  normalization_button���������resize
%  facerecognization_button�� �������ʶ��
%%%%%%%%%%%%%%%%%%%%%
global openfile_button;
global facedetection_button;
global eyesdetection_button;
global facelocation_button;
global normalization_button;
global facerecognization_button;

FR=figure('NumberTitle', 'off', 'Name', '���������ۼ��','MenuBar','none','position',[100,100,575,500]);

image_show=axes;

 facedetection_panel_show1=axes;
 facedetection_panel_show2=axes;

 eyesdetection_panel_show1=axes;
 eyesdetection_panel_show2=axes;

 facelocation_panel_show1=axes;
 facelocation_panel_show2=axes;
  
normalization_panel_show1=axes;
normalization_panel_show2=axes;

face_show=axes;
face_analysis=axes;
face_r_show=axes;
face_r_analysis=axes;

u=uicontrol(gcf,'position',[0,460,575,40],'style','text','String','==����ʶ��ϵͳ==','FontSize',20,'HorizontalAlignment','center','FontName','����');

%%%%%%%%%%%%%%%%%%%%%
%����������ʽ����������У���ʼ��ʱֻ������չʾԭʼͼƬ�������ʾ������ȫ��Ӱ��
%%%%%%%%%%%%%%%%%%%%%
 openfile_panel=uipanel(gcf,'position',[0.02,0,0.65,0.91],'BorderWidth',2,'Title','Image','TitlePosition','centertop');
 facedetection_panel=uipanel(gcf,'position',[0.02,0,0.65,0.91],'BorderWidth',2,'Title','facedetection','TitlePosition','centertop','Visible','off');
 eyesdetection_panel=uipanel(gcf,'position',[0.02,0,0.65,0.91],'BorderWidth',2,'Title','eyesdetection','TitlePosition','centertop','Visible','off');
 facelocation_panel=uipanel(gcf,'position',[0.02,0,0.65,0.91],'BorderWidth',2,'Title','facelocation','TitlePosition','centertop','Visible','off');
 normalization_panel=uipanel(gcf,'position',[0.02,0,0.65,0.91],'BorderWidth',2,'Title','normalization','TitlePosition','centertop','Visible','off');
 recognization_panel=uipanel(gcf,'position',[0.02,0,0.65,0.91],'BorderWidth',2,'Title','recognization','TitlePosition','centertop','Visible','off');

 
 uicontrol(facedetection_panel,'position',[0,170,350,40],'style','text','String','======�����ֶ�λ���======','FontSize',13,'HorizontalAlignment','center','FontName','����');
uicontrol(eyesdetection_panel,'position',[0,170,350,40],'style','text','String','======���۶�λ���======','FontSize',13,'HorizontalAlignment','center','FontName','����');
uicontrol(facelocation_panel,'position',[0,170,350,40],'style','text','String','======������ȷ��λ���======','FontSize',13,'HorizontalAlignment','center','FontName','����');
uicontrol(normalization_panel,'position',[0,170,350,40],'style','text','String','======��׼�����======','FontSize',13,'HorizontalAlignment','center','FontName','����');


set(FR,'Resize','off');

%%%%%%%%%%%%%%%%%%%%%
%����axes��ʽ����������ϵ����������ͼƬչʾ
%%%%%%%%%%%%%%%%%%%%%
set(image_show,'parent',openfile_panel,'position',[0,0,1,1],'Visible','on','Color','w','xtick',[],'ytick',[]);

 set(facedetection_panel_show1,'parent',facedetection_panel,'position',[0,0.5,1,0.5],'Color','w','xtick',[],'ytick',[]);
 set(facedetection_panel_show2,'parent',facedetection_panel,'position',[0,0,1,0.4],'Color','w','xtick',[],'ytick',[]);
 
 set(eyesdetection_panel_show1,'parent',eyesdetection_panel,'position',[0,0.5,1,0.5],'Color','w','xtick',[],'ytick',[]);
 set(eyesdetection_panel_show2,'parent',eyesdetection_panel,'position',[0,0,1,0.4],'Color','w','xtick',[],'ytick',[]);
 
 set(facelocation_panel_show1,'parent',facelocation_panel,'position',[0,0.5,1,0.5],'Color','w','xtick',[],'ytick',[]);
 set(facelocation_panel_show2,'parent',facelocation_panel,'position',[0,0,1,0.4],'Color','w','xtick',[],'ytick',[]);
 
  set(normalization_panel_show1,'parent',normalization_panel,'position',[0,0.5,1,0.5],'Color','w','xtick',[],'ytick',[]);
 set(normalization_panel_show2,'parent',normalization_panel,'position',[0,0,1,0.4],'Color','w','xtick',[],'ytick',[]);

set(face_show,'parent',recognization_panel,'position',[0,0.5,0.5,0.4],'Visible','on','Color','w','xtick',[],'ytick',[]);
set(face_analysis,'parent',recognization_panel,'position',[0.55,0.5,0.4,0.4],'Visible','on','Color','w','xtick',[],'ytick',[]);
set(face_r_show,'parent',recognization_panel,'position',[0,0,0.5,0.4],'Visible','on','Color','w','xtick',[],'ytick',[]);
set(face_r_analysis,'parent',recognization_panel,'position',[0.55,0,0.4,0.4],'Visible','on','Color','w','xtick',[],'ytick',[]);

%%%%%%%%%%%%%%%%%%%%%
%����button��ʽ����ʼ��ʱֻ��openfile����ʽ�ɵ��������ͨ��initiate�ĺ�����������̿���
%%%%%%%%%%%%%%%%%%%%%

%         [f,p]=uigetfile('*.*','ѡ��ͼ���ļ�','myFace.jpg');
%         in=imread(strcat(p,f)); 
%         ined=imresize(in,[100 100]);
%         imwrite(ined,'103.png');
                
openfile_button=uicontrol(gcf,'Style','push','position',[400,400,150,50],'string','Open File');
facedetection_button=uicontrol(gcf,'Style','push','position',[400,320,150,50],'string','Face Detection','enable','off');
eyesdetection_button=uicontrol(gcf,'Style','push','position',[400,240,150,50],'string','Eyes Detection','enable','off');
facelocation_button=uicontrol(gcf,'Style','push','position',[400,160,150,50],'string','Face Location','enable','off');
normalization_button=uicontrol(gcf,'Style','push','position',[400,80,150,50],'string','Normalization','enable','off');
facerecognization_button=uicontrol(gcf,'Style','push','position',[400,0,150,50],'string','Recognization','enable','off');

%%%%%%%%%%%%%%%%%%%%%
%button�У�callback���Ե�ֵ
%initiate()ִ����Ӧ����ǰ��ɵó�ʼ������
%finish() �����Ӧ���ܺ��һ����ɺ�������ʵ�����̿���
%%%%%%%%%%%%%%%%%%%%%

str_callback_openfile_button='initiate(openfile_button);image=openfile();finish(openfile_button);';
str_callback_facedetection_button='initiate(facedetection_button);[face,facerange]=facedetection(image);finish(facedetection_button);';
str_callback_eyesdetection_button='initiate(eyesdetection_button);eyesrange=eyesdetection(face),finish(eyesdetection_button);';
str_callback_facelocation_button='initiate(facelocation_button);locatedface=facelocation(image,eyesrange,facerange);finish(facelocation_button);';
str_callback_normalization_button='initiate(normalization_button);normalizedFace=normalization(locatedface);finish(normalization_button);';
str_callback_facerecognization_button='initiate(facerecognization_button);recognization(normalizedFace);finish(facerecognization_button);';

%%%%%%%%%%%%%%%%%%%%%
%button��ťcallback������
%%%%%%%%%%%%%%%%%%%%%

set(openfile_button,'callback',str_callback_openfile_button);
set(facedetection_button,'callback',str_callback_facedetection_button);
set(eyesdetection_button,'callback',str_callback_eyesdetection_button);
set(facelocation_button,'callback',str_callback_facelocation_button);
set(normalization_button,'callback',str_callback_normalization_button);
set(facerecognization_button,'callback',str_callback_facerecognization_button);

%%%%%%%%%%%%%%%%%%%%%
%button��ť��ʽ������
%%%%%%%%%%%%%%%%%%%%%

set(openfile_button,'FontSize',12,'FontName','΢���ź�','FontWeight','bold','ForegroundColor',[0.3 0.3 0.3]);
set(facedetection_button,'FontSize',12,'FontName','΢���ź�','FontWeight','bold','ForegroundColor',[0.3 0.3 0.3]);
set(eyesdetection_button,'FontSize',12,'FontName','΢���ź�','FontWeight','bold','ForegroundColor',[0.3 0.3 0.3]);
set(facelocation_button,'FontSize',12,'FontName','΢���ź�','FontWeight','bold','ForegroundColor',[0.3 0.3 0.3]);
set(normalization_button,'FontSize',12,'FontName','΢���ź�','FontWeight','bold','ForegroundColor',[0.3 0.3 0.3]);
set(facerecognization_button,'FontSize',12,'FontName','΢���ź�','FontWeight','bold','ForegroundColor',[0.3 0.3 0.3]);