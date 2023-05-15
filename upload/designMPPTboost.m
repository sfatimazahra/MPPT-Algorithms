function varargout = designMPPTboost(varargin)
% DESIGNMPPTBOOST MATLAB code for designMPPTboost.fig
%      DESIGNMPPTBOOST, by itself, creates a new DESIGNMPPTBOOST or raises the existing
%      singleton*.
%
%      H = DESIGNMPPTBOOST returns the handle to a new DESIGNMPPTBOOST or the handle to
%      the existing singleton*.
%
%      DESIGNMPPTBOOST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DESIGNMPPTBOOST.M with the given input arguments.
%
%      DESIGNMPPTBOOST('Property','Value',...) creates a new DESIGNMPPTBOOST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before designMPPTboost_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to designMPPTboost_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help designMPPTboost

% Last Modified by GUIDE v2.5 21-Jul-2018 18:57:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @designMPPTboost_OpeningFcn, ...
                   'gui_OutputFcn',  @designMPPTboost_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before designMPPTboost is made visible.
function designMPPTboost_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to designMPPTboost (see VARARGIN)
set(handles.helpdisp,'String','Insert input parameters > Choose load type > Check load range > Insert Fixed/Max Output Resistance > Verified the load and LC parameters.');
clc;

if exist('MPPTboost.jpg', 'file')  
    movefile('MPPTboost.jpg','MPPTboost.p');
end

    axes(handles.axesD);
        grid on;
        xlabel('MPP Resistance, R_{mp} (Ohm)');
        ylabel('Duty Cycle, D (%)');
        
    axes(handles.axesL);
        grid on;
        xlabel('Output Resistance, R_o (Ohm)');
        ylabel('I_L Ripple Factor (%)');
        
    axes(handles.axesCi);
        grid on;
        xlabel('Output Resistance, R_o (Ohm)');
        ylabel('V_C_i Ripple Factor (%)');
    
    axes(handles.axesCo);
        grid on;
        xlabel('Output Resistance, R_o (Ohm)');
        ylabel('V_C_o Ripple Factor (%)');
        
% Choose default command line output for designMPPTboost
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes designMPPTboost wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = designMPPTboost_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Rmpmin_Callback(hObject, eventdata, handles)
% hObject    handle to Rmpmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rmpmin as text
%        str2double(get(hObject,'String')) returns contents of Rmpmin as a double


% --- Executes during object creation, after setting all properties.
function Rmpmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rmpmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rmpmax_Callback(hObject, eventdata, handles)
% hObject    handle to Rmpmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rmpmax as text
%        str2double(get(hObject,'String')) returns contents of Rmpmax as a double


% --- Executes during object creation, after setting all properties.
function Rmpmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rmpmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Dmin_Callback(hObject, eventdata, handles)
% hObject    handle to Dmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Dmin as text
%        str2double(get(hObject,'String')) returns contents of Dmin as a double


% --- Executes during object creation, after setting all properties.
function Dmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Dmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Dmax_Callback(hObject, eventdata, handles)
% hObject    handle to Dmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Dmax as text
%        str2double(get(hObject,'String')) returns contents of Dmax as a double


% --- Executes during object creation, after setting all properties.
function Dmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Dmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fs_Callback(hObject, eventdata, handles)
% hObject    handle to Fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fs as text
%        str2double(get(hObject,'String')) returns contents of Fs as a double


% --- Executes during object creation, after setting all properties.
function Fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yCi_Callback(hObject, eventdata, handles)
% hObject    handle to yCi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yCi as text
%        str2double(get(hObject,'String')) returns contents of yCi as a double


% --- Executes during object creation, after setting all properties.
function yCi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yCi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yCo_Callback(hObject, eventdata, handles)
% hObject    handle to yCo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yCo as text
%        str2double(get(hObject,'String')) returns contents of yCo as a double


% --- Executes during object creation, after setting all properties.
function yCo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yCo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yL_Callback(hObject, eventdata, handles)
% hObject    handle to yL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yL as text
%        str2double(get(hObject,'String')) returns contents of yL as a double


% --- Executes during object creation, after setting all properties.
function yL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function sfCi_Callback(hObject, eventdata, handles)
% hObject    handle to sfCi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sfCi as text
%        str2double(get(hObject,'String')) returns contents of sfCi as a double


% --- Executes during object creation, after setting all properties.
function sfCi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sfCi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sfCo_Callback(hObject, eventdata, handles)
% hObject    handle to sfCo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sfCo as text
%        str2double(get(hObject,'String')) returns contents of sfCo as a double


% --- Executes during object creation, after setting all properties.
function sfCo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sfCo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sfL_Callback(hObject, eventdata, handles)
% hObject    handle to sfL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sfL as text
%        str2double(get(hObject,'String')) returns contents of sfL as a double


% --- Executes during object creation, after setting all properties.
function sfL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sfL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkload.
function checkload_Callback(hObject, eventdata, handles)
% hObject    handle to checkload (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;

Rmpmin=str2double(get(handles.Rmpmin,'String'));
Rmpmax=str2double(get(handles.Rmpmax,'String'));
Dmin=str2double(get(handles.Dmin,'String'))/100;
Dmax=str2double(get(handles.Dmax,'String'))/100;
loadtype=get(get(handles.loadtype,'SelectedObject'),'String');

RominG = Rmpmin/(1-Dmin)^2;
RomaxG = Rmpmin/(1-Dmax)^2;
Roming = Rmpmax/(1-Dmin)^2;
Romaxg = Rmpmax/(1-Dmax)^2;

if Rmpmax<Rmpmin || Dmax<Dmin || isnan(Rmpmin) || isnan(Rmpmax) || isnan(Dmin) || isnan(Dmin)
    msgbox('Please set the MPP Resistance or the PWM correctly.');
    set(handles.fixedload,'Enable','On');
elseif Roming>RomaxG
    switch loadtype
        case 'Fixed'
            set(handles.limitedload,'Value',1);
        case 'Limited'
        case 'Unlimited'
    end
    set(handles.fixedload,'Enable','Off');
    set(handles.RominGmin,'String',Roming);
    set(handles.RomaxGmin,'String',Romaxg);
    set(handles.RominGmax,'String',RominG);
    set(handles.RomaxGmax,'String',RomaxG);
else
    set(handles.fixedload,'Enable','On');
    set(handles.RominGmin,'String',Roming);
    set(handles.RomaxGmin,'String',Romaxg);
    set(handles.RominGmax,'String',RominG);
    set(handles.RomaxGmax,'String',RomaxG);
end

loadtype=get(get(handles.loadtype,'SelectedObject'),'String');
switch loadtype
    case 'Fixed'
        set(handles.Rosetmin,'String',Roming);
        set(handles.Roseteq,'String','<=  Ro(fix)  <=');
        set(handles.Rosetmax,'String',RomaxG);
        set(handles.Roset,'String','');
        set(handles.Roset,'Enable','On');
    case 'Limited'
        set(handles.Rosetmin,'String',Roming);
        set(handles.Roseteq,'String','<=  Ro(max)  < ');
        set(handles.Rosetmax,'String',Romaxg);
        set(handles.Roset,'String','');
        set(handles.Roset,'Enable','On');
    case 'Unlimited'
        set(handles.Rosetmin,'String','');
        set(handles.Roseteq,'String','    Ro(max)  = ');
        set(handles.Rosetmax,'String',Romaxg);
        set(handles.Roset,'String',Romaxg);
        set(handles.Roset,'Enable','Inactive');
end


% --- Executes on button press in calcLC.
function calcLC_Callback(hObject, eventdata, handles)
% hObject    handle to calcLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clc;

Rmpmin=str2double(get(handles.Rmpmin,'String'));
Rmpmax=str2double(get(handles.Rmpmax,'String'));
Dmin=str2double(get(handles.Dmin,'String'))/100;
Dmax=str2double(get(handles.Dmax,'String'))/100;
loadtype=get(get(handles.loadtype,'SelectedObject'),'String');
Roset=str2double(get(handles.Roset,'String'));
yCi=str2double(get(handles.yCi,'String'))/100;
yCo=str2double(get(handles.yCo,'String'))/100;
yL=str2double(get(handles.yL,'String'))/100;
Fs=str2double(get(handles.Fs,'String'))*1000;
sfCi=str2double(get(handles.sfCi,'String'));
sfCo=str2double(get(handles.sfCo,'String'));
sfL=str2double(get(handles.sfL,'String'));

RominG = Rmpmin/(1-Dmin)^2;
RomaxG = Rmpmin/(1-Dmax)^2;
Roming = Rmpmax/(1-Dmin)^2;
Romaxg = Rmpmax/(1-Dmax)^2;

switch loadtype
    case 'Fixed'
        if isnan(Roset) || Roset<Roming   ||  Roset>RomaxG
            msgbox(sprintf('Please set the "Fixed/Max Output Resistance" between %d Ohm and %d Ohm.',Roming,RomaxG));
            set(handles.Ci,'String','');
            set(handles.Co,'String','');
            set(handles.L,'String','');
        else
            [L,Ci,Co]=MPPTboost('Fixed',Roset,sfL,sfCi,sfCo,Rmpmin,Rmpmax,Fs,yL,yCi,yCo,RomaxG,Dmin,Dmax);
            set(handles.Ci,'String',Ci);
            set(handles.Co,'String',Co);
            set(handles.L,'String',L);
        end
    case 'Limited'
        if isnan(Roset) || Roset<Roming   ||  Roset>Romaxg
            msgbox(sprintf('Please set the "Fixed/Max Output Resistance" between %d Ohm and %d Ohm.',Roming,Romaxg));
            set(handles.Ci,'String','');
            set(handles.Co,'String','');
            set(handles.L,'String','');
        else
            [L,Ci,Co]=MPPTboost('Limited',Roset,sfL,sfCi,sfCo,Rmpmin,Rmpmax,Fs,yL,yCi,yCo,RomaxG,Dmin,Dmax);
            set(handles.Ci,'String',Ci);
            set(handles.Co,'String',Co);
            set(handles.L,'String',L);
        end
    case 'Unlimited'
        if isnan(Roset)
            msgbox('Please re-press the "1. Check Load Range" button.');
            set(handles.Ci,'String','');
            set(handles.Co,'String','');
            set(handles.L,'String','');
        else
        [L,Ci,Co]=MPPTboost('Unlimited',Roset,sfL,sfCi,sfCo,Rmpmin,Rmpmax,Fs,yL,yCi,yCo,RomaxG,Dmin,Dmax);
        set(handles.Ci,'String',Ci);
        set(handles.Co,'String',Co);
        set(handles.L,'String',L);
        end
end




function Roset_Callback(hObject, eventdata, handles)
% hObject    handle to Roset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Roset as text
%        str2double(get(hObject,'String')) returns contents of Roset as a double


% --- Executes during object creation, after setting all properties.
function Roset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Roset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in nonideality.
function nonideality_Callback(hObject, eventdata, handles)
% hObject    handle to nonideality (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of nonideality


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over unlimitedload.
function unlimitedload_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to unlimitedload (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Roset.
function Roset_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Roset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on unlimitedload and none of its controls.
function unlimitedload_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to unlimitedload (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(~, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clc;

Rmpmin=str2double(get(handles.Rmpmin,'String'));
Rmpmax=str2double(get(handles.Rmpmax,'String'));
Dmin=str2double(get(handles.Dmin,'String'))/100;
Dmax=str2double(get(handles.Dmax,'String'))/100;
loadtype=get(get(handles.loadtype,'SelectedObject'),'String');
Roset=str2double(get(handles.Roset,'String'));
Fs=str2double(get(handles.Fs,'String'))*1000;
Ci=str2double(get(handles.Ci,'String'));
Co=str2double(get(handles.Co,'String'));
L=str2double(get(handles.L,'String'));

switch loadtype
case 'Fixed'
    Rmp=Rmpmin:Rmpmax;
    logD=100*(1-sqrt(Rmp./Roset));
    logyIL=100*Rmp./L./Fs.*(1-sqrt(Rmp./Roset));
    logyVmp=100*(1-sqrt(Rmp./Roset))/(8.*L.*Ci.*Fs^2);
    logyVo=100*(1./Roset-sqrt(Rmp./Roset^3))./Co./Fs;
    
    axes(handles.axesD);
        plot(Rmp,logD);
        grid on;
        xlabel('MPP Resistance, R_{mp} (Ohm)');
        ylabel('Duty Cycle, D (%)');
        
    axes(handles.axesL);
        plot(Rmp,logyIL);
        grid on;
        xlabel('MPP Resistance, R_{mp} (Ohm)');
        ylabel('I_L Ripple Factor (%)');
        
    axes(handles.axesCi);
        plot(Rmp,logyVmp);
        grid on;
        xlabel('MPP Resistance, R_{mp} (Ohm)');
        ylabel('V_C_i Ripple Factor(%)');
    
    axes(handles.axesCo);
        plot(Rmp,logyVo);
        grid on;
        xlabel('MPP Resistance, R_{mp} (Ohm)');
        ylabel('V_C_o Ripple Factor (%)');

case 'Limited'
    Rmp=Rmpmin:(Rmpmax-Rmpmin)/4:Rmpmax;
    D=Dmin:0.01:Dmax;
    for j=1:length(Rmp)
        for i=1:length(D)
            Ro(i,j)=Rmp(j)/(1-D(i))^2;
            if Ro(i,j)>Roset
                Ro(i,j)=Roset;
            end
            logD(i,j)=100*(1-sqrt(Rmp(j)/Ro(i,j)));
            logyIL(i,j)=100*Rmp(j)/L/Fs*(1-sqrt(Rmp(j)/Ro(i,j)));
            logyVmp(i,j)=100*(1-sqrt(Rmp(j)/Ro(i,j)))/(8*L*Ci*Fs^2);
            logyVo(i,j)=100*(1/Ro(i,j)-sqrt(Rmp(j)/Ro(i,j)^3))/Co/Fs;
        end
    end
    
    axes(handles.axesD);
        plot(Ro,logD);
        grid on;
        xlabel('MPP Resistance, R_{mp} (Ohm)');
        ylabel('Duty Cycle, D (%)');
        
    axes(handles.axesL);
        plot(Ro,logyIL);
        grid on;
        xlabel('Output Resistance, R_o (Ohm)');
        ylabel('I_L Ripple Factor (%)');
        
    axes(handles.axesCi);
        plot(Ro,logyVmp);
        grid on;
        xlabel('Output Resistance, R_o (Ohm)');
        ylabel('V_C_i Ripple Factor (%)');
    
    axes(handles.axesCo);
        plot(Ro,logyVo);
        grid on;
        xlabel('Output Resistance, R_o (Ohm)');
        ylabel('V_C_o Ripple Factor (%)');
        legend('G High','G High-Medium','G Medium','G Medium-Low','G Low','location','northeast')
case 'Unlimited'
    Rmp=Rmpmin:(Rmpmax-Rmpmin)/4:Rmpmax;
    D=Dmin:0.01:Dmax;
    for j=1:length(Rmp)
        for i=1:length(D)
            Ro(i,j)=Rmp(j)/(1-D(i))^2;
            if Ro(i,j)>Roset
                Ro(i,j)=Roset;
            end
            logD(i,j)=100*(1-sqrt(Rmp(j)/Ro(i,j)));
            logyIL(i,j)=100*Rmp(j)/L/Fs*(1-sqrt(Rmp(j)/Ro(i,j)));
            logyVmp(i,j)=100*(1-sqrt(Rmp(j)/Ro(i,j)))/(8*L*Ci*Fs^2);
            logyVo(i,j)=100*(1/Ro(i,j)-sqrt(Rmp(j)/Ro(i,j)^3))/Co/Fs;
        end
    end
    
    axes(handles.axesD);
        plot(Ro,logD);
        grid on;
        xlabel('MPP Resistance, R_{mp} (Ohm)');
        ylabel('Duty Cycle, D (%)');
        
    axes(handles.axesL);
        plot(Ro,logyIL);
        grid on;
        xlabel('Output Resistance, R_o (Ohm)');
        ylabel('I_L Ripple Factor (%)');
        
    axes(handles.axesCi);
        plot(Ro,logyVmp);
        grid on;
        xlabel('Output Resistance, R_o (Ohm)');
        ylabel('V_C_i Ripple Factor (%)');
    
    axes(handles.axesCo);
        plot(Ro,logyVo);
        grid on;
        xlabel('Output Resistance, R_o (Ohm)');
        ylabel('V_C_o Ripple Factor (%)');
        legend('G High','G High-Medium','G Medium','G Medium-Low','G Low','location','northeast')
end


% --- Executes on selection change in help.
function help_Callback(hObject, eventdata, handles)
% hObject    handle to help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns help contents as cell array
%        contents{get(hObject,'Value')} returns selected item from help
help=get(hObject,'Value');

switch help
    case 1
        set(handles.helpdisp,'String','Insert input parameters > Choose load type > Check load range > Insert Fixed/Max Output Resistance > Verified the load and LC parameters.');
    case 2
        set(handles.helpdisp,'String','The Input parameters is the desired characteristic of the MPPT boost converter. It cover the maximum power point (MPP) location, the pulse width modulation (PWM), the ripple factor, and the safety factor.');
    case 3
        set(handles.helpdisp,'String','The MPP Resistance (Rmp) is equals to Vmp/Imp. The Vmp and Imp are chosen for the minimum and maximum irradiance (G). When the irradiance is low, the Rmp is maximum. While the Rmp is minimum when the irradiace is high. Refer to the paper for more detail and for application in the partial shading.');
    case 4
        set(handles.helpdisp,'String','The Pulse width modulation (PWM) is a based on the duty cycle. Three parameters are neededs for the PWM. The minimum duty cycle (Dmin) is set to allow the boost converter to operate properly. The recomended Dmin is 10%. The maximum duty cycle (Dmax) is added since the boost converter cannot work properly when the duty cycle is to high. The recomended Dmax is 75%. The switching frequency (Fs) depends on the capability of the hardware platform being used (FPGA, DSP, dSPAACE, ....). The recomended Fs is at least 20 kHz to avoid sound produced by the converter');
    case 5
        set(handles.helpdisp,'String','The ripple factor shows how much voltage or current ripple produce by the MPPT boost converter. The input capacitor (Ci) controls the voltage ripple produces at PV panel terminal. The output capacitor (Co) controls the voltage ripple produces at the load. The inductance (L) controls the current ripple produces at MPPT contverter and maintains continuous current mode. The recomended ripple factor for Ci, Co, and L is 1%, 1%, and 25%, respectively. . .');
    case 6
        set(handles.helpdisp,'String','Safety factor is added to compensate the nonideality of the MPPT boost converter. The parameters calculated is considered ideal when the safety factor is 1. Higher value means the nonideality effect is more severe. This nonideality is usually caused by the internal resistance in inductor or capacitor. The recomended safety factor for Ci, Co, and L is 2.0, 1.5, and 1.3, respectively.');   
    case 7
        set(handles.helpdisp,'String','There are three load type for the MPPT boost converter. Fixed load means the load is constrant even when the MPP changes. Limited load mean the load varies throughout the operation. However, there are limits on how high the load can be (Romax). Unlimited load means the load has no limit. The limit is only the MPPT boost converter.');
    case 8
        set(handles.helpdisp,'String','Load range depends on the MPP. When the irradiance is low, the Ro range are wide and high. When the irradiance is low, the load range is narrow and low. The Ro needs to be withind this range depending on the irradiance');   
    case 9
        set(handles.helpdisp,'String','Fixed/Max output resistance (Romax) is different for every type of load. Used the range given. Note that the unlimited load already has a fixed Romax value and cannot be adjusted.');
    case 10
        set(handles.helpdisp,'String','The inductance and capacitance needed for the MPPT boost converter. Please refer to the paper on where the location of the L, Ci, and Co..');
    case 11
        set(handles.helpdisp,'String','Verification is done to ensure the load and the LC parameters calculated followed the desired input parameter design. The load calculation is correct if the duty cycle is within the duty cycle range. The LC parameters are accurate if the ripple factors is lower than the desired setting. Note that the ripple factor is lower than the desired setting due to the safety factor. To follow the desired ripple factor, set the safety factor to 1.');
end

% --- Executes during object creation, after setting all properties.
function help_CreateFcn(hObject, eventdata, handles)
% hObject    handle to help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
