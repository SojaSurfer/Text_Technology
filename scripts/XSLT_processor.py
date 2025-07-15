import os
import glob
from pathlib import Path
from lxml import etree

# CONFIGURATION
input_dir = r'C:\Users\janal\OneDrive\Dokumente\Uni\M.A. Digital_Humanities\SS25\Text Technology\Projekt\Yemen_Debates'
output_dir = os.path.join(input_dir, 'output')
xslt_file = os.path.join(input_dir, 'XSLT_2.xsl')

list_person_doc = os.path.join(input_dir, 'ParlaMint-GB-listPerson.xml')
list_org_doc = os.path.join(input_dir, 'ParlaMint-GB-listOrg.xml')

# Ensure output directory exists
os.makedirs(output_dir, exist_ok=True)

# Set working directory so relative XSLT paths work
os.chdir(input_dir)

# Load XSLT
xslt_doc = etree.parse(xslt_file)
transform = etree.XSLT(xslt_doc)

# Process XML files
xml_files = glob.glob(os.path.join(input_dir, '*.xml'))
print(f"Found {len(xml_files)} XML files to process.")

for xml_path in xml_files:
    # Skip listPerson/listOrg themselves
    if os.path.basename(xml_path) in ['ParlaMint-GB-listPerson.xml', 'ParlaMint-GB-listOrg.xml']:
        continue

    try:
        xml_doc = etree.parse(xml_path)

        result = transform(
            xml_doc,
            listPersonDoc=etree.XSLT.strparam('ParlaMint-GB-listPerson.xml'),
            listOrgDoc=etree.XSLT.strparam('ParlaMint-GB-listOrg.xml')
        )

        base_name = os.path.basename(xml_path)
        output_path = os.path.join(output_dir, base_name.replace('.xml', '.out.xml'))

        with open(output_path, 'wb') as f:
            f.write(etree.tostring(result, pretty_print=True, encoding='UTF-8'))

        print(f"Processed: {base_name}")

    except Exception as e:
        print(f"Error processing {xml_path}: {e}")

