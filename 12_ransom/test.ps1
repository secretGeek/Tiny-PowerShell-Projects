Describe "Test for 12_ransom" {
    BeforeAll {
        $Script:prg = ".\ransom.ps1"
        $Script:fox = '../inputFiles/fox.txt'
        $Script:now = '../inputFiles/now.txt'
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test text1" {
        $inputText = 'The quick brown fox jumps over the lazy dog.'
        $tests = $(
            , ('1', 'tHE qUick BrOwn fox jumps OvEr tHE LazY DOG.')
            , ('3', 'the QUICK BROwn FOX JuMps oVer The lAZy doG.')
        )
    
        foreach ($test in $tests) {
            $seed, $expected = $test

            $actual = &$Script:prg $inputText $seed

            $actual | Should -BeExactly $expected
        }
    }

    It "Test text2" {
        $inputText = 'Now is the time for all good men to come to the aid of the party.'
        $tests = $(
            , ('2', 'NoW Is tHe tiMe For AlL GOoD meN to CoME TO thE aiD OF tHe PArtY.')
            , ('5', 'Now iS tHe Time FOR alL gooD Men TO COme To The aId OF tHE pArty.')
        )
    
        foreach ($test in $tests) {
            $seed, $expected = $test

            $actual = &$Script:prg $inputText $seed

            $actual | Should -BeExactly $expected
        }
    }

    It "Test file1" {
        $tests = $(
            , ('1', 'tHE qUick BrOwn fox jumps OvEr tHE LazY DOG.')
            , ('3', 'the QUICK BROwn FOX JuMps oVer The lAZy doG.')
        )
    
        foreach ($test in $tests) {
            $seed, $expected = $test

            $actual = &$Script:prg $Script:fox $seed

            $actual | Should -BeExactly $expected
        }
    }

    It "Test file2" {
        $tests = $(
            , ('2', 'NoW Is tHe tiMe For AlL GOoD meN to CoME TO thE aiD OF tHe PArtY.')
            , ('5', 'Now iS tHe Time FOR alL gooD Men TO COme To The aId OF tHE pArty.')
        )
    
        foreach ($test in $tests) {
            $seed, $expected = $test

            $actual = &$Script:prg $Script:now $seed

            $actual | Should -BeExactly $expected
        }
    }    
}