#!/bin/bash

FILE=variant_summary.txt.gz
URL=ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/tab_delimited/variant_summary.txt.gz.md5
URLdown=
IFS=' '
bestand_aanwezig=1

checkFile() {
    if test -f "$FILE"; then
        echo "$FILE bestaat"
        return 0
    else
        "$FILE ontbreekt"
        return 1
    fi
}

checkMD5Local() {
    md=$(md5 -q $FILE)
}

checkMD5Web() {
    md1=$( curl -s $URL )
    read -ra mdWeb <<< "$md1"
    mdWebRet=${mdWeb}
}

checkBoth() {
    if [ $md == $mdWebRet ]; then
        return 0
    else
        echo "Bestand downloaden"
        downloadFile
        return 1
    fi
}

downloadFile() {
    wget -q -O variant_summary.txt.gz "ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/tab_delimited/variant_summary.txt.gz"
    unzip
}

unzip() {
    gzip -k -d -f variant_summary.txt.gz
}

begin() {
    while [ ! bestand_aanwezig == 0 ]; do
        if checkFile $0; then
            checkMD5Local
            echo $mdLocalRet

            checkMD5Web
            echo $mdWebRet

            if checkBoth $0; then
                bestand_aanwezig=1
                break
            fi
        else
            echo "bestand downloaden"
            downloadFile
        fi
    done

    echo "run java script....beep boop....script goes brrrr"

}

begin