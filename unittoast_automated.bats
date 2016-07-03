#!/usr/bin/env bats
  
    . .minutilsrc

@test "check that we can open existing / create a new file with editor" {
    skip "this check"    
    run rm -fr "$toastfile" 
    run npp "$toastfile"
    [ "$status" = 0 ]

}

@test "check that the test file exists on disk" {
    skip "this check"    
    run stat "$toastfile"
    [ "$status" = 0 ]

}


@test "check whether directory for this day is being created" {
#   skip "this check"
    date=$(date +%Y.%m.%d)
    run rmdir $date
    run cdfcd $date 
    [ "$status" = 0 ]
}   

@test "check whether directory for this day exists" {
#   skip "this check"
    date=$(date +%Y.%m.%d)
    run stat $date
    [ "$status" = 0 ]
}


@test "check whether work note for this day is being created" {
#   skip "this check"
    date=$(date +%Y.%m.%d)
    wn=worknote.$date.txt
    run rm -f $wn
    run cwfcd $wn 
    [ "$status" = 0 ] 
}   




@test "check output of 'create d' output" {
    skip "dummy unit test"
    run create d
    [ "$output" = "creating directory" ]
}

@test "check output of 'create n' output" {
    skip "dummy unit test"
    run create n
    [ "$output" = "creating worknote" ]
}   

@test "check output of 'create f' output" {
    skip "dummy unit test"
    run create f
    [ "$output" = "creating file" ]
}   

