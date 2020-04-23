FROM nfcore/base:1.9
LABEL authors="phil@lifebit.ai adeslatt@gmail.com" \
      description="Docker image containing rMATS v4.0.2 with R 3.6.0"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/rmats4/bin:$PATH