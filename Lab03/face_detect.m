%--------------------------------------------------------------------------
%------------  Systems Analysis and Decision Making  ----------------
%--------------------------------------------------------------------------
% Lab 3: Face detection
% authors: A. Gonczarek, J.M. Tomczak, S. Zarêba, M. Ziêba
% 2016
%--------------------------------------------------------------------------


%--------------------------------------------------------------------------
%----------------- THIS FUNCTION MUST REMAIN UNCHANGED  ----------------
%--------------------------------------------------------------------------

function face_detect( im, w, step, theta )

figure;
points = [];

[N M] = size(im);

for i=57:step:(N-57)
    for j=47:step:(M-47)
        crop = imcrop(im,[j-46 i-56 92 112]);
        clf;
        draw_rectangles(im,[points;[i j]]);
        drawnow;
        x = HOG(crop)';
        if sigmoid([1 x]*w) > theta
            points = [points;[i j]];
        end
    end
end

end
