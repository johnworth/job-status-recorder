FROM golang:1.6-alpine

ARG git_commit=unknown
LABEL org.cyverse.git-ref="$git_commit"

COPY . /go/src/github.com/cyverse-de/job-status-recorder
RUN go install github.com/cyverse-de/job-status-recorder

EXPOSE 60000
ENTRYPOINT ["job-status-recorder"]
CMD ["--help"]
