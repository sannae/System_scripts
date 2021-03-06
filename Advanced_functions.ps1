Function Now-Advanced {
    
    # Default function parameters
    [CmdletBinding()]

    # Additional parameters
    Param(
        # Mandatory, Piped from Property Name, HelpMessage for manual troubleshooting
        [Parameter(
            Mandatory=$True,
            ValueFromPipelineByPropertyName=$True,
            HelpMessage="Enter the first two letters of your last name and your 4-digit employee number")]
        # Validate parameter: input must be at least 2 letters and 4 numbers
        [ValidatePattern("[a-z][a-z][0-9][0-9][0-9][0-9]")]
        $EmployeeID
        )

    # Process in the pipeline: in a CSV file, this won't require the ForEach loop
    Process{
        # Example process
        Write-Host $EmployeeID
    }
}

# Example on CSV file containing the field EmployeeID:
#Import-CSV "FILEPATH.csv" | Now-Advanced
