Describe "Test for 03_picnic" {
    BeforeAll {
        $script:prg = ".\picnic.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Should handle one item" {
        &$Script:prg chips | Should -BeExactly 'You are bringing chips.'
    }

    It "Should handle two items" {
        &$Script:prg soda "french fries" | Should -BeExactly 'You are bringing soda and french fries.'
    }

    It "Should handle more than two items" {        
        &$Script:prg "potato chips" coleslaw cupcakes "French silk pie" | Should -BeExactly 'You are bringing potato chips, coleslaw, cupcakes, and French silk pie.'
    }

    It "Should handle two items sorted" {        
        &$Script:prg -Sorted soda candy | Should -BeExactly 'You are bringing candy and soda.'
    }

    It "Should handle more than two items sorted" {        
        &$Script:prg -Sorted bananas apples dates cherries | Should -BeExactly 'You are bringing apples, bananas, cherries, and dates.'
    }
}
