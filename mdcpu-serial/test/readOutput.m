function readOutput(file,N)

fid = fopen(file,'r');
count = 1;
while ~feof(fid)
    try
        time(count) = fread(fid,1,'double');
        pos(:,count) = fread(fid,2*N,'double');
        vel(:,count) = fread(fid,2*N,'double');
        lyapExp(:,count) = fread(fid,4*N,'double');
        coll(count) = fread(fid,1,'int');
        count = count + 1;
    catch
        break
    end
end
fclose(fid);
plot(lyapExp(:,end))