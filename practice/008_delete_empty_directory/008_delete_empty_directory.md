### If ./sample directory has below sub directories

```
$ tree sample/
sample/
├── 1_non-empty
│   ├── 1_non-empty
│   │   ├── 1_non-empty
│   │   │   ├── 1_empty
│   │   │   └── dummy.txt
│   │   └── dummy.txt
│   └── dummy.txt
├── 2_non-empty
│   ├── 2_non-empty
│   │   ├── 2_non-empty
│   │   │   ├── 2_non-empty
│   │   │   │   ├── 2_empty
│   │   │   │   └── dummy.txt
│   │   │   └── dummy.txt
│   │   └── dummy.txt
│   └── dummy.txt
├── 3_empty
├── 4_non-empty
│   ├── 4_non-empty
│   │   ├── 4_non-empty
│   │   │   ├── 4_non-empty
│   │   │   │   ├── 4_empty
│   │   │   │   └── dummy.txt
│   │   │   └── dummy.txt
│   │   └── dummy.txt
│   └── dummy.txt
└── 5_non-empty
    ├── 5_non-empty
    │   ├── 5_empty
    │   └── dummy.txt
    └── dummy.txt
```

### Execute this script(select n for only 1_empty)

```
$ ./008_delete_empty_directory.sh sample/
rm: remove directory 'sample/4_non-empty/4_non-empty/4_non-empty/4_non-empty/4_empty'? y
rm: remove directory 'sample/5_non-empty/5_non-empty/5_empty'? y
rm: remove directory 'sample/2_non-empty/2_non-empty/2_non-empty/2_non-empty/2_empty'? y
rm: remove directory 'sample/3_empty'? y
rm: remove directory 'sample/1_non-empty/1_non-empty/1_non-empty/1_empty'? n
```

### Result(Deleted directories except 1_empty)

```
$ tree sample/
sample/
├── 1_non-empty
│   ├── 1_non-empty
│   │   ├── 1_non-empty
│   │   │   ├── 1_empty
│   │   │   └── dummy.txt
│   │   └── dummy.txt
│   └── dummy.txt
├── 2_non-empty
│   ├── 2_non-empty
│   │   ├── 2_non-empty
│   │   │   ├── 2_non-empty
│   │   │   │   └── dummy.txt
│   │   │   └── dummy.txt
│   │   └── dummy.txt
│   └── dummy.txt
├── 4_non-empty
│   ├── 4_non-empty
│   │   ├── 4_non-empty
│   │   │   ├── 4_non-empty
│   │   │   │   └── dummy.txt
│   │   │   └── dummy.txt
│   │   └── dummy.txt
│   └── dummy.txt
└── 5_non-empty
    ├── 5_non-empty
    │   └── dummy.txt
    └── dummy.txt
```
