# Network-Entropy-Fisher-Information
R code for computing Normalized Network Entropy and Normalized Network Fisher Information

The formulas used in the code is prescirbed by 
Freitas, C. G., Aquino, A. L., Ramos, H. S., Frery, A. C., & Rosso, O. A. (2019). A detailed characterization of complex networks using Information Theory. Scientific reports, 9(1), 1-12.

Normalized Network Entropy is computed as follows

<img src="http://www.sciweavers.org/tex2img.php?eq=%5Cmathcal%7BH%7D%3D%5Cfrac%7B1%7D%7BN%7D%20%5Csum_%7Bi%3D1%7D%5E%7BN%7D%20%5Cmathcal%7BH%7D%5E%7B%28i%29%7D%3D%5Cfrac%7B1%7D%7BN%20%5Cln%20%28N-1%29%7D%20%5Csum_%7Bi%3D1%7D%5E%7BN%7D%20%5Cln%20k_%7Bi%7D&bc=White&fc=Black&im=tif&fs=12&ff=txfonts&edit=0" align="center" border="0" alt="\mathcal{H}=\frac{1}{N} \sum_{i=1}^{N} \mathcal{H}^{(i)}=\frac{1}{N \ln (N-1)} \sum_{i=1}^{N} \ln k_{i}" width="" height="" />
