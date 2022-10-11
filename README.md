# CIFAR 10 in Python

The CIFAR-10 dataset consists of 60000 32x32 colour images in [10 classes](https://github.com/EN10/CIFAR#classes), with 6000 images per class.  
There are 50000 training images and 10000 test images.  
The dataset is divided into five training batches and one test batch, each with 10000 images.

[CIFAR-10](https://www.cs.toronto.edu/~kriz/cifar.html)  

### Download

    wget -c https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz

* [CIFAR 10 Python](https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz)

### Extract

    tar -xvzf cifar-10-python.tar.gz
### Libraries
    numpy==1.21.2
    click
    Pillow==8.3.1
### Makefile
    make dowload_cifar10: This command will download cifar10 dataset and extract all the files into a new folder
    make install: This command will install all the libraries needed to be installed to run the file_to_jpg converted codes
    make train_test_jpg: This command will convert all the train and test data to jpg files and save into cifar10_train and cifar10_test folder 

### Count # of files in a directory
    ls | wc -l
### Get the size of a directory
    du -sh folder_path
### Randomly select 100 files from a directory and copy them to another directory
    shuf -zn100 -e *.jpg | xargs -0 cp -vt target/

    Here,
    shuf: shuffles the list of *.jpg files in the current directory.
    -z: is to zero-terminate each line, so that files with special characters are treated correctly.
    -n:8 exits shuf after 8 files.
    xargs: -0 reads the input delimited by a null character (from shuf -z) and runs cp.
    -v: is to print every copy verbosely.
    -t: is to specify the target directory.
