<?php

include_once "../class/RestClient.php";

$response = post("iaas/" . $_GET['vm_name'] . "/reboot.json", $_POST);

header('location: ../view/home.php?vm_name=' . $_GET['vm_name'] . '');
?>