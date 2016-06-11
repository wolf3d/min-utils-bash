#!/usr/bin/env bats
  
    . .minutilsrc

@test "Check that we can open existing / create a new file with editor" {
    
    run rm -fr "$toastfile" 
    run npp "$toastfile"
    [ "$status" = 0 ]

}

@test "Check that the test file exists on disk" {
    
    run stat "$toastfile"
    [ "$status" = 0 ]

}
