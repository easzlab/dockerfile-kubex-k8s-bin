# Download kubernetes binaries needed by 'kubex'
# @author:  gjmzj
# @repo:    https://github.com/easzlab/dockerfile-kubex-k8s-bin
# @ref:     https://github.com/easzlab/kubex

FROM alpine:3.16

ARG K8S_VER="v1.25.4"

COPY multi-platform-download.sh .

RUN sh -x ./multi-platform-download.sh

CMD [ "sleep", "360000000" ]
