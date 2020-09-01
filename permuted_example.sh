results="./results/permuted_Mnist/"
MNIST_PERM="--n_layers 2 --n_hiddens 100 --data_path ./data/ --save_path $results --batch_size 10 --log_every 10 --samples_per_task 1000 --data_file mnist_permutations.pt --cuda no  --tasks_to_preserve 10"
MY_PYTHON="python"
seed=0

echo "***********************Rand***********************"
$MY_PYTHON main.py $MNIST_PERM --model rehearse_per_batch_rand --lr 0.05  --n_memories 100 --n_sampled_memories 300 --n_constraints 10 --memory_strength 0  --n_iter 3 --slack 0 --change_th 0.0 --repass 0 --eval_memory yes --normalize  no --seed $seed --subselect 0


