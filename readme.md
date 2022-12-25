# Docker 
Secara sederhana docker adalah sebuah software container manager.

## Docker Image
adalah sebuah installer seperti halnya aplikasi, docker image merupakan installer dari container yang sudah memuat aplikasi dan dependency.

## Docker Container
adalah gerbong yang memuat aplikasi kita dan dependency dari aplikasi kita yang dapat di sesuaikan sesuai kebutuhan kita seperti memory, cpus, volume / storage, environment variable, bind mount direktory. dan sifat nya terisolasi.

## Docker Registry
adalah adalah tempat untuk mengupload image yang telah kita build, supaya mudah untuk disharing atau di gunakan di beberapa server. contohnya adalah hub.docker.com

## Berikut Perintah untuk menggunakan docker

### Listing Image
untuk melihat semua images yang ada

```shell
docker images
```

### Pull / Download Image
untuk download image yang dibutuhkan, tag adalah versi dari image

```shell
docker pull imagename:tag
```

### Remove Image
untuk menghapus image

```shell
docker image rm imagename:tag
```
### Listing Container
melihat list container yang sudah dibuat dan aktif

```shell
docker container ls
```

melihat list semua container yang dibuat baik yang aktif atau pun tidak

```shell
docker container ls -a
```
### Custome Container Name
untuk membuat container with custome name
```shell
docker container create --name customename imagename:tag
```
### Container Publish Port
untuk membuat container with custome name and publish port (publish_port:internal_port) (--publish atau -p)

```shell
docker container create --name customename -p 8080:80 imagename:tag
```
### Container Environment Variable
untuk membuat container with custome name and environment (--env atau -e)

```shell
docker container create --name customename -e var1=val1 -e var2=val2 imagename:tag
```
### Container Resource Limit
untuk membuat container with custome name, memory (m=MB,k=KB,g=GB), cpus (ex: 1.5, 0.5, etc)

```shell
docker container create --name customename --memory 100m --cpus 1.0 imagename:tag
```
### Start Container
menjalankan container yang sudah dibuat

```shell
docker container start namacontainer
```
### Stop Container
menghentikan container

```shell
docker container stop namacontainer
```
### Remove Container
menghapus container, note: container tidak bisa dihapus sebelum di stop

```shell
docker container rm namacontainer
```
### Container Log
melihat log yang ada di dalam container

```shell
docker container logs namacontainer
```

melihat log yang ada di dalam container secara real-time

```shell
docker container logs -f namacontainer
```
### Container Exec
masuk container menggunakan exec, seperti untuk menggunakan redis-cli dan lainnya.

```shell
dokcer container exec -i -t namacontainer /bin/bash
```
### Monitoring Container
untuk memonitoring container yang sedang berjalan

```shell
docker container stats
```

## Bind Mounts

fitur yang satu ini berguna untuk sharing folder antara host (computer) dan client (container), sehingga apabila container di hapus, data dari container tidak hilang alias masih tersimpan di folder yang telah di share ke folder di host.

berikut perintah untuk melakukan mount pada saat pembuatan container baru.

```shell
docker container create --name customname --mount="type=bind,source=folder/path,destination=folder/path" imagename:tag
```
Penjelasan paramater mount: <br>
| paramater | keterangan |
|----------|----------|
| **type** | tipe yang dapat dipilih: mount, bind, atau volume |
| **source** | lokasi file atau folder di sistem host |
| **destination** | lokasi file atau folder di container |
| **readonly** | jika ada maka file atau folder hanya bisa dibaca di container tidak bisa ditulis. |

## Docker Volume
- Fitur Bind Mounts sudah ada sejak Docker versi awal, di versi terbaru direkomendasikan menggunakan Docker Volume

- Docker Volume mirip dengan Bind Mounts, bedanya adalah terdapat management Volume, dimana kita bisa membuat Volume, melihat daftar Volume, dan menghapus Volume. 

- Volume sendiri bisa dianggap storage yang digunakan untuk menyimpan data, bedanya dengan Bind Mounts, pada bind mounts, data disimpan pada sistem host, sedangkan pada volume data dimanage oleh Docker

### Melihat docker volume

```shell
docker volume ls
```

### Membuat docker volume

```shell
docker volume create namavolume
```

### Menghapus docker volume

```shell
docker volume rm namavolume
```

### Menggunakan Volume untuk Container

cara menggunakan volume pada saat membuat container sama dengan menggunakan bind mount, namun dengan menggunakan type volume dan source nama volume, seperti berikut.

```shell
docker container create --name customname --mount="type=volume,source=volumename,destination=folder/path" imagename:tag
```
