from lxml import etree
import glob
import os
import shutil

# Namespace for TEI
ns = {'tei': 'http://www.tei-c.org/ns/1.0'}

# Adjust this to your corpus location
files = glob.glob('ParlaMint-GB Corpus/ParlaMint-GB.TEI/[0-9][0-9][0-9][0-9]/*.xml')

# Output directory
output_dir = 'Yemen_Debates'

# Create directory if it doesn't exist
os.makedirs(output_dir, exist_ok=True)

print(f"Scanning {len(files)} files...")

for file in files:
    tree = etree.parse(file)
    
    # Find heads that contain Yemen
    heads = tree.xpath('//tei:div[@type="debateSection"]/tei:head[contains(., "Yemen")]', namespaces=ns)
    
    if heads:
        print(f"\nFile: {file}")
        for head in heads:
            print(f"  Debate title: {''.join(head.itertext()).strip()}")
        
        # Copy file to Yemen_Debates directory
        shutil.copy(file, output_dir)
