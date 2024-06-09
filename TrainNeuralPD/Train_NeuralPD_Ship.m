%Du lieu huan luyen mang NN
K = length(u); %so mau du lieu
X = [e(1:K)'; de(1:K)'];
D = u(1:K)';

%Khoi tao mang NN va huan luyen
N = 10; % so no ron o lop an
mynet = newff(X,D,N,{'tansig' 'purelin'});
mynet = train(mynet,X,D);

gensim(mynet); %tao khoi Simulink thuc hien NN vua huan luyen


