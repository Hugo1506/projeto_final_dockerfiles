FROM ros:humble

#clone do repo olfaction_msgs que o gaden usa
RUN git clone https://github.com/MAPIRlab/olfaction_msgs src/olfaction_msgs

#instala os pacotes necessários
RUN apt-get update && \
    apt-get install -y openssh-client libboost-all-dev libboost-iostreams-dev vim 

#clone do gaden e dos seus submodulos
RUN git clone https://github.com/MAPIRlab/gaden.git src/gaden
RUN cd src/gaden/gaden_common/third_party/ && git clone https://github.com/PepeOjeda/DDA.git 
RUN cd src/gaden/gaden_common/third_party/DDA/third_party && git clone https://github.com/g-truc/glm.git 


#build do gaden e do olfaction_msgs 
#RUN ./ros_entrypoint.sh && \
  #  cd src/ && \
   # colcon build

