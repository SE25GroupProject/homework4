BEGIN { FS = "," }

NR > 1 { count[$3]++ }

END {
    print "Passenger Counts Per Class"
    for (pclass in count) {
        print "Pclass " pclass ": " count[pclass]
    }
}