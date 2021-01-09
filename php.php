<?php
    $file = fopen("text.txt", "a+");
    $file_content = fread($file, filesize("text.txt"));
    $last_character = substr($file_content, -1);
    $command = "ls";

    if ($last_character == "o") $command = 'python3 python.py';

    fwrite($file, ' ');
    fclose($file);
    shell_exec($command);
?>
