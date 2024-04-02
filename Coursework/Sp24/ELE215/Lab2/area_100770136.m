% Initialize the total area and overlap area
total_area = 0;
overlap_area = 0;

% For each box
for i = 1:size(input_box, 1)
    % Get the coordinates of the current box
    x_min = input_box(i, 1);
    x_max = input_box(i, 2);
    y_min = input_box(i, 3);
    y_max = input_box(i, 4);
    
    % Find area of box
    box_area = (x_max - x_min) * (y_max - y_min);
    
    % Add the area of box to total area
    total_area = total_area + box_area;
    
    % Check for overlap with other boxes
    for j = 1:i-1
        % Get the coordinates of the previous box
        prev_x_min = input_box(j, 1);
        prev_x_max = input_box(j, 2);
        prev_y_min = input_box(j, 3);
        prev_y_max = input_box(j, 4);
        
        % Compute the overlap area between the current box and the previous box
        overlap_x_min = max(x_min, prev_x_min);
        overlap_x_max = min(x_max, prev_x_max);
        overlap_y_min = max(y_min, prev_y_min);
        overlap_y_max = min(y_max, prev_y_max);
        
        % If there is overlap
        if overlap_x_min < overlap_x_max && overlap_y_min < overlap_y_max
            % Compute the area of the overlap
            overlap_box_area = (overlap_x_max - overlap_x_min) * (overlap_y_max - overlap_y_min);
            
            % Subtract the overlap area from the total area
            overlap_area = overlap_area + overlap_box_area;
        end
    end
end

% FINAL AREA
my_area = total_area - overlap_area;


