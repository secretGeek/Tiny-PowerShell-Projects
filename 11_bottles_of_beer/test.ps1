Describe "Test for 11_bottles_of_beer" {
    BeforeAll {
        $Script:prg = ".\bottles.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test one" {

        $expected = @"
1 bottle of beer on the wall,
1 bottle of beer,
Take one down, pass it around,
No more bottles of beer on the wall!

"@        
        $actual = &$Script:prg -num 1 
        $actual | Should -Be $expected        
    }

    It "Test two" {

        $expected = '2 bottles of beer on the wall,
2 bottles of beer,
Take one down, pass it around,
1 bottle of beer on the wall!
1 bottle of beer on the wall,
1 bottle of beer,
Take one down, pass it around,
No more bottles of beer on the wall!
'
        $actual = &$Script:prg -num 2

        $actual | Should -BeExactly $expected
    }
}