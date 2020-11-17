function output = echo_gen(input, Fs, delay, amp);

del = round(delay*Fs);
if amp ~= 0
    evec = zeros(length(input) + del, 1);
    evec(del+1:size(evec)) = amp*input(1:length(input));
    input(numel(evec)) = 0;
    output = input + evec;
    list = [];
    for ii = 1:length(output)
        if output(ii) > 1 || output(ii) < -1
            list = [list output(ii)];
        end
    end
    if ~isempty(list)
        x = abs(max(list));
        y = abs(min(list));
        if x > y
            output = output/x;
        else
            output = output/y;
        end
    end
else
    evec = zeros(length(input) + del, 1);
    input(numel(evec)) = 0;
    output = input + evec;
end
sound(output, Fs)
end