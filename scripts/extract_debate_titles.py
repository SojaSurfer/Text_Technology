import sys
import xml.etree.ElementTree as ET

# Replace 'your_file.xml' with your actual XML filename
path = "ParlaMint-GB/ParlaMint-GB.TEI/2019/ParlaMint-GB_2019-01-09-commons.xml"
tree = ET.parse(path)
root = tree.getroot()

print(root)

print(root.findall(".//[@type='debateSection']"))

# Find all debateSection elements and extract their head text
for section in root.findall(".//debateSection"):
    head = section.find("head")
    if head is not None and head.text:
        print(head.text.strip())
