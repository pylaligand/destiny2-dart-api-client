# Changes to the OpenAPI file

## List types

Some definitions end with `[]`, which aren't valid characters in Dart. They are
replaced with the term `List`.

In Atom:
```
Search   "([^"]+)\[\]"
Replace  "$1List"
```

## GetMembersOfGroup endpoint

Change `"in": "path",` to `"in": "query",`.

## Use direct types instead of a 1-element allOf.

The use of `allOf` gets in the way of generating proper types. Replace:
```
"type": "object",
"allOf": [
  {
    "$ref": "#/definitions/BungieMembershipType"
  }
]
```
with:
```
"$ref": "#/definitions/BungieMembershipType"
```

In Atom:
```
Search   "allOf": \[\r\n\s*{\r\n\s*"\$ref": ([^\r]+)\r\n\s*}\r\n\s*]
Replace  "$ref": $1
```

## Add more values to GroupsV2.Capabilities

Add `31` and `96`, to reflect that this field is not really an enum but a
bitflag.

## Add more values to Destiny.DestinyGameVersions.

Add `3`, `7`, and `15`, to reflect that this field is not really an enum but a
bitflag. Also add a description for them.
