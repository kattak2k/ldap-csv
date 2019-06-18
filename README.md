# ldap-csv
command-line interface tool for reading/writing entries in an LDAP directory to/from CSV files.


## program process

![image](https://user-images.githubusercontent.com/19718351/59657451-bcb63a80-916e-11e9-9522-9b6235b8bc5f.png)

### add ldap entry
```
ruby lib/ldap_csv_cli.rb add_ldap_entry "ou=people,dc=example,dc=org"
```

### remove ldap_entry
```
ruby lib/ldap_csv_cli.rb remove_ldap_entry "ou=people,dc=example,dc=org"
```

### list records
```
ruby lib/ldap_csv_cli.rb read_ldap_entry
```


