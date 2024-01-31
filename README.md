
# Autoencoder Hardware Implementation
## For 2024 LSI Design Contest in Okinawa

Design Level : Intermediate

## Team Name : IICA

School : Bandung Institute of Technology
Members :
- Nicholas Teffandi
- Fauzan Ibrahim
- Achmad Novel

## Description
The proposed design consists of several main components starting from the Control Unit, Arithmetic Logic Unit, Memory block, Instruction memory, and LUT for activation function. The proposed design contains a prewritten special instructions set that are customized to run autoencoder algorithm, where both instruction and data are represented in 16-bit format. The instruction contains 4 fields with 4 bit width each, which are operation code, source address 1, source address 2, and destination address. On the other hand, the data are represented in two's complement fixed point representation format, where both exponent and fraction took 8 bits. The proposed design is verified based on 3 different cases, a 3x3 circle, cross, and greyscale circle, all of which show that the proposed design can learn input information and can reconstruct it with minimal error. The verification is done with the assumption the data is normalized/denormalized outside of the architecture, and all of the weight and bias is initialized with the value of 0.5 with a learning rate of 0.5.