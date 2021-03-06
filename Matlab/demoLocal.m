% Demo script that runs an experimental XML file directly on the stimulus computer
clc;clear all;

% Initialize objects
experimentManager = ExperimentManager();
experimentManager.InitScreen(1);
experimentManager.InitMotionSensor('COM8',9,31);
experimentManager.InitRewardDelivery(0,3);

% Load the experiment
experimentManager.LoadXML('C:\VR_SYSTEM\Experiments\09232015\68603-R0.exml')
experimentManager.PrepareTextures()

% Run the experiment
experimentManager.RunExperiment('C:\VR_SYSTEM\Experiments\09232015\68603-R0.elog')

% Clean up after the experiment
clear experimentManager
Screen('CloseAll');
beep