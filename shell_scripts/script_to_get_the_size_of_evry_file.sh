# this script is used to get the size of of every files in a directory provided as argument

function duone()
{
du -k --max-depth 1 $1 | sort -n
}
