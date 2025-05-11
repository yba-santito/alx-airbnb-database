**AirBnB Clone Database Schema**

The sql script in here defines the core database for the project

**What's in here**

- **\`**AirBnBClone.sql\` **:** contains all \`create table\` statements
- Entities: users, properties, booking, payments, reviews, messages

**How to operate**

1.  Connect to your MySQL database
2.  Run the \`AirBnBCLone.sql\`

```bash
psql -U youruser -d yourdb -f schema.sql

```

<table border="1" style="border-collapse: collapse; width: 100%;"><thead><tr><th scope="col" style="width: 38.2022%;">Part</th><th scope="col" style="width: 38.2022%;">Meaning</th></tr></thead><tbody><tr><td style="width: 38.2022%;">mysql</td><td style="width: 38.2022%;">The MySQL command line</td></tr><tr><td style="width: 38.2022%;">youruser</td><td style="width: 38.2022%;">your MySQL username</td></tr><tr><td style="width: 38.2022%;">-p</td><td style="width: 38.2022%;">password prompter</td></tr><tr><td style="width: 38.2022%;">yourdatabase</td><td style="width: 38.2022%;"><ul><li><p>the name of the database you created</p></li><li></li></ul></td></tr><tr><td style="width: 38.2022%;">schema.sql</td><td style="width: 38.2022%;">This tells&nbsp;<code spellcheck="false">mysql</code> to execute the SQL commands in the <code class="inline-code" spellcheck="false">schema.sql</code> file</td></tr></tbody></table>