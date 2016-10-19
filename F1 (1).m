function dd = F1()
	f = fopen('dodel.txt','r');
	tline = fgetl(f);
	initials = str2num(tline);
	m = initials(1);
	n = initials(2);
	for i = 1:n
		tline = fgetl(f);
		num = str2num(tline);
		x = num(1:end/2);
		y = num(end/2 + 1:end);
		nr = length(x);
		x_larg = linspace(x(1),x(end),m);
		maty = zeros(nr,nr);
		for z = 1:length(x)
			maty(z,1) = y(z);
		end
		for k = 1:length(x_larg)
			for i = 2:nr
				for j = i : nr
					maty(j,i)=((x_larg(k) - x(j-i+1)) * maty(j,i-1)  -  (x_larg(k) - x(j)) * maty(j-1,i-1))/(x(j)-x(j-i+1));
				end
			end
			y_larg(k) = maty(nr,nr);
		end	
		hold on;
		plot(x_larg,y_larg)

	end

	
	fclose(f);
endfunction
	
