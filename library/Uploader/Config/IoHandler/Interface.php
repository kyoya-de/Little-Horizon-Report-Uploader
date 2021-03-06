<?php
/**
 * Interface for configuration IO-Handler.
 */
interface Uploader_Config_IoHandler_Interface
{
    /**
     * Class constructor
     *
     * @abstract
     *
     * @param array $handlerOptions
     *
     * @return Uploader_Config_IoHandler_Interface
     */
    public function __construct($handlerOptions = array());

    /**
     * Loads and returns the configuration.
     *
     * @abstract
     *
     * @param string $configFilename
     *
     * @return array
     */
    public function load($configFilename);

    /**
     * Saves the configuration.
     *
     * @abstract
     *
     * @param array $config
     *
     * @return void
     */
    public function save($config);
}
