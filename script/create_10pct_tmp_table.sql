-- CREATE FULL TMP TABLE

-- 1- ACTIF_DATA_ET_DATE_ACTIVATION
DROP TABLE IF EXISTS OIC.TT_ACTIF_DATA_ET_DATE_ACTIVATION_10PCT;

CREATE TABLE OIC.TT_ACTIF_DATA_ET_DATE_ACTIVATION (
  DATE_SOUSCRIPTIONMSISDN STRING,
  TYPE_SOUSCRIPTION STRING,
  NOMBRE_SOUSCRIPTION STRING,
  MONTANT_SOUSCRIPTION STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



-- 2- BUNDLE
DROP TABLE IF EXISTS OIC.TT_BUNDLE;

CREATE TABLE OIC.TT_BUNDLE (
  DATE_SOUSCRIPTIONMSISDN STRING,
  TYPE_SOUSCRIPTION STRING,
  NOMBRE_SOUSCRIPTION STRING,
  MONTANT_SOUSCRIPTION STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


-- 3- CDR	
-- 3-1- traffic_customer_cell
DROP TABLE IF EXISTS OIC.TT_TRAFFIC_CUSTOMER_CELL;

CREATE TABLE OIC.TT_TRAFFIC_CUSTOMER_CELL (
  VAR1 STRING,
  VAR2 STRING,
  VAR3 STRING,
  VAR4 STRING,
  VAR5 STRING,
  VAR6 STRING,
  VAR7 STRING,
  VAR8 STRING,
  VAR9 STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t' 
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

-- 3-2- traffic_customer
DROP TABLE IF EXISTS OIC.TT_TRAFFIC_CUSTOMER;

CREATE TABLE OIC.TT_TRAFFIC_CUSTOMER (
  VAR1 STRING,
  VAR2 STRING,
  VAR3 STRING,
  VAR4 STRING,
  VAR5 STRING,
  VAR6 STRING,
  VAR7 STRING,
  VAR8 STRING,
  VAR9 STRING,
  VAR10 STRING,
  VAR11 STRING,
  VAR12 STRING,
  VAR13 STRING,
  VAR14 STRING,
  VAR15 STRING,
  VAR16 STRING,
  VAR17 STRING,
  VAR18 STRING,
  VAR19 STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


-- 4- DONNEES_HISTO_MENSUELLES
DROP TABLE IF EXISTS OIC.TT_DONNEES_HISTO_MENSUELLES;

CREATE TABLE OIC.TT_DONNEES_HISTO_MENSUELLES (
  MONTH_ID STRING,
  MSISDN STRING,
  GEOLOCALITE STRING,
  COMMUNE STRING,
  DEPARTEMENT STRING,
  REGION STRING,
  REGION_CAT STRING,
  DISTRIBUTEUR STRING,
  DATE_ACTIVATION STRING,
  STATUT_OM STRING,
  STATUT_MSIM STRING,
  STATUT_MOOV STRING,
  STATUT_MTN STRING,
  SEGMENT_VALEUR STRING,
  PLAN_TARIFAIRE STRING,
  MONTANT_RECHARGE STRING,
  REV_TOT_CONSOMME STRING,
  REV_SORTANT STRING,
  REV_ENTRANT STRING,
  REV_VOIX STRING,
  REV_SMS STRING,
  REV_DATA STRING,
  REV_PASS STRING,
  REV_SVA STRING,
  VOL_TOT_VOIX_SORTANT STRING,
  NB_TOT_VOIX_SORTANT STRING,
  NB_TOT_SMS_SORTANT STRING,
  NB_VOIX_OFFNET_SORTANT STRING,
  NB_VOIX_ONNET_SORTANT STRING,
  NB_VOIX_INTER STRING,
  NB_VOIX_ROAM_SORTANT STRING,
  NB_VOIX_ROAM_ENTRANT STRING,
  NB_SMS_OFFNET_SORTANT STRING,
  NB_SMS_INTER_SORTANT STRING,
  NB_SMS_ONET_SORTANT STRING,
  NB_SMS_ROAM_SORTANT STRING,
  VOL_TOT_VOIX_OFFNET_SORTANT STRING,
  VOL_TOT_VOIX_ONNET_SORTANT STRING,
  VOL_TOT_VOIX_INTER_SORTANT STRING,
  VOL_VOIX_ROAM_SORTANT STRING,
  VOL_VOIX_ROAM_ENTRANT STRING,
  VOL_DATA_ROAM STRING,
  VOL_CONSOMME STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


-- 5- ENTRANT	
DROP TABLE IF EXISTS OIC.TT_ENTRANT;

CREATE TABLE OIC.TT_ENTRANT (
  DATE_ID STRING,
  MSISDN STRING,
  MSISDN_APPELANT STRING,
  MSISDN_APPELE STRING,
  DESTINATION STRING,
  TYPE_EVENT STRING,
  SENS_EVENT STRING,
  OPERATEUR_APPELE STRING,
  OPERATEUR_APPELANT STRING,
  TYPE_CELLULE STRING,
  CI STRING,
  DUREE_EVENT STRING,
  MONTANT_VALORISE STRING,
  MONTANT_BUNDLE STRING,
  MONTANT_BONUS STRING,
  VOL_DATA_CONSOMME STRING,
  VOL_DATA_DOWN STRING,
  VOL_DATA_UP STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


-- 6- INFO_TERMINAUX	
DROP TABLE IF EXISTS OIC.TT_INFO_TERMINAUX;

CREATE TABLE OIC.TT_INFO_TERMINAUX (
  DATE_SOUSCRIPTIONMSISDN STRING,
  TYPE_SOUSCRIPTION STRING,
  NOMBRE_SOUSCRIPTION STRING,
  MONTANT_SOUSCRIPTION STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


-- 7- MSIM	
DROP TABLE IF EXISTS OIC.TT_MSIM;

CREATE TABLE OIC.TT_MSIM (
  DATE_ID STRING,
  MSISDN STRING,
  CODE_TAC STRING,
  MODELE STRING,
  MARQUE STRING,
  DEVICE_TYPE STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


-- 8- RECHARGE	
DROP TABLE IF EXISTS OIC.TT_RECHARGE;

CREATE TABLE OIC.TT_RECHARGE (
  DATE_RECHARGEMENT STRING,
  MSISDN STRING,
  TYPE_RECHARGEMENT STRING,
  MONTANT_RECHARGEMNT STRING,
  NOMBRE_RECHARGEMNT STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


-- 9- REFERENTIEL_TERMINAUX
DROP TABLE IF EXISTS OIC.TT_REFERENTIEL_TERMINAUX;

CREATE TABLE OIC.TT_REFERENTIEL_TERMINAUX (
  TAC	 STRING,
  PRODUCT_ID STRING,
  SUPPLIER_NAME	 STRING,
  MODEL_NAME STRING,
  MODEL_NAME_OTHER STRING,
  DEVICE_TYPE STRING,
  SMARTPHONE_FLAG STRING,
  PLATFORM STRING,
  ADRESSBOOK_INTEGR STRING,
  A_GPS STRING,
  BLUETOOTH_FLAG STRING,
  BLUETOOTH STRING,
  BROWSER STRING,
  BROWSING_LEVEL STRING,
  CALCULATED_DP STRING,
  CALL_HARD_KEY_FLAG STRING,
  CAMERA_FLAG STRING,
  CAMERA_FLASH_FLAG STRING,
  CAMERA_RESOLUTION STRING,
  CAMERA STRING,
  CAMERA_ZOOM_FLAG STRING,
  CATEGORY STRING,
  CHARGE_USB_FLAG STRING,
  COLOUR_SCREEN_FLAG STRING,
  COMPASS_FLAG STRING,
  CONNECT_DEVICE STRING,
  CONTACT_CONTENT STRING,
  DEST_POP_UP_FLAG STRING,
  DIMENSIONS STRING,
  DOWNLOADABLE STRING,
  DP_MARKETING STRING,
  DP_TEK STRING,
  DRM_FOR_MUSIC_FLAG STRING,
  DRM_FOR_VIDEO STRING,
  DVBH_FLAG STRING,
  DVP_CONFIRMATION STRING,
  EDGE_FLAG STRING,
  EDGE STRING,
  EMAIL_WIZ STRING,
  FM_RADIO_FLAG STRING,
  FORM_FACTOR STRING,
  GPRS_FLAG STRING,
  GPRS_MULTISLOT_CLASS STRING,
  GSM_BAND STRING,
  GSM_BAND_FLAG STRING,
  HANDSFREE_SPEAKER_FLAG STRING,
  HANG_UP_HARD_KEY_FLAG STRING,
  HDVOICE_FLAG STRING,
  HEADSET STRING,
  HOME_SCREEN_FLAG STRING,
  HOMESCREEN_PAGE_NO STRING,
  HOMESCREEN_VERSION STRING,
  HSDPA_CATEGORY STRING,
  HSDPA_FLAG STRING,
  HSUPA_CATEGORY STRING,
  HSUPA_FLAG STRING,
  HTML_FLAG STRING,
  HTML_VERSION STRING,
  INSTANT_MSG_CLIENT STRING,
  IS_BUNDLE STRING,
  JAVA_VERSION STRING,
  JOYN STRING,
  JSR	KEYBOARD STRING,
  LAUNCH_DATE_COME STRING,
  LENGHT_MM STRING,
  LOCAL_SYNCHRONISATION STRING,
  LTE STRING,
  MANUFACTURER_BUNDLE STRING,
  MEMORY_TYPE_EXT	MMS_FLAG STRING,
  MODEL_NACODE_BUNDLE STRING,
  MODEM	MOUSE_FLAG STRING,
  MULTITOUCH_FLAG STRING,
  MUSIC_PLAYER_FLAG STRING,
  NB_CPU_FOR_MM	NFC_FLAG STRING,
  NFC_TAG_READING_WRITING STRING,
  NUMBER_OF_SIGNATURE_APPS STRING,
  OPEN_OS_FLAG STRING,
  ORANGE_APP_SHOP STRING,
  ORANGE_GAMES STRING,
  ORANGE_HARD_KEY_FLAG STRING,
  ORANGE_MAPS STRING,
  ORANGE_MUSIC_STORE_FLAG STRING,
  ORANGE_TVPLAYER STRING,
  ORANGE_WIDGETS STRING,
  OS STRING,
  OS_VERSION STRING,
  OTHER_GAMING_SOLUTION STRING,
  OTHER_OS STRING,
  PUSH_MAIL_FLAG STRING,
  RCS	REPORTING_NAME STRING,
  RING_TONES STRING,
  SCREEN_SIZE_INCH STRING,
  SCREEN_SIZE_PIXELS STRING,
  SCREEN_TYPE STRING,
  SEGMENTATION_FINANCE STRING,
  SIGNATURE_FLAG STRING,
  SIM_EMULATION STRING,
  SOCIAL_NETWORK_CLIENT STRING,
  STANDARD_MAIL_FLAG STRING,
  STREAMING STRING,
  SYNCHRO_PC_PLAYER_FLAG STRING,
  TEK_RADIO STRING,
  THREAD_MESSAGE_FLAG STRING,
  TOUCH_SCREEN_FLAG STRING,
  TV_HARD_KEY_FLAG STRING,
  TV_OUT_LINK_SUPPORT_FLAG STRING,
  UMA_FLAG STRING,
  UMTS_FLAG STRING,
  UMTS_BAND STRING,
  USAGE_CATEGORY STRING,
  USAGE_SUBCATEGORY STRING,
  USAGE_CATEGORY_LEVEL STRING,
  USB	USER_INT_MEMORY STRING,
  VIBRATOR_FLAG STRING,
  VIDEO_PLAYER STRING,
  VIDEO_PLAYER_FLAG STRING,
  VIDEOTELEPHONY_FLAG STRING,
  VOICE_MAIL_DIRECT_ACCESS STRING,
  VOLUME_CC	WAP_FLAG STRING,
  WAP_PUSH STRING,
  WAP_VERSION STRING,
  WEIGHT_GR STRING,
  WIFI_FLAG STRING,
  XHTML STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\t'
STORED AS TEXTFILE;


-- 10- SORTANT
DROP TABLE IF EXISTS OIC.TT_SORTANT;

CREATE TABLE OIC.TT_SORTANT (
  DATE_ID STRING,
  MSISDN STRING,
  MSISDN_APPELANT STRING,
  MSISDN_APPELE STRING,
  DESTINATION STRING,
  TYPE_EVENT STRING,
  SENS_EVENT STRING,
  OPERATEUR_APPELANT STRING,
  OPERATEUR_APPELE STRING,
  TYPE_CELLULE STRING,
  CI STRING,
  DUREE_EVENT STRING,
  MONTANT_VALORISE STRING,
  MONTANT_BUNDLE STRING,
  MONTANT_BONUS STRING,
  VOL_DATA_CONSOMME STRING,
  VOL_DATA_DOWN STRING,
  VOL_DATA_UP STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


-- 11- SVA	
DROP TABLE IF EXISTS OIC.TT_SVA;

CREATE TABLE OIC.TT_SVA (
  MONTH_ID STRING,
  MSISDN STRING,
  TYPE_SOUSCRIPTION STRING,
  NOMBRE_SOUSCRIPTION STRING,
  MONTANT_SOUSCRIPTION STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


-- 12- TRANSACTION_OM
DROP TABLE IF EXISTS OIC.TT_TRANSACTION_OM;

CREATE TABLE OIC.TT_TRANSACTION_OM (
  MONTH_ID STRING,
  MSISDN STRING,
  NBRE_TRANSACTION STRING,
  MONTANT_TRANSACTION STRING,
  NBRE_TRANSACTION_IN STRING,
  MONTANT_TRANSACTION_IN STRING,
  NBRE_TRANSACTION_OUT STRING,
  MONTANT_TRANSACTION_OUT STRING
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


