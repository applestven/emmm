#!/usr/bin/env sh

# ȷ���ű��׳������Ĵ���
set -e

# ���ɾ�̬�ļ�
npm run build

# �������ɵ��ļ���
cd emmm/.vuepress/public

# ����Ƿ������Զ�������
# echo 'www.yourwebsite.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# �������Ҫ���� https://USERNAME.github.io
git push -f git@github.com:applestven/emmm.git master:gh-pages

# ��������� https://USERNAME.github.io/<REPO>  REPO=github�ϵ���Ŀ
# git push -f git@github.com:USERNAME/<REPO>.git master:gh-pages

cd -