# 设置初始镜像
FROM python:stretch

# 拷贝文件到镜像中
COPY . /app
# 设置镜像中的工作目录
WORKDIR /app

# 在镜像中运行命令
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# 设置可运行的命令
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
