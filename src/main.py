import numpy as np


def hello_world():
    # Create a numpy array with the ASCII values of 'Hello, World!'
    hello_world_arr = np.array(
        [72, 101, 108, 108, 111, 44, 32, 87, 111, 114, 108, 100, 33]
    )

    # Convert the ASCII values to characters and join them into a string
    hello_world_str = "".join(chr(i) for i in hello_world_arr)

    print(hello_world_str)


if __name__ == "__main__":
    hello_world()
