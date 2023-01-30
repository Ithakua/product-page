FROM python:3.8.16

WORKDIR /app

RUN git clone https://github.com/Ithakua/product-page.git

#La puedes declarar en el docker run con la opcion -e GROUP_NUMBER=13
ENV GROUP_NUMBER 13

RUN cp -r product-page/practica_creativa2 . 

RUN rm -r product-page

RUN pip3 install -r practica_creativa2/bookinfo/src/productpage/requirements.txt

## No hace falta exponer el puerto 9080 de esta manera porque solo lo habilita
## para la comunicacion entre containers (y solo tenemos uno)
#EXPOSE 9080

CMD ["python3", "practica_creativa2/bookinfo/src/productpage/productpage.py", "9080"]


