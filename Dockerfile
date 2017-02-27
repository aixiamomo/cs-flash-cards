FROM python:3.5
MAINTAINER aixia <aixia0124@gmail.com>

# 复制文件指令
ADD . /src

# 指定RUN、CMD与ENTRYPOINT命令的工作目录
WORKDIR /src

# 在shell或者exec的环境下执行的命令
RUN pip install --upgrade pip \
    && pip install flask gunicorn && pip install -r requirements.txt

COPY entry.sh /
RUN chmod +x /entry.sh

# 授权访问从容器内到主机上的目录
VOLUME /src/db

# 指定容器在运行时监听的端口
EXPOSE 8000

# 容器默认的执行命令。 Dockerfile只允许使用一次CMD指令
CMD ["/entry.sh"]
