Describe "tests for crowsnest.ps1" {
    BeforeAll {

        Set-StrictMode -Version latest

        $script:prg = '.\crowsnest.ps1'
        $script:consonantWords = 'brigantine', 'clipper', 'dreadnought', 'frigate', 'galleon', 'haddock',
        'junk', 'ketch', 'longboat', 'mullet', 'narwhal', 'porpoise', 'quay',
        'regatta', 'submarine', 'tanker', 'vessel', 'whale', 'xebec', 'yatch',
        'zebrafish'
        
        $script:vowelWords = 'aviso', 'eel', 'iceberg', 'octopus', 'upbound'
        $script:template = 'Ahoy, Captain, {0} {1} off the larboard bow!'        
    }

        
    It "test crowsnest.ps1 exits" {
        Test-Path $script:prg | Should -Be $true
    }    

    It "test consonant" {
        foreach ($word in $script:consonantWords) {
            $actual = &$script:prg $word
            $expected = $script:template -f 'a', $word
            
            $actual | Should -BeExactly $expected
        }
    }

    It "test consonant uppercase" {
        foreach ($word in $script:consonantWords) {
            $word = (Get-Culture).textinfo.totitlecase($word)
            $actual = &$script:prg $word
            $expected = $script:template -f 'a', $word
            
            $actual | Should -BeExactly $expected
        }
    }

    It "test vowel" {
        foreach ($word in $script:vowelWords) {
            $actual = &$script:prg $word
            $expected = $script:template -f 'an', $word
            
            $actual | Should -BeExactly $expected
        }
    }
 
    It "test vowel uppercase" {
        foreach ($word in $script:vowelWords) {
            $word = (Get-Culture).textinfo.totitlecase($word)
            $actual = &$script:prg $word
            $expected = $script:template -f 'an', $word
            
            $actual | Should -BeExactly $expected
        }
    }
}