<?php

//session_start();

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

include_once "RestClient.php";

function getConfigSaas($params) {
    $response = post("saas/config.json", $params);
    $oResponse = json_decode($response);
    $aReturnSaasConfig = array();
    if ($oResponse != NULL) {
        if (true === (bool) $oResponse->screquest->successful) {
            if (isset($oResponse->screquest->return))
                $aReturnSaasConfig = $oResponse->screquest->return;
        }
    }
    if (isset($aReturnSaasConfig))
        return $aReturnSaasConfig;
}

?>
