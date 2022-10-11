from load_cifar import load_batch
import numpy as np
import click
from PIL import Image

@click.command()
@click.option("--inp_path", default="cifar-10-batches-py/", help="Input folder path")
@click.option("--inp_file", default="data_batch_1", help="Input file name")
@click.option("--out_path", default="cifar10_train", help="Output folder name")
@click.option("--start_ind", default=0, help="Starting number of the file to be saved")
def to_jpg(inp_path, inp_file, out_path, start_ind=0):
    images , _ = load_batch(inp_path, inp_file)
    images = np.reshape(images, (images.shape[0], 3, 32, 32))
    
    for i in range(len(images)):
        im = Image.fromarray(images[i].transpose(1,2,0))
        im.save('{}/{}.jpg'.format(out_path, int(start_ind) + i))

if __name__ == "__main__":
    to_jpg()
