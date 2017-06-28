function video_path = chooseSequence(base_path, mode)

%process path to make sure it's uniform
if ispc(), base_path = strrep(base_path, '\', '/'); end
if base_path(end) ~= '/', base_path(end+1) = '/'; end

%list all sub-folders
contents = dir(base_path);
names = {};
for k = 1:numel(contents),
    name = contents(k).name;
    if isdir([base_path name]) && ~strcmp(name, '.') && ~strcmp(name, '..'),
        names{end+1} = name;  %#ok
    end
end

%no sub-folders found
if isempty(names), video_path = []; return; end

%choice GUI
choice = listdlg('ListString', names, 'PromptString', 'SegTrackv2', 'Name', 'Choose video', 'SelectionMode', mode);
numSq = numel(choice);

if isempty(choice)  %user cancelled
    error('No sequence is chose!');
else
    video_path = cell(1, numSq);
    for k = 1:numSq
        video_path{k} = names{choice(k)};
    end
end

end