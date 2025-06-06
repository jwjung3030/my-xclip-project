FROM pytorch/pytorch:2.2.0-cuda12.1-cudnn8-runtime

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    ffmpeg \
    libsm6 \
    libxext6 \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && apt-get clean

RUN pip3 install --upgrade pip

RUN pip3 install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

RUN pip3 install \
    transformers \
    timm \
    accelerate \
    opencv-python \
    decord \
    einops

WORKDIR /app

CMD ["/bin/bash"]
