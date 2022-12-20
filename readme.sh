# DOCKER 
# adalah sebuah software container manager.

# DOCKER IMAGE
# adalah sebuah installer seperti halnya aplikasi, docker image merupakan installer dari container # yang sudah memuat aplikasi dan dependency.

# DOCKER CONTAINER
# adalah gerbong yang memuat aplikasi kita dan dependency dari aplikasi kita yang 
# dapat di sesuaikan sesuai kebutuhan kita seperti memory, cpus, volume / storage, environment 
# variable, bind mount direktory. dan sifat nya terisolasi.

# DOCKER REGISTRY
# adalah adalah tempat untuk mengupload image yang telah kita build, supaya mudah untuk disharing 
# atau di gunakan di beberapa server

# untuk melihat semua images yang ada
docker images

# untuk download image yang dibutuhkan, tag adalah versi dari image
docker pull imagename:tag

# untuk menghapus image
docker image rm imagename:tag

# untuk membuat container with custome name
docker container create --name customename imagename:tag

# untuk membuat container with custome name and environment
docker container create --name customename -e var1=val1 -e var2=val2 imagename:tag

# untuk membuat container with custome name, memory (m=MB,k=KB,g=GB), cpus (ex: 1.5, 0.5, etc)
docker container create --name customename --memory 100m --cpus 1.0 imagename:tag
