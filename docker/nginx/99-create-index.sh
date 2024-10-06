#!/bin/sh
if [ "$VERBOSEPOD" = "true" ]; then
cat >/usr/share/nginx/html/index.html<<EOF
<!DOCTYPE html>
<html>
<style>
table, th, td {
  border:1px solid black;
}
</style>
<body>

<h2>My Pod</h2>

<table style="width:50%">
  <tr>
    <th>Podname</th>
    <td>$(hostname)</td>
  </tr>
  <tr>
    <th>IP</th>
    <td>$(hostname -i)</td>
  </tr>
  <tr>
    <th>Imagetag</th>
    <td>$BASE_TAG</td>
  </tr>
  <tr>
    <th>Starttime</th>
    <td>$(date)</td>
  </tr>
</table>

</body>
</html>
EOF
else
cat >/usr/share/nginx/html/index.html<<EOF
podname: $(hostname)
EOF
fi
