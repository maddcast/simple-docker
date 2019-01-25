<?php
echo date('d.m.Y H:i:s');
echo "<br>";
echo shell_exec('uptime');
echo "<br>";
echo shell_exec('uname -a');
?>