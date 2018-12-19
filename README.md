# SQL-Tools
SQL Server export tools

Currently this simply exports a chosen view or table from the chosen SQL Server to a CSV file & strips out any CRLF to enable easier import into Excel.  

If the CRLF characters in your database table or view are important - this isn't the droid you're looking for.

There is a command line utility or a windows desktop app.  The command line utility will read settings from the same INI file as the windows desktop app, but will also take command line parameter overrides.

Planned expansion includes:

- support for exporting directly to XLSX files
- support for mulitple export jobs to a single XLSX workbook

!!Warning!!

The code isn't the nicest; it was originall developed as a quick and dirty solution to deal with a table containing several fields with many CRLF characters that Excel didn't like when importing the CSV. I haven't had time to clean up the code to any extent, so it is what it is.  

Written in Delphi, should compile to the latest v10.3 Rio.  Requires a bunch of commercial components.  I will re-write to remove these dependencies when time allows.

Stu - 19th Dec 2018
