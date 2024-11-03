FROM monkeyx/retro_builder:arm64

RUN apt update && apt upgrade -y
# && apt install -y lua5.1 liblua5.1-0-dev vim zip unzip
RUN ldconfig 

WORKDIR /root
RUN git clone https://github.com/ohol-vitaliy/gravity_defied_cpp

WORKDIR /root/gravity_defied_cpp
RUN cmake -DCMAKE_BUILD_TYPE=Release . \
	&& make -j4




