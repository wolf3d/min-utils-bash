#!/usr/bin/env bats
  
    . .minutilsrc

@test "check that we can open existing / create a new file with editor" {
    
    run rm -fr "$toastfile" 
    run npp "$toastfile"
    [ "$status" = 0 ]

}

@test "check that the test file exists on disk" {
    
    run stat "$toastfile"
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

