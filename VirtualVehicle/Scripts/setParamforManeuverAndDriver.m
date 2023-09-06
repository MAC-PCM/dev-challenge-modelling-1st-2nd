function out = setParamforManeuverAndDriver(Model, Maneuver, ManeuverOption, Driver, TestID, in,licStatus)
%

%   Copyright 2021-2022 The MathWorks, Inc.

% Setup Mask Parameters


ManeuverType = 'manType';

if licStatus==1
    ManeuverMaskPath = [Model,'/Scenarios/Drive Cycle/Drive Cycle Source'];
    drivecycleblock=ManeuverMaskPath;
else
    ManeuverMaskPath = [Model,'/Scenarios/Reference Generator'];
    in=in.setBlockParameter(ManeuverMaskPath,'manOverride','off',...
        ManeuverMaskPath,'defaultPos','User-specified',...
        ManeuverMaskPath,ManeuverType,Maneuver);
    drivecycleblock=[ManeuverMaskPath,'/Reference Generator/Drive Cycle/Drive Cycle Source'];
end


DriverTypePath = [Model,'/Driver Commands'];
DriverType = 'driverType';

in=in.setBlockParameter(DriverTypePath,DriverType,Driver);

if strcmp(Maneuver,'Drive Cycle')
    in=in.setBlockParameter(ManeuverMaskPath,'cycleVar',ManeuverOption);

    try
        cyclename=VirtualAssembly.getcyclename(ManeuverOption);
        cycle=load(cyclename);
        simTime=cycle.(cyclename).Time(end);
    catch
        if strcmp(ManeuverOption,'Wide Open Throttle (WOT)')
            dt =autoblksgetparam(drivecycleblock,'dt','Output sample period',[1 1],'autoerrDrivecycle',{'gte',0});
            cycleData = processWOT(drivecycleblock,dt);
            simTime=cycleData(end,1);
        else
            simTime=0;
        end
    end

else
    in=in.setBlockParameter(ManeuverMaskPath,'engine3D',ManeuverOption);

    switch Maneuver
        case 'Double Lane Change'
            simTime = 25;
            in=in.setBlockParameter(ManeuverMaskPath,'SceneDesc','Double lane change');
        case 'Increasing Steer'
            simTime = 60;
            in=in.setBlockParameter(ManeuverMaskPath,'SceneDesc','Open surface');
        case 'Swept Sine'
            simTime = 40;
            in=in.setBlockParameter(ManeuverMaskPath,'SceneDesc','Open surface');
        case 'Sine with Dwell'
            simTime = 25;
            in=in.setBlockParameter(ManeuverMaskPath,'SceneDesc','Open surface');
        case 'Constant Radius'
            simTime = 60;
            in=in.setBlockParameter(ManeuverMaskPath,'SceneDesc','Open surface');
        case 'Fishhook'
            simTime = 40;
            in=in.setBlockParameter(ManeuverMaskPath,'SceneDesc','Open surface');
    end
end

in=in.setVariable('ScnSimTime',simTime);

% Update simulation test data parameters

maskparamap={'ScnSteerDir','steerDir';...
    'ScnLongVelUnit','xdotUnit';...
    'ScnISLatAccStop','ay_stop';...
    };

Config = load('ConfigInfo.mat');
testdata=Config.ConfigInfos.TestPlanArray{TestID}.Data;
if ~isempty(testdata)
    for i = 1 : length(testdata)
        var=testdata{i};

        index=find(strcmp(var{1},maskparamap(:,1)),1);

        if ~isempty(index)
            if obj.licStatus~=1
                in=in.setBlockParameter(ManeuverMaskPath,maskparamap{index,2},var{2});
            end
        else
            newvalue=str2double(var{2});
            if isnan(newvalue)
                in=in.setVariable(var{1},var{2});
            else
                in=in.setVariable(var{1},newvalue);
            end
        end
    end
end

out = in;

end


function cycleData = processWOT(block,dt)
%autoblksgetmaskparms(block,{'xdot_woto','t_wot1','xdot_wot1','t_wot2','xdot_wot2','t_wotend'},true);
% Validate parameter ranges
ParamList = {'xdot_woto', [1,1],{};...
    't_wot1', [1,1],{'gt',0;'lt','t_wot2';'lt','t_wotend'};...
    'xdot_wot1', [1,1],{};...
    't_wot2', [1,1],{'gt','t_wot1';'lt','t_wotend'};...
    'xdot_wot2', [1,1],  {};...
    't_wotend', [1,1],  {'gt', 't_wot2';'gt','t_wot1'};...
    };

wotParams = autoblkscheckparams(block,ParamList);
wotParams.t_wotend =ceil(wotParams.t_wotend);
%

if dt <=0
    dtWOT = 0.1;
else
    dtWOT = dt;
end
tvec = 0:dtWOT:wotParams.t_wotend;
xdotvec = interp1([0, wotParams.t_wot1,wotParams.t_wot1+dtWOT,...
    wotParams.t_wot2,wotParams.t_wot2+dtWOT,wotParams.t_wotend],...
    [wotParams.xdot_woto,wotParams.xdot_woto,wotParams.xdot_wot1,...
    wotParams.xdot_wot1,wotParams.xdot_wot2,wotParams.xdot_wot2],tvec,'linear');
cycleData = [tvec',xdotvec'];

end
