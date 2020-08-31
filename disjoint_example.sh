results="./results/Disjoint_Mnist_5/"
MNIST_Split="--n_layers 2 --n_hiddens 100 --data_path ./data/ --save_path $results --batch_size 10 --log_every 100 --samples_per_task 1000 --data_file mnist_split.pt --cuda no  --tasks_to_preserve 4"
MY_PYTHON="python"
seed=0

echo "***********************GEM***********************"
$MY_PYTHON -m pdb main.py $MNIST_Split --model gem --lr 0.05 --n_memories 300 --memory_strength 0.5 --seed $seed

#echo "***********************Single***********************"
#$MY_PYTHON main.py $MNIST_Split --model single --lr 0.05 --seed $seed

#echo "***********************Rand***********************"
#$MY_PYTHON -m pdb main.py $MNIST_Split --model rehearse_per_batch_rand --lr 0.05  --n_memories 100 --n_sampled_memories 300 --n_constraints 10 --memory_strength 0  --n_iter 3 --slack 0 --change_th 0.0 --repass 0 --eval_memory yes --normalize  no --seed $seed --subselect 0


