Get-ChildItem -Recurse -i *.csproj | %{
  $new = Get-Content $_ |   %{$_ -replace "<TargetFrameworkVersion>v4.0</TargetFrameworkVersion>", "<TargetFrameworkVersion>v3.5</TargetFrameworkVersion>"}
  Set-Content $_ $new
}
  