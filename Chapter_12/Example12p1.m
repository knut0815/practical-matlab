%Example12p1
% This code creates a GUI programmatically
close all;clear all; %[xpost,ypost,lngth,hght]
hFig=figure('NumberTitle','off','Menubar',...
'none','ToolBar','none','Position',...
[320 180 400 400],'NumberTitle','off',...
    'Name','My First GUI Programmatically');
uicontrol(hFig,'Style', 'text',...
'String', 'Enter Width: W','tag','htextW',...
'Position', [2 200 150 50],'FontSize',15);
uicontrol(hFig,'Style', 'text',...
'String', 'Enter Length: L',...
'Position', [2 300 150 50],'FontSize',15);
uicontrol(hFig,'Style','edit','String','0',...
   'position', [170 310 100 50],...
'FontSize',15,'tag','editL');
uicontrol(hFig,'Style','edit','String',...
'0','position', [170 210 100 50],...
 'FontSize',15,'tag','editW');
uicontrol(hFig,'Style', 'text',...
'String', ' 0 ','BackgroundColor','Red',...
'Position', [200 100 100 40],...
'FontSize',20,'tag','textResult');
uicontrol(hFig,'Style', 'pushbutton',...
'String', 'MULTIPLY L BY W',...
'Position', [20 100 150 50], 'Callback',...
{@Calculate},'FontSize',12); 
function Calculate(hObject,event)
LL=findobj(0,'tag','editL');
L=str2double(get(LL,'String'));
WW=findobj(0,'tag','editW');
W=str2double(get(WW,'String'));
Result=findobj(0,'tag','textResult');
set(Result,'String',num2str(L*W));
end