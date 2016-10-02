FROM ubuntu

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF



RUN echo ${BUILD_DATE}   > blubb \
 && echo ${VNC_REF}     >> blubb

CMD ["cat", "blubb"]
 
