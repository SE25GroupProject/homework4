BEGIN { FS = ","} {
    sum += $7
}

END {
    print "Average Age: " sum / (NR - 1)
}