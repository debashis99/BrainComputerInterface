function [out1]= cspmain2(data1, data2,label1,label2)
 R1=0;R2=0;
% [~,x]=size(data1);
% [~,y]=size(data2);
%out1=zeros(200,4);out2=zeros(200,4);

t=(0:length(data1{1}(:,1))-1)/64;

for i=1:96
	R11 = ((data1{i})*((data1{i})'));
	%disp(size(R11));
    %disp(i);
	R1 = R1+(R11/trace(R11));

	R22 = ((data2{i})*((data2{i})'));
	R2 = R2+(R22/trace(R22));
end

R1=R1/96;
R2=R2/96;

Rsum = R1+R2;
% disp(size(R1));
% disp(size(R2));
[EVecsum,EValsum] = eig(Rsum);	
[EValsum,ind] = sort(diag(EValsum),'descend');

EVecsum = EVecsum(:,ind);


W = sqrt(inv(diag(EValsum))) * EVecsum';
%disp(size(W));

S1 = W * R1 * W';
S2 = W * R2 * W';

[B,D] = eig(S1,S2);


[~,ind]=sort(diag(D));
B=B(:,ind);

colo = B'*W;
for i=1:96
    out1mod(i,:)=log(var((colo)*data1{i}));
    out2mod(i,:)=log(var((colo)*data2{i}));
end

out1=num2cell(out1mod);
%out2=num2cell(out2mod);
%     for i=1:96
%         temp=getarfeat(data1{i},6);
%         for j=1:98
%             out1{i,j}=temp(j-14);
%         end
%     end
for i=1:96
        for j=15:28
           out1{i,j}=getwlfeat(data1{i}(:,j-14));%waveform length
        end
        for j=29:42
            out1{i,j}=mean(abs(data1{i}(:,j-28)));%mean
        end
        for j=43:56
            out1{i,j}=rms(data1{i}(:,j-42));%rms
        end
        for j=57:70
           out1{i,j}=trapz(t,(abs(data1{i}(:,j-56)).^2));%square integral
        end
        for j=71:84
        [p,f]=psd(data1{i}(:,j-70));% mean power frequency
        out1{i,j}=trapz(f,f.*p)/trapz(f,p);
        end
end
for i=1:96
    out1{i,85}=label1;
    %out2{i,15}=label2;
end

end