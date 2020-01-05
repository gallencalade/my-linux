func_chk_rm() {
    if [ -e ${1} ] || [ -L ${1} ]
    then
        rm -rf ${1}
    fi
}

func_chk_mkdir() {
    if [ ! -d ${1} ]
    then
        mkdir -p ${1}
    fi
}

func_chk() {
    if [ -e ${1} ]
    then
        echo "exist"
    fi
    if [ -f ${1} ]
    then
        echo "file"
    fi
    if [ -d ${1} ]
    then
        echo "dir"
    fi
    if [ -L ${1} ]
    then
        echo "sym"
    fi
    if [ -h ${1} ]
    then
        echo "ln"
    fi
}
