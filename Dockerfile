FROM bash:latest

WORKDIR /zip2cbz

COPY zip2cbz.sh .

RUN chmod +x zip2cbz.sh

RUN sed -i 's/\r$//' zip2cbz.sh

CMD ["bash", "zip2cbz.sh"]