# Get the absolute path of the folder where the script is located
$scriptDir = $PSScriptRoot
$filePath = Join-Path -Path $scriptDir -ChildPath "text_ja.csv"

# Initialize line number counter
$lineNumber = 0

# Read the file line by line
Get-Content -Path $filePath | ForEach-Object {
    $lineNumber++
    $lineContent = $_
    $commaCount = ($lineContent -split ",").Count - 1

    if ($commaCount -lt 2 -or $commaCount -gt 2) {
        Write-Output "Line Number: $lineNumber"
        Write-Output $lineContent
        Write-Output ""  # Print a blank line for separation
    }
}
