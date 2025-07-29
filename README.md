
# Bipartite Graph for Political Debates

![Python version](https://img.shields.io/badge/python-3.12%2B-blue)

A study project for extracting speaker data from British parliamentary debates on Yemen and represent them in a Neo4j database. All scripts are written for **Python 3.12**. Required dependencies are listed in the ``requirements.txt`` file.

## 1 Collect: Corpus & Data

For our project we used the [ParlaMint-GB corpus](https://www.clarin.si/repository/xmlui/handle/11356/1912 "ParlaMint-GB") which is a linguistically annotated corpus of British parliamentary speeches between 2015 and 2022. It has a TEI-XML format and consists of three different file types: debate files, a speaker metadata file and a party metadata file.

The ``data`` directory contains the extracted [XML](./data/xml/) files and corresponding [Cypher](./data/queries/) queries for each debate.

## 2 Prepare: XML

The ``yemen_debates.py`` script extracts all debate files from the corpus that contain discussions about Yemen.
The ``XSLT_processor.py`` script is used to apply an XSL transformation from ``XSLT.xsl`` to the Yemen debate files and transform them into structured XML files for further processing.

## 3 Access: Neo4j

The ``queries.py`` script creates Cypher query files based on the resulting XML files from [section 2](#2-prepare-xml). The ``database.py`` script creates the database entries by executing those query files.

Finally, the ``speaker2speaker_projection.cypher`` file contains a Cypher query for creating and returning a speaker-to-speaker projection of the bipartite graph. This is done by creating a new edge relation between speakers who participated in the same debate. Then only the speaker nodes with this CO_DEBATED_WITH relation are retrieved.
