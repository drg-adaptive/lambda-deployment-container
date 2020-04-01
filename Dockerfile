FROM lambci/lambda-base-2:build

RUN yum install -y python3 python3-pip groff less

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install && \
  rm -rf ./aws && rm ./awscliv2.zip

RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -
RUN yum install -y gcc-c++ make nodejs libpng-devel zlib-devel libXrender-devel fontconfig-devel pixman

RUN npm install --global yarn