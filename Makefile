download_cifar10:
	wget -c https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
	tar -xvf cifar-10-python.tar.gz
	rm -f *tar.gz
install:
	pip install numpy==1.21.2
	pip install click
	pip install Pillow==8.3.1
train_test_jpg:
	mkdir cifar10_train
	mkdir cifar10_test
	python3 imsave.py --inp_file=data_batch_1 --start_ind=0
	python3 imsave.py --inp_file=data_batch_2 --start_ind=10000
	python3 imsave.py --inp_file=data_batch_3 --start_ind=20000
	python3 imsave.py --inp_file=data_batch_4 --start_ind=30000
	python3 imsave.py --inp_file=data_batch_5 --start_ind=40000
	python3 imsave.py --inp_file=test_batch --out_path=cifar10_test  --start_ind=0

