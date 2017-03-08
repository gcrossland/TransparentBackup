# Prepares the previous state of the backup set, rooted in the current directory, for having the updated files copied over it
mkdir --parents "./Created Subdirectory"
mkdir --parents "./New Moved Subdirectory"
# Transfers copied files to temporary dirs
mkdir --parents "./.tb-tmp"
cp --no-dereference --preserve=all "./Another Unmoved and Unedited File.txt" "./.tb-tmp/Another Unmoved and Unedited File.txt"
cp --no-dereference --preserve=all "./Lying File.txt" "./.tb-tmp/Lying File.txt"
mv "./Moved and Unedited File.txt" "./.tb-tmp/Moved and Unedited File.txt"
mv "./Swapped File.txt" "./.tb-tmp/Swapped File.txt"
cp --no-dereference --preserve=all "./Unmoved and Unedited File.txt" "./.tb-tmp/Unmoved and Unedited File.txt"
mkdir --parents "./A Subdirectory/.tb-tmp"
mv "./A Subdirectory/Cross-Moved and Unedited File.txt" "./A Subdirectory/.tb-tmp/Cross-Moved and Unedited File.txt"
mv "./A Subdirectory/Moved and Unedited File.txt" "./A Subdirectory/.tb-tmp/Moved and Unedited File.txt"
mv "./A Subdirectory/Swapped File.txt" "./A Subdirectory/.tb-tmp/Swapped File.txt"
mkdir --parents "./Moved Subdirectory/.tb-tmp"
mv "./Moved Subdirectory/Moved and Unedited File.txt" "./Moved Subdirectory/.tb-tmp/Moved and Unedited File.txt"
# Transfers copied files to final destination
mv "./.tb-tmp/Another Unmoved and Unedited File.txt" "./Copied Another Unmoved and Unedited File.txt"
mv "./.tb-tmp/Lying File.txt" "./Created Subdirectory/New Moved Lying File.txt"
mv "./.tb-tmp/Moved and Unedited File.txt" "./New Moved and Unedited File.txt"
mv "./.tb-tmp/Swapped File.txt" "./A Subdirectory/Swapped File.txt"
cp --no-dereference --preserve=all "./.tb-tmp/Unmoved and Unedited File.txt" "./Copied Unmoved and Unedited File.txt"
cp --no-dereference --preserve=all "./.tb-tmp/Unmoved and Unedited File.txt" "./A Subdirectory/Copied Unmoved & Unedited File.txt"
mv "./.tb-tmp/Unmoved and Unedited File.txt" "./New Moved Subdirectory/Cross-Copied Unmoved & Unedited File.txt"
cp --no-dereference --preserve=all "./A Subdirectory/.tb-tmp/Cross-Moved and Unedited File.txt" "./Cross-Moved and Unedited File.txt"
mv "./A Subdirectory/.tb-tmp/Cross-Moved and Unedited File.txt" "./New Moved Subdirectory/Double Cross-Moved and Unedited File.txt"
mv "./A Subdirectory/.tb-tmp/Moved and Unedited File.txt" "./A Subdirectory/New Moved and Unedited File.txt"
mv "./A Subdirectory/.tb-tmp/Swapped File.txt" "./Swapped File.txt"
mv "./Moved Subdirectory/.tb-tmp/Moved and Unedited File.txt" "./New Moved Subdirectory/Moved and Unedited File.txt"
# Clears away deleted objects and temporary dirs
rm -f "./Deleted File.txt"
rm -f "./Moved and Edited File.txt"
rm -f "./A Subdirectory/Cross-Moved and Edited File.txt"
rm -f "./A Subdirectory/Deleted File.txt"
rm -f "./A Subdirectory/Moved Lying File.txt"
rm -f "./A Subdirectory/Moved and Edited File.txt"
rmdir "./A Subdirectory/.tb-tmp"
rm -f "./Deleted Subdirectory/Deleted File.txt"
rmdir "./Deleted Subdirectory"
rm -f "./Moved Subdirectory/Deleted File.txt"
rm -f "./Moved Subdirectory/Moved and Edited File.txt"
rmdir "./Moved Subdirectory/.tb-tmp"
rmdir "./Moved Subdirectory"
rmdir "./.tb-tmp"
