DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `ckey` varchar(32) NOT NULL,
  `byond_key` varchar(32) DEFAULT NULL,
  `firstseen` datetime NOT NULL,
  `firstseen_round_id` int(11) unsigned NULL,
  `lastseen` datetime NOT NULL,
  `lastseen_round_id` int(11) unsigned NULL,
  `ip` int(10) unsigned NOT NULL,
  `computerid` varchar(32) NOT NULL,
  `lastadminrank` varchar(32) NOT NULL DEFAULT 'Player',
  `accountjoindate` DATE DEFAULT NULL,
  `flags` smallint(5) unsigned DEFAULT '0' NOT NULL,
    `antag_tokens` tinyint(4) unsigned DEFAULT '0',
  `metacoins` int(10) unsigned NOT NULL DEFAULT '0',
  `patreon_key` VARCHAR(32) NOT NULL DEFAULT 'None',
  `patreon_rank` VARCHAR(32) NOT NULL DEFAULT 'None',
  PRIMARY KEY (`ckey`),
  KEY `idx_player_cid_ckey` (`computerid`,`ckey`),
  KEY `idx_player_ip_ckey` (`ip`,`ckey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;