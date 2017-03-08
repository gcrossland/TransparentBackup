# Copies files to be backed up to the current directory
mkdir --parents "."
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./Created File.txt" "./Created File.txt"
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./Cross-Moved and Edited File.txt" "./Cross-Moved and Edited File.txt"
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./New Moved and Edited File.txt" "./New Moved and Edited File.txt"
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./Unmoved and Edited File.txt" "./Unmoved and Edited File.txt"
mkdir --parents "./A Subdirectory"
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./A Subdirectory/Created File.txt" "./A Subdirectory/Created File.txt"
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./A Subdirectory/New Moved and Edited File.txt" "./A Subdirectory/New Moved and Edited File.txt"
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./A Subdirectory/Unmoved and Edited File.txt" "./A Subdirectory/Unmoved and Edited File.txt"
mkdir --parents "./Created Subdirectory"
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./Created Subdirectory/Created File.txt" "./Created Subdirectory/Created File.txt"
mkdir --parents "./New Moved Subdirectory"
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./New Moved Subdirectory/Double Cross-Moved and Edited File.txt" "./New Moved Subdirectory/Double Cross-Moved and Edited File.txt"
cp --no-dereference --preserve=all "/tmp/TransparentBackup/tests.in/00/src1/./New Moved Subdirectory/Moved and Edited File.txt" "./New Moved Subdirectory/Moved and Edited File.txt"
# Diff set file count: 10
# Diff set total bytes: 981
