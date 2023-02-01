# Get the path of the folder to change the line endings for
$folderPath = Read-Host "Enter the path of the folder to change line endings for"

# Get all text files in the folder
$files = Get-ChildItem -Path $folderPath -Include *.txt -Recurse

# Loop through each file and change its line endings to LF
foreach ($file in $files) {
    # Read the content of the file
    $content = Get-Content $file.FullName

    # Replace the line endings with LF
    $content = $content -replace "`r`n", "`n"

    # Save the content back to the file
    $content | Out-File -FilePath $file.FullName -Encoding UTF8
}