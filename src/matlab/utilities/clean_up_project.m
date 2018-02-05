function clean_up_project()
%clean_up_project   Clean up local customizations of the environment
% 
%   Clean up the environment for the current project. This function undoes
%   the settings applied in "set_up_project". It is set to Run at Shutdown.

%   Copyright 2011-2012 The MathWorks, Inc.

% Use Simulink Project API to get the current project:
p = slproject.getCurrentProject;

% Get the project root folder:
projectRoot = p.RootFolder;

% Remove paths added for this project. Get the single definition of the
% folders to add to the path:
folders = project_paths();

% Remove these from the MATLAB path:
for jj=1:numel(folders)
    rmpath( fullfile(projectRoot, folders{jj}) );
end

% Reset the location where generated code and other temporary files are
% created (slprj) to the default:
Simulink.fileGenControl('reset');

