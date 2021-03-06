#ls ../../TNE/corpus/

graph_names=(citeseer_undirected cora_undirected dblp_undirected)
lambda_list=(0.5 0.1 0.01 0.001 0.0001)
sigma_list=(0.5 1.0 2.0)

kernel=schoenberg


for graph in ${graph_names[@]}
do

for lambda in ${lambda_list[@]}
do

for sigma in ${sigma_list[@]}
do

echo ${graph}

corpusPath=../../TNE/corpus/${graph}_node2vec.corpus
embPath=../embeddings/${graph}_${kernel}_sigma=${sigma}_lambda=${lambda}.embedding
../build/kernelNE --corpus ${corpusPath} --emb ${embPath} --kernel ${kernel} --sigma ${sigma} --lambda ${lambda}

done

done

done


