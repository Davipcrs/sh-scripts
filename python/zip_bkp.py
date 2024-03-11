import shutil
import sys


def zip_dir(source: str, output: str):
    """
    source == directory to compress    

    output == location of the compressed dir    

    example:  
    source = "E:\\Icons"  
    output = "E:\\test"  

    result:
    icons directory compressed and the zipped output file is located:
    "E:\\test.zip"

    """
    shutil.make_archive(output, "zip", source)


if __name__ == "__main__":
    """Always pass the argv as a String!"""
    if (sys.argv[1] != None and sys.argv[2] != None and sys.argv[3] == None):
        zip_dir(source=sys.argv[1], output=sys.argv[2])
    print('Check the arguments, if you pass a path with spaces put in a "String Like" format')
