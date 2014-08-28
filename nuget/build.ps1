$buildDir = ".\build"
$coreDir = $buildDir + "\Xamarin.Forms.Platform.WinRT.0.0.1-alpha"
$coreOutputDir = $coreDir + "\lib\netcore45"
if (test-path $coreDir) { ri -r -fo $coreDir }
mkdir $coreOutputDir | out-null
copy ..\Xamarin.Forms\Xamarin.Forms.Platform.WinRT\bin\x86\Release\Xamarin.Forms.Platform.WP8.dll $coreOutputDir
..\.nuget\NuGet.exe pack .\Xamarin.Forms.Platform.WinRT.nuspec -basepath $coreDir -o $coreDir