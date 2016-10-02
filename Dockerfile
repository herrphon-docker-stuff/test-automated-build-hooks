FROM ubuntu

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF  \
      org.label-schema.git-sha1=$GIT_SHA1


ADD pwd_file build.files build.env /

RUN echo ${BUILD_DATE}   > blubb \
 && echo ${VNC_REF}     >> blubb \
 && echo ${GIT_SHA1}    >> blubb \

CMD ["cat", "blubb", "pwd_file", "build.files", "build.env"]

