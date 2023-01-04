#! bash

function env() {
    LINE=`cat $PWD/.env | grep "^${1}="`
    VALUE=${LINE#*=}
    CMD="export ${2:-${1}}=${VALUE}"
    echo ${CMD}
    eval ${CMD}
}

env "DB_PORT" "MYSQL_PORT"
