#!/bin/bash
# SPDX-FileCopyrightText: 2022 Kenzo Fujisaki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo NG at Line $1
        res=1
}
res=0

### Method of calculation　###
out=$(echo -e '1\n+\n3\n=' | ./calc) #和
[ "${out}" = 4.0 ] || ng ${LINENO}

out=$(echo -e '1\n-\n3\n=' | ./calc) #差
[ "${out}" = -2.0 ] || ng ${LINENO}

out=$(echo -e '1\n*\n3\n=' | ./calc) #乗
[ "${out}" = 3.0 ] || ng ${LINENO}

out=$(echo -e '3\n/\n1\n=' | ./calc) #除
[ "${out}" = 3.0 ] || ng ${LINENO}

out=$(echo -e '3\n@\n1\n=' | ./calc) #不適切な演算子ではエラーを出す
[ "${out}" = error ] || ng ${LINENO}

out=$(echo -e '3\n/\n0\n=' | ./calc) #0で割られた際にもエラーを出す
[ "${out}" = error ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo -e 'あ\n+\n1\n=' | ./calc) #１つ目の入力が数字以外
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo -e '3\n+\nあ\n=' | ./calc) #２つ目の入力が数字以外
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./calc) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res