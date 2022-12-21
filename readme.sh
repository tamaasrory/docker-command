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

# melihat list container yang sudah dibuat dan aktif
docker container ls

# melihat list semua container yang dibuat baik yang aktif atau pun tidak
docker container ls -a

# untuk membuat container with custome name
docker container create --name customename imagename:tag

# untuk membuat container with custome name and publish port (publish_port:internal_port) (--publish atau -p)
docker container create --name customename -p 8080:80 imagename:tag

# untuk membuat container with custome name and environment (--env atau -e)
docker container create --name customename -e var1=val1 -e var2=val2 imagename:tag

# untuk membuat container with custome name, memory (m=MB,k=KB,g=GB), cpus (ex: 1.5, 0.5, etc)
docker container create --name customename --memory 100m --cpus 1.0 imagename:tag

# menjalankan container yang sudah dibuat
docker container start namacontainer

# menghentikan container
docker container stop namacontainer

# menghapus container, note: container tidak bisa dihapus sebelum di stop
docker container rm namacontainer

# melihat log yang ada di dalam container
docker container logs namacontainer

# melihat log yang ada di dalam container secara real-time
docker container logs -f namacontainer

# masuk container menggunakan exec, seperti untuk menggunakan redis-cli dan lainnya.
dokcer container exec -i -t namacontainer /bin/bash

# untuk memonitoring container yang sedang berjalan
docker container stats