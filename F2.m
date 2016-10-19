function save = F2()
	f = fopen('barcelona.txt','r');
	tline = fgetl(f);
	initials = str2num(tline);
	m = initials(1);
	n = initials(2);
	for k = 1:n
		tline = fgetl(f);
		num = str2num(tline);
		x = num(1:end/2);
		y = num(end/2 + 1:end);
		nr = length(x);
		x_larg = linspace(x(1),x(end),m);
		for i = 1:nr-1
			a(i) = (y(i+1) - y(i))/(x(i+1) - x(i));
			b(i) = y(i) - a(i)*x(i);
		end
		j = 1;
		
		for i = 1 : m
			for j = 1:nr-1
				if x_larg(i) >= x(j) && x_larg(i) <= x(j+1)
					y_larg(i) = a(j) * x_larg(i) + b(j);
					break;
				end

			end
		end
		hold on;
		plot(x_larg,y_larg);
	
	end
		
endfunction
