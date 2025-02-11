BEGIN { FS = "," } 

NR > 1 { count[$3]++ }
$2 == 1 { survival[$3]++ }

END {
    print "Survival Rate Per Class"
    for (class in count) {
        print "class " class ": " survival[class] " / " count[class] " : " survival[class] / count[class] * 100 "%"
    }
}