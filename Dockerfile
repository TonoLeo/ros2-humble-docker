FROM osrf/ros:humble-desktop-full

WORKDIR /root/

ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

RUN apt-get update

RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y terminator 

RUN echo "source /opt/ros/humble/setup.sh" >> .bashrc
RUN echo "export ROS_MASTER_URI=http://localhost:11311" >> .bashrc
RUN echo "export ROS_HOSTNAME=localhost" >> .bashrc

