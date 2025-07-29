"""The script applies an XSLT stylesheet to a collection of TEI-encoded XML files containing parliamentary debates. It processes all files located
in the '2015-2022' directory, writes transformed results into the 'output' directory, and omits any document that lacks speaker entries.
"""

from pathlib import Path

from lxml import etree

## CONFIGURATION ##

# Absolute path of the directory.
SCRIPT_DIR = Path(__file__).resolve().parent

# Folder that contains the input TEI XML files.
INPUT_DIR = SCRIPT_DIR / "2015-2022"

# Output destination.
OUTPUT_DIR = SCRIPT_DIR / "output"

# Support files for transformation:
XSLT_FILE   = SCRIPT_DIR / "XSLT.xsl"
LIST_PERSON = SCRIPT_DIR / "ParlaMint-GB-listPerson.xml"
LIST_ORG    = SCRIPT_DIR / "ParlaMint-GB-listOrg.xml"

# File pattern for input XMLs (non-recursive).
INPUT_GLOB = "*.xml"


## HELPER FUNCTIONS ##

def ensure_environment() -> None:
    """Create directories and check if all required files exist."""

    # Creates INPUT_DIR and OUTPUT_DIR if they are missing.
    INPUT_DIR.mkdir(exist_ok=True)
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    # Check for the three essential files.
    for p in (XSLT_FILE, LIST_PERSON, LIST_ORG):
        if not p.exists():
            msg = f"Missing required file: {p}"
            raise FileNotFoundError(msg)


def load_transform(xslt_path:Path) -> etree.XSLT:
    """Parse and compile the XSLT stylesheet into a reusable transformer."""

    xslt_doc = etree.parse(str(xslt_path.resolve()))
    return etree.XSLT(xslt_doc)


def has_speaker_element(result_tree:etree._ElementTree) -> bool:
    """Check if the transformation result contains at least one <speaker> element."""

    return result_tree.getroot().find(".//speaker") is not None


def process_one_file(xml_path:Path, transform:etree.XSLT) -> bool:
    """Process a single XML file using the provided XSLT transformation."""
    
    # Parse source XML
    xml_doc = etree.parse(str(xml_path))

    # Apply transformation, passing absolute URIs for document() references
    result_tree = transform(
        xml_doc,
        listPersonDoc=etree.XSLT.strparam(LIST_PERSON.resolve().as_uri()),
        listOrgDoc=etree.XSLT.strparam(LIST_ORG.resolve().as_uri()),
    )

    # Skip files without relevant debate content
    if not has_speaker_element(result_tree):
        return False

    # Builds output filename and writes indented XML
    out_path = OUTPUT_DIR / f"{xml_path.stem}.out.xml"
    out_path.write_bytes(
        etree.tostring(result_tree, pretty_print=True, encoding="UTF-8")
    )
    return True


## MAIN PROGRAM FLOW ##

if __name__ == "__main__":
    # Prepare environment and validate files
    ensure_environment()

    # Compile the stylesheet
    transform = load_transform(XSLT_FILE)

    # Finds input files; adjust for recursive search if required
    xml_files = list(INPUT_DIR.glob(INPUT_GLOB))
    print(f"Found {len(xml_files)} XML files in {INPUT_DIR}")

    saved_count = 0
    skipped_count = 0

    # Transform loop
    for xml_path in xml_files:
        try:
            saved = process_one_file(xml_path, transform)
            if saved:
                print(f"Processed & saved: {xml_path.name}")
                saved_count += 1
            else:
                print(f"Skipped (no <speaker>): {xml_path.name}")
                skipped_count += 1
        except Exception as exc:
            # Don't crash the whole batch—report and continue.
            print(f"Error processing {xml_path.name}: {exc}")

    # Final summary
    print("\nSummary")
    print("-------")
    print(f"Saved:   {saved_count}")
    print(f"Skipped: {skipped_count} (no <speaker>)")

