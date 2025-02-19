# 커밋 날짜 변경
GIT_COMMITTER_DATE="2018-03-01T08:00:00+09:00" git commit --date="2018-03-01T08:00:00+09:00" -m "커밋 메시지"


# Commit + Push 했는데 커밋메시지 수정하고 싶을 때 (수정한 이후의 커밋들이 커밋 날짜가 수정한 날짜로 변경되는 현상이 발생)
git rebase -i Head~N # N은 수정하고 싶은 과거 커밋을 의미함

reword def456 수정하려는 커밋 메시지

git rebase --continue

git push -f origin master


# Commit + Push 했는데 커밋메시지와 커밋 날짜를 수정하고 싶을 때 (수정한 이후의 커밋들이 커밋 날짜가 수정한 날짜로 변경되는 현상이 발생)
git rebase -i Head~N # N은 수정하고 싶은 과거 커밋을 의미함

edit def456 수정하려는 커밋 메시지

GIT_AUTHOR_DATE="2025-02-20 02:10:53 +0900" GIT_COMMITTER_DATE="2025-02-20 02:10:53 +0900" git commit --amend --date="2025-02-20 02:10:53 +0900" -m "수정된 커밋 메시지"

git rebase --continue

git push -f origin master

# 기존 커밋 날짜 확인
git show -s --format=%ci 커밋해쉬쉬

# git log 에서 commit 날짜를 2025-02-11 02:59:32 +0900 형태로 출력하기
git log --date=iso --pretty=format:"%h %ad %s" --date=local

git log --pretty=format:"%h %ad %s" --date=format:"%Y-%m-%d %H:%M:%S %z"


