# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python3_{7,8} )
inherit user readme.gentoo-r1 eutils distutils-r1

DESCRIPTION="Open-source home automation platform running on Python on 3.7 (and 3.6 for a short time)"
HOMEPAGE="https://home-assistant.io https://git.edevau.net/onkelbeh/HomeAssistantRepository"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

if [[ ${PV} == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/home-assistant/home-assistant.git"
	EGIT_BRANCH="dev"
	S="${WORKDIR}/${P}/"
else
	MY_P=${P/_beta/b}
	MY_PV=${PV/_beta/b}
	SRC_URI="https://github.com/home-assistant/home-assistant/archive/${MY_PV}.tar.gz -> ${MY_P}.tar.gz"
	S="${WORKDIR}/${MY_P}/"
fi

IUSE="abode acer_projector adguard ads aftership airly airvisual aladdin_connect alarmdecoder alarmdotcom almond alpha_vantage amazon_polly ambiclimate ambient_station amcrest ampio android_ip_webcam androidtv anel_pwrctrl anthemav apache_kafka apcupsd apns apple_tv apprise aprs aqualogic aquostv arcam_fmj arduino arlo aruba asterisk_mbox asuswrt aten_pe atome august aurora_abb_powerone automatic avea avion awair aws axis baidu bbb_gpio bbox beewi_smartclim bh1750 bitcoin bizkaibus blackbird blink blinksticklight blinkt blockchain bluesound bluetooth_le_tracker bluetooth_tracker bme280 bme680 bmw_connected_drive bom braviatv broadlink brottsplatskartan brunt bt_home_hub_5 bt_smarthub buienradar caldav canary cast channels cisco_ios cisco_mobility_express cisco_webex_teams ciscospark clementine cloud cloudflare cmus co2signal coinbase coinmarketcap comfoconnect concord232 coolmaster cppm_tracker cpuspeed crimereports cups daikin danfoss_air darksky datadog deconz decora decora_wifi delijn deluge denonavr deutsche_bahn dht digital_ocean digitalloggers directv discogs discord discovery dlib_face_detect dlib_face_identify dlink dlna_dmr dnsip dominos doods doorbird dovado dsmr duke_energy dunehd dweet dyson ebox ebusd ecoal_boiler ecobee econet ecovacs eddystone_temperature edimax ee_brightbox egardia eight_sleep eliqonline elkm1 elv emby emulated_hue emulated_roku enigma2 enocean enphase_envoy entur_public_transport environment_canada envirophat envisalink ephember epson epsonworkforce eq3btsmart esphome essent etherscan eufy everlights evohome familyhub fastdotcom feedreader ffmpeg fibaro fido fints fitbit fixer fleetgo flexit flic flume flunearyou flux_led folder_watcher foobot fortigate fortios foscam free_mobile freebox fritz fritzbox fritzbox_callmonitor fritzbox_netmonitor fritzdect fronius frontier_silicon futurenow gc100 gearbest geizhals geniushub geo_json_events geo_rss_events geonetnz_quakes github gitlab_ci gitter glances gntp goalfeed gogogate2 google google_maps google_translate google_travel_time gpmdp gpsd greeneye_monitor greenwave growatt_server gstreamer gtfs habitica hangouts harman_kardon_avr harmony hdmi_cec heatmiser heos here_travel_time hikvision hikvisioncam hive hlk_sw16 homekit homekit_controller homematic homematicip_cloud homeworks honeywell horizon hp_ilo html5 http htu21d huawei_lte hue hunterdouglas_powerview hydrawise ialarm iaqualink icloud idteck_prox ifttt iglo ign_sismologia ihc image_processing imap incomfort influxdb insteon iota iperf3 ipma iqvia irish_rail_transport islamic_prayer_times iss isy994 itach izone jewish_calendar joaoapps_join juicenet kaiterra keba keenetic_ndms2 keyboard keyboard_remote kira kiwi knx kodi konnected kwb lametric lastfm launch_library lcn lg_netcast lg_soundbar life360 lifx lifx_legacy lightwave limitlessled linky linode linux_battery lirc litejet liveboxplaytv logi_circle london_underground loopenergy luci luftdaten lupusec lutron lutron_caseta lw12wifi lyft magicseaweed mailgun mastodon matrix maxcube maxcube_hack mcp23017 media_extractor mediaroom melissa message_bird met meteo_france meteoalarm metoffice mfi mhz19 microsoft miflora mikrotik mill minio mitemp_bt mobile_app mochad modbus modem_callerid monoprice mopar mpd mqtt msteams mvglive mychevy mycroft myq mysensors mystrom mythicbeastsdns n26 nad namecheapdns nanoleaf neato nederlandse_spoorwegen nello ness_alarm nest netatmo netdata netgear netgear_lte netio neurio_energy nextbus niko_home_control nilu nissan_leaf nmap_tracker nmbs noaa_tides norway_air notion nsw_fuel_station nsw_rural_fire_service_feed nuheat nuimo_controller nuki nut nws nx584 nzbget oasa_telematics obihai oem ohmconnect ombi onkyo onvif opencv openevse openhome opensensemap opentherm_gw openuv openweathermap opple orangepi_gpio oru orvibo osramlightify otp owlet owntracks panasonic_bluray panasonic_viera pandora pcal9535a pencom philips_js pi_hole piglow pilight pjlink plex plugwise plum_lightpad pocketcasts point postnl prezzibenzina proliphix prometheus proxmoxve proxy ps4 ptvsd pushbullet pushetta pushover python_script qbittorrent qld_bushfire qnap qrcode quantum_gateway qwikswitch rachio radiotherm rainbird raincloud rainforest_eagle rainmachine raspihats raspyrfm recollect_waste recorder recswitch reddit rejseplanen remember_the_milk remote_rpi_gpio repetier rflink rfxtrx ring ripple rmvtransport rocketchat roku route53 rova rpi_gpio rpi_gpio_pwm rpi_pfio rpi_rf russound_rio russound_rnet sabnzbd saj samsungtv satel_integra scrape scsgate sendgrid sense sensehat sensibo serial serial_pm sesame seventeentrack shiftr shodan sht31 simplepush simplisafe sinch sisyphus skybeacon skybell slack sleepiq slide sma smappee smarthab smartthings smarty smhi snapcast snmp sochain socialblade solaredge solaredge_local solarlog solax soma somfy somfy_mylink songpal sonos sony_projector soundtouch spc speedtestdotnet spider spotcrime spotify sql ssdp starline starlingbank startca statsd steam_online stiebel_eltron stream streamlabswater suez_water supla swiss_hydrological_data swiss_public_transport switchbot switcher_kis switchmate syncthru synology synology_srm synologydsm systemmonitor tado tahoma tank_utility tapsaff tautulli ted5000 telegram_bot tellduslive tellstick temper tensorflow tesla test tfiac thermoworks_smoke thingspeak thinkingcleaner tibber tikteck tile todoist tof toon totalconnect touchline tplink tplink_lte traccar trackr tradfri trafikverket_train trafikverket_weatherstation transmission transport_nsw travisci trend tuya twentemilieu twilio twitch twitter ubee unifi unifi_direct unifiled upc_connect upcloud updater upnp uscis usgs_earthquakes_feed uvc vallox vasttrafik velbus velux venstar vera verisure versasense version vesync vicare vivotek vizio vlc vlc_telnet volkszaehler vultr w800rf32 wake_on_lan waqi waterfurnace watson_iot watson_tts waze_travel_time webostv wemo whois wink wirelesstag withings wled workday wunderlist wwlln xbox_live xeoma xfinity xiaomi_aqara xiaomi_miio xiaomi_tv xmpp yale_smart_alarm yamaha yamaha_musiccast yandex_transport yeelight yeelightsunflower yessssms yi yr yweather zengge zeroconf zestimate zha zhong_hong zigbee ziggo_mediabox_xl zoneminder zwave"

RDEPEND="${PYTHON_DEPS}
	!app-misc/homeassistant-bin
	>=dev-lang/python-3.6.5
	app-admin/logrotate
	dev-db/sqlite
	dev-libs/libfastjson
	>=dev-libs/xerces-c-3.1.4-r1

	>=app-crypt/acme-0.32.0[${PYTHON_USEDEP}]
	~dev-python/aiobotocore-0.10.4[${PYTHON_USEDEP}]
	~dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-cors-0.7.0[${PYTHON_USEDEP}]
	>=dev-python/asn1crypto-0.24.0[${PYTHON_USEDEP}]
	~dev-python/astral-1.10.1[${PYTHON_USEDEP}]
	~dev-python/async_timeout-3.0.1[${PYTHON_USEDEP}]
	~dev-python/attrs-19.3.0[${PYTHON_USEDEP}]
	~dev-python/bcrypt-3.1.7[${PYTHON_USEDEP}]
	~dev-python/beautifulsoup-4.8.1[${PYTHON_USEDEP}]
	~dev-python/blinkpy-0.14.2[${PYTHON_USEDEP}]
	~dev-python/boto3-1.9.252[${PYTHON_USEDEP}]
	~dev-python/caldav-0.6.1[${PYTHON_USEDEP}]
	>=dev-python/cdu-0.1.3[${PYTHON_USEDEP}]
	>=dev-python/certifi-2019.9.11[${PYTHON_USEDEP}]
	~dev-python/cffi-1.12.2[${PYTHON_USEDEP}]
	>=dev-python/chardet-3.0.4[${PYTHON_USEDEP}]
	~dev-python/colorlog-4.0.2[${PYTHON_USEDEP}]
	>=dev-python/coverage-4.5.2[${PYTHON_USEDEP}]
	~dev-python/cryptography-2.8[${PYTHON_USEDEP}]
	>=dev-python/distro-1.4.0[${PYTHON_USEDEP}]
	~dev-python/docopt-0.6.2[${PYTHON_USEDEP}]
	>=dev-python/docutils-0.14[${PYTHON_USEDEP}]
	>=dev-python/ecdsa-0.13[${PYTHON_USEDEP}]
	>=dev-python/envs-1.3[${PYTHON_USEDEP}]
	>=dev-python/future-0.17.1[${PYTHON_USEDEP}]
	~dev-python/gTTS-token-1.1.3[${PYTHON_USEDEP}]
	~dev-python/hass-nabucasa-0.29[${PYTHON_USEDEP}]
	>=dev-python/idna-2.8[${PYTHON_USEDEP}]
	>=dev-python/idna-ssl-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/ifaddr-0.1.6[${PYTHON_USEDEP}]
	>=dev-python/immutables-0.9[${PYTHON_USEDEP}]
	~dev-python/importlib_metadata-0.23[${PYTHON_USEDEP}]
	>=dev-python/jinja-2.10.3[${PYTHON_USEDEP}]
	>=dev-python/jmespath-0.9.4[${PYTHON_USEDEP}]
	>=dev-python/jose-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/jsonrpc-async-0.6[${PYTHON_USEDEP}]
	~dev-python/jsonrpc-base-1.0[${PYTHON_USEDEP}]
	~dev-python/jsonrpc-websocket-0.6[${PYTHON_USEDEP}]
	>=dev-python/lxml-4.3.3[${PYTHON_USEDEP}]
	>=dev-python/multidict-4.5.2[${PYTHON_USEDEP}]
	>=dev-python/netdisco-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/nose-1.3.7[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.17.3[${PYTHON_USEDEP}]
	~dev-python/paho-mqtt-1.5.0[${PYTHON_USEDEP}]
	~dev-python/passlib-1.7.1-r1[${PYTHON_USEDEP}]
	>=dev-python/pbr-5.1.3[${PYTHON_USEDEP}]
	~dev-python/pillow-6.2.1[${PYTHON_USEDEP}]
	>=dev-python/pip-8.0.3-r1[${PYTHON_USEDEP}]
	>=dev-python/psutil-5.6.5[${PYTHON_USEDEP}]
	>=dev-python/PyChromecast-4.0.1[${PYTHON_USEDEP}]
	>=dev-python/pycparser-2.19[${PYTHON_USEDEP}]
	|| ( >=dev-python/pycryptodome-3.7.3[${PYTHON_USEDEP}]
			dev-python/pycrypto[${PYTHON_USEDEP}] )
	~dev-python/pyhaversion-3.1.0[${PYTHON_USEDEP}]
	~dev-python/pyjwt-1.7.1[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-19.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyotp-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/PyQRCode-1.2.1[${PYTHON_USEDEP}]
	>=dev-python/pyrfc3339-1.1[${PYTHON_USEDEP}]
	~dev-python/pysnmp-4.4.12[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/python-jose-cryptodome-1.3.2[${PYTHON_USEDEP}]
	~dev-python/python-slugify-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2019.3[${PYTHON_USEDEP}]
	~dev-python/pyyaml-5.1.2[${PYTHON_USEDEP}]
	=dev-python/requests-2.22.0-r1[${PYTHON_USEDEP}]
	>=dev-python/requests-toolbelt-0.9.1[${PYTHON_USEDEP}]
	=dev-python/RestrictedPython-5.0[${PYTHON_USEDEP}]
	~dev-python/ruamel-yaml-0.15.100[${PYTHON_USEDEP}]
	>=dev-python/setuptools-40.8.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.12.0[${PYTHON_USEDEP}]
	~dev-python/sqlalchemy-1.3.10[${PYTHON_USEDEP}]
	~dev-python/transitions-0.6.9[${PYTHON_USEDEP}]
	>=dev-python/typing-3.6.4-r1[${PYTHON_USEDEP}]
	>=dev-python/tzlocal-1.5.1[${PYTHON_USEDEP}]
	>=dev-python/ua-parser-0.8.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.25.3[${PYTHON_USEDEP}]
	=dev-python/user-agents-2.0-r1[${PYTHON_USEDEP}]
	>=dev-python/vobject-0.9.6.1[${PYTHON_USEDEP}]
	~dev-python/voluptuous-0.11.7[${PYTHON_USEDEP}]
	~dev-python/voluptuous-serialize-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/wakeonlan-1.1.6[${PYTHON_USEDEP}]
	=dev-python/warrant-0.6.1-r1[${PYTHON_USEDEP}]
	>=dev-python/websocket-client-0.54.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-7.0[${PYTHON_USEDEP}]
	~dev-python/xmltodict-0.12.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.23.0[${PYTHON_USEDEP}]
	>=media-libs/mutagen-1.42.0

	abode? ( ~dev-python/abodepy-0.16.7[${PYTHON_USEDEP}] )
	acer_projector? ( ~dev-python/pyserial-3.1.1[${PYTHON_USEDEP}] )
	adguard? ( ~dev-python/adguardhome-0.3.0[${PYTHON_USEDEP}] )
	ads? ( ~dev-python/pyads-3.0.7[${PYTHON_USEDEP}] )
	aftership? ( ~dev-python/pyaftership-0.1.2[${PYTHON_USEDEP}] )
	airly? ( ~dev-python/airly-0.0.2[${PYTHON_USEDEP}] )
	airvisual? ( ~dev-python/pyairvisual-3.0.1[${PYTHON_USEDEP}] )
	aladdin_connect? ( ~dev-python/aladdin-connect-0.3[${PYTHON_USEDEP}] )
	alarmdecoder? ( ~dev-python/alarmdecoder-1.13.2[${PYTHON_USEDEP}] )
	alarmdotcom? ( ~dev-python/pyalarmdotcom-0.3.2[${PYTHON_USEDEP}] )
	almond? ( ~dev-python/pyalmond-0.0.2[${PYTHON_USEDEP}] )
	alpha_vantage? ( ~dev-python/alpha-vantage-2.1.2[${PYTHON_USEDEP}] )
	amazon_polly? ( ~dev-python/boto3-1.9.252[${PYTHON_USEDEP}] )
	ambiclimate? ( ~dev-python/Ambiclimate-0.2.1[${PYTHON_USEDEP}] )
	ambient_station? ( ~dev-python/aioambient-0.3.2[${PYTHON_USEDEP}] )
	amcrest? ( ~dev-python/amcrest-1.5.3[${PYTHON_USEDEP}] )
	ampio? ( ~dev-python/asmog-0.0.6[${PYTHON_USEDEP}] )
	android_ip_webcam? ( ~dev-python/pydroid-ipcam-0.8[${PYTHON_USEDEP}] )
	androidtv? ( ~dev-python/adb-shell-0.0.8[${PYTHON_USEDEP}]
			   ~dev-python/androidtv-0.0.34[${PYTHON_USEDEP}]
			   ~dev-python/pure-python-adb-0.2.2[${PYTHON_USEDEP}] )
	anel_pwrctrl? ( ~dev-python/anel-pwrctrl-homeassistant-0.0.1[${PYTHON_USEDEP}] )
	anthemav? ( ~dev-python/anthemav-1.1.10[${PYTHON_USEDEP}] )
	apache_kafka? ( ~dev-python/aiokafka-0.5.1[${PYTHON_USEDEP}] )
	apcupsd? ( ~dev-python/apcaccess-0.0.13[${PYTHON_USEDEP}] )
	apns? ( ~dev-python/apns2-0.3.0[${PYTHON_USEDEP}] )
	apple_tv? ( ~dev-python/pyatv-0.3.13[${PYTHON_USEDEP}] )
	apprise? ( ~dev-python/apprise-0.8.2[${PYTHON_USEDEP}] )
	aprs? ( ~dev-python/aprslib-0.6.46[${PYTHON_USEDEP}]
		  ~dev-python/geopy-1.19.0[${PYTHON_USEDEP}] )
	aqualogic? ( ~dev-python/aqualogic-1.0[${PYTHON_USEDEP}] )
	aquostv? ( ~dev-python/sharp_aquos_rc-0.3.2[${PYTHON_USEDEP}] )
	arcam_fmj? ( ~dev-python/arcam-fmj-0.4.3[${PYTHON_USEDEP}] )
	arduino? ( ~dev-python/PyMata-2.20[${PYTHON_USEDEP}] )
	arlo? ( ~dev-python/pyarlo-0.2.3[${PYTHON_USEDEP}] )
	aruba? ( ~dev-python/pexpect-4.6.0[${PYTHON_USEDEP}] )
	asterisk_mbox? ( ~dev-python/asterisk_mbox-0.5.0[${PYTHON_USEDEP}] )
	asuswrt? ( ~dev-python/aioasuswrt-1.1.22[${PYTHON_USEDEP}] )
	aten_pe? ( ~dev-python/atenpdu-0.3.0[${PYTHON_USEDEP}] )
	atome? ( ~dev-python/pyAtome-0.1.1[${PYTHON_USEDEP}] )
	august? ( ~dev-python/py-august-0.7.0[${PYTHON_USEDEP}] )
	aurora_abb_powerone? ( ~dev-python/aurorapy-0.2.6[${PYTHON_USEDEP}] )
	automatic? ( ~dev-python/aioautomatic-0.6.5[${PYTHON_USEDEP}] )
	avea? ( ~dev-python/avea-1.4[${PYTHON_USEDEP}] )
	avion? ( ~dev-python/avion-0.10[${PYTHON_USEDEP}] )
	awair? ( ~dev-python/python-awair-0.0.4[${PYTHON_USEDEP}] )
	aws? ( ~dev-python/aiobotocore-0.10.4[${PYTHON_USEDEP}] )
	axis? ( ~dev-python/axis-25[${PYTHON_USEDEP}] )
	baidu? ( ~dev-python/baidu-aip-1.6.6[${PYTHON_USEDEP}] )
	bbb_gpio? ( ~dev-python/Adafruit_BBIO-1.0.0[${PYTHON_USEDEP}] )
	bbox? ( ~dev-python/pybbox-0.0.5_alpha0[${PYTHON_USEDEP}] )
	beewi_smartclim? ( ~dev-python/beewi-smartclim-0.0.7[${PYTHON_USEDEP}] )
	bh1750? ( ~dev-python/i2csense-0.0.4[${PYTHON_USEDEP}]
			~dev-python/smbus-cffi-0.5.1[${PYTHON_USEDEP}] )
	bitcoin? ( ~dev-python/blockchain-1.4.4[${PYTHON_USEDEP}] )
	bizkaibus? ( ~dev-python/bizkaibus-0.1.1[${PYTHON_USEDEP}] )
	blackbird? ( ~dev-python/pyblackbird-0.5[${PYTHON_USEDEP}] )
	blink? ( ~dev-python/blinkpy-0.14.2[${PYTHON_USEDEP}] )
	blinksticklight? ( ~dev-python/BlinkStick-1.1.8[${PYTHON_USEDEP}] )
	blinkt? ( ~dev-python/blinkt-0.1.0[${PYTHON_USEDEP}] )
	blockchain? ( ~dev-python/python-blockchain-api-0.0.2[${PYTHON_USEDEP}] )
	bluesound? ( ~dev-python/xmltodict-0.12.0[${PYTHON_USEDEP}] )
	bluetooth_le_tracker? ( ~dev-python/pygatt-4.0.5[${PYTHON_USEDEP}] )
	bluetooth_tracker? ( ~dev-python/bt-proximity-0.2[${PYTHON_USEDEP}]
					   ~dev-python/pybluez-0.22[${PYTHON_USEDEP}] )
	bme280? ( ~dev-python/i2csense-0.0.4[${PYTHON_USEDEP}]
			~dev-python/smbus-cffi-0.5.1[${PYTHON_USEDEP}] )
	bme680? ( ~dev-python/bme680-1.0.5[${PYTHON_USEDEP}]
			~dev-python/smbus-cffi-0.5.1[${PYTHON_USEDEP}] )
	bmw_connected_drive? ( ~dev-python/bimmer-connected-0.6.2[${PYTHON_USEDEP}] )
	bom? ( ~dev-python/bomradarloop-0.1.3[${PYTHON_USEDEP}] )
	braviatv? ( ~dev-python/braviarc-homeassistant-0.3.7[${PYTHON_USEDEP}]
			  ~dev-python/getmac-0.8.1[${PYTHON_USEDEP}] )
	broadlink? ( ~dev-python/broadlink-0.12.0[${PYTHON_USEDEP}] )
	brottsplatskartan? ( ~dev-python/brottsplatskartan-0.0.1[${PYTHON_USEDEP}] )
	brunt? ( ~dev-python/brunt-0.1.3[${PYTHON_USEDEP}] )
	bt_home_hub_5? ( ~dev-python/bthomehub5-devicelist-0.1.1[${PYTHON_USEDEP}] )
	bt_smarthub? ( ~dev-python/btsmarthub-devicelist-0.1.3[${PYTHON_USEDEP}] )
	buienradar? ( ~dev-python/buienradar-1.0.1[${PYTHON_USEDEP}] )
	caldav? ( ~dev-python/caldav-0.6.1[${PYTHON_USEDEP}] )
	canary? ( ~dev-python/py-canary-0.5.0[${PYTHON_USEDEP}] )
	cast? ( ~dev-python/PyChromecast-4.0.1[${PYTHON_USEDEP}] )
	channels? ( ~dev-python/pychannels-1.0.0[${PYTHON_USEDEP}] )
	cisco_ios? ( ~dev-python/pexpect-4.6.0[${PYTHON_USEDEP}] )
	cisco_mobility_express? ( ~dev-python/ciscomobilityexpress-0.3.3[${PYTHON_USEDEP}] )
	cisco_webex_teams? ( ~dev-python/webexteamssdk-1.1.1[${PYTHON_USEDEP}] )
	ciscospark? ( ~dev-python/ciscosparkapi-0.4.2[${PYTHON_USEDEP}] )
	clementine? ( ~dev-python/python-clementine-remote-1.0.1[${PYTHON_USEDEP}] )
	cloud? ( ~dev-python/hass-nabucasa-0.30[${PYTHON_USEDEP}] )
	cloudflare? ( ~dev-python/pycfdns-0.0.1[${PYTHON_USEDEP}] )
	cmus? ( ~dev-python/pycmus-0.1.1[${PYTHON_USEDEP}] )
	co2signal? ( ~dev-python/CO2Signal-0.4.2[${PYTHON_USEDEP}] )
	coinbase? ( ~dev-python/coinbase-2.1.0[${PYTHON_USEDEP}] )
	coinmarketcap? ( ~dev-python/coinmarketcap-5.0.3[${PYTHON_USEDEP}] )
	comfoconnect? ( ~dev-python/pycomfoconnect-0.3[${PYTHON_USEDEP}] )
	concord232? ( ~dev-python/concord232-0.15[${PYTHON_USEDEP}] )
	coolmaster? ( ~dev-python/pycoolmasternet-0.0.4[${PYTHON_USEDEP}] )
	cppm_tracker? ( ~dev-python/clearpasspy-1.0.2[${PYTHON_USEDEP}] )
	cpuspeed? ( ~dev-python/py-cpuinfo-5.0.0[${PYTHON_USEDEP}] )
	crimereports? ( ~dev-python/crimereports-1.0.1[${PYTHON_USEDEP}] )
	cups? ( ~dev-python/pycups-1.9.73[${PYTHON_USEDEP}] )
	daikin? ( ~dev-python/pydaikin-1.6.1[${PYTHON_USEDEP}] )
	danfoss_air? ( ~dev-python/pydanfossair-0.1.0[${PYTHON_USEDEP}] )
	darksky? ( ~dev-python/python-forecastio-1.4.0[${PYTHON_USEDEP}] )
	datadog? ( ~dev-python/datadog-0.15.0[${PYTHON_USEDEP}] )
	deconz? ( ~dev-python/pydeconz-64[${PYTHON_USEDEP}] )
	decora? ( ~dev-python/bluepy-1.1.4[${PYTHON_USEDEP}]
			~dev-python/decora-0.6[${PYTHON_USEDEP}] )
	decora_wifi? ( ~dev-python/decora-wifi-1.4[${PYTHON_USEDEP}] )
	delijn? ( ~dev-python/pydelijn-0.5.1[${PYTHON_USEDEP}] )
	deluge? ( ~dev-python/deluge-client-1.7.1[${PYTHON_USEDEP}] )
	denonavr? ( ~dev-python/denonavr-0.7.10[${PYTHON_USEDEP}] )
	deutsche_bahn? ( ~dev-python/schiene-0.23[${PYTHON_USEDEP}] )
	dht? ( ~dev-python/Adafruit-DHT-1.4.0[${PYTHON_USEDEP}] )
	digital_ocean? ( ~dev-python/python-digitalocean-1.13.2[${PYTHON_USEDEP}] )
	digitalloggers? ( ~dev-python/dlipower-0.7.165[${PYTHON_USEDEP}] )
	directv? ( ~dev-python/directpy-0.5[${PYTHON_USEDEP}] )
	discogs? ( ~dev-python/discogs-client-2.2.2[${PYTHON_USEDEP}] )
	discord? ( ~dev-python/discord-py-1.2.5[${PYTHON_USEDEP}] )
	discovery? ( ~dev-python/netdisco-2.6.0[${PYTHON_USEDEP}] )
	dlib_face_detect? ( ~dev-python/face_recognition-1.2.3[${PYTHON_USEDEP}] )
	dlib_face_identify? ( ~dev-python/face_recognition-1.2.3[${PYTHON_USEDEP}] )
	dlink? ( ~dev-python/pyW215-0.6.0[${PYTHON_USEDEP}] )
	dlna_dmr? ( ~dev-python/async-upnp-client-0.14.12[${PYTHON_USEDEP}] )
	dnsip? ( ~dev-python/aiodns-2.0.0[${PYTHON_USEDEP}] )
	dominos? ( ~dev-python/pizzapi-0.0.3[${PYTHON_USEDEP}] )
	doods? ( ~dev-python/pydoods-1.0.2[${PYTHON_USEDEP}] )
	doorbird? ( ~dev-python/DoorBirdPy-2.0.8[${PYTHON_USEDEP}] )
	dovado? ( ~dev-python/dovado-0.4.1[${PYTHON_USEDEP}] )
	dsmr? ( ~dev-python/dsmr-parser-0.12[${PYTHON_USEDEP}] )
	duke_energy? ( ~dev-python/pydukeenergy-0.0.6[${PYTHON_USEDEP}] )
	dunehd? ( ~dev-python/pdunehd-1.3[${PYTHON_USEDEP}] )
	dweet? ( ~dev-python/dweepy-0.3.0[${PYTHON_USEDEP}] )
	dyson? ( ~dev-python/libpurecool-0.5.0[${PYTHON_USEDEP}] )
	ebox? ( ~dev-python/pyebox-1.1.4[${PYTHON_USEDEP}] )
	ebusd? ( ~dev-python/ebusdpy-0.0.16[${PYTHON_USEDEP}] )
	ecoal_boiler? ( ~dev-python/ecoaliface-0.4.0[${PYTHON_USEDEP}] )
	ecobee? ( ~dev-python/python-ecobee-api-0.1.4[${PYTHON_USEDEP}] )
	econet? ( ~dev-python/pyeconet-0.0.11[${PYTHON_USEDEP}] )
	ecovacs? ( ~dev-python/sucks-0.9.4[${PYTHON_USEDEP}] )
	eddystone_temperature? ( ~dev-python/beacontools-1.2.3[${PYTHON_USEDEP}]
						   ~dev-python/construct-2.9.45[${PYTHON_USEDEP}] )
	edimax? ( ~dev-python/pyedimax-0.1[${PYTHON_USEDEP}] )
	ee_brightbox? ( ~dev-python/eebrightbox-0.0.4[${PYTHON_USEDEP}] )
	egardia? ( ~dev-python/pythonegardia-1.0.40[${PYTHON_USEDEP}] )
	eight_sleep? ( ~dev-python/pyEight-0.1.2[${PYTHON_USEDEP}] )
	eliqonline? ( ~dev-python/eliqonline-1.2.2[${PYTHON_USEDEP}] )
	elkm1? ( ~dev-python/elkm1-lib-0.7.15[${PYTHON_USEDEP}] )
	elv? ( ~dev-python/pypca-0.0.7[${PYTHON_USEDEP}] )
	emby? ( ~dev-python/pyEmby-1.6[${PYTHON_USEDEP}] )
	emulated_hue? ( ~dev-python/aiohttp-cors-0.7.0[${PYTHON_USEDEP}] )
	emulated_roku? ( ~dev-python/emulated-roku-0.1.8[${PYTHON_USEDEP}] )
	enigma2? ( ~dev-python/openwebifpy-3.1.1[${PYTHON_USEDEP}] )
	enocean? ( ~dev-python/enocean-0.50[${PYTHON_USEDEP}] )
	enphase_envoy? ( ~dev-python/envoy-reader-0.8.6[${PYTHON_USEDEP}] )
	entur_public_transport? ( ~dev-python/enturclient-0.2.1[${PYTHON_USEDEP}] )
	environment_canada? ( ~dev-python/env-canada-0.0.30[${PYTHON_USEDEP}] )
	envirophat? ( ~dev-python/envirophat-0.0.6[${PYTHON_USEDEP}]
				~dev-python/smbus-cffi-0.5.1[${PYTHON_USEDEP}] )
	envisalink? ( ~dev-python/pyenvisalink-4.0[${PYTHON_USEDEP}] )
	ephember? ( ~dev-python/pyephember-0.3.1[${PYTHON_USEDEP}] )
	epson? ( ~dev-python/epson-projector-0.1.3[${PYTHON_USEDEP}] )
	epsonworkforce? ( ~dev-python/epsonprinter-0.0.9[${PYTHON_USEDEP}] )
	eq3btsmart? ( ~dev-python/construct-2.9.45[${PYTHON_USEDEP}]
				~dev-python/python-eq3bt-0.1.11[${PYTHON_USEDEP}] )
	esphome? ( ~dev-python/aioesphomeapi-2.6.1[${PYTHON_USEDEP}] )
	essent? ( ~dev-python/PyEssent-0.13[${PYTHON_USEDEP}] )
	etherscan? ( ~dev-python/python-etherscan-api-0.0.3[${PYTHON_USEDEP}] )
	eufy? ( ~dev-python/lakeside-0.12[${PYTHON_USEDEP}] )
	everlights? ( ~dev-python/pyeverlights-0.1.0[${PYTHON_USEDEP}] )
	evohome? ( ~dev-python/evohome-async-0.3.4_beta1[${PYTHON_USEDEP}] )
	familyhub? ( ~dev-python/python-family-hub-local-0.0.2[${PYTHON_USEDEP}] )
	fastdotcom? ( ~dev-python/fastdotcom-0.0.3[${PYTHON_USEDEP}] )
	feedreader? ( ~dev-python/feedparser-homeassistant-5.2.2[${PYTHON_USEDEP}] )
	ffmpeg? ( ~dev-python/ha-ffmpeg-2.0[${PYTHON_USEDEP}] )
	fibaro? ( ~dev-python/fiblary3-0.1.7[${PYTHON_USEDEP}] )
	fido? ( ~dev-python/pyfido-2.1.1[${PYTHON_USEDEP}] )
	fints? ( ~dev-python/fints-1.0.1[${PYTHON_USEDEP}] )
	fitbit? ( ~dev-python/fitbit-0.3.1[${PYTHON_USEDEP}] )
	fixer? ( ~dev-python/fixerio-1.0.0_alpha0[${PYTHON_USEDEP}] )
	fleetgo? ( ~dev-python/ritassist-0.9.2[${PYTHON_USEDEP}] )
	flexit? ( ~dev-python/pyflexit-0.3[${PYTHON_USEDEP}] )
	flic? ( ~dev-python/pyflic-homeassistant-0.4[${PYTHON_USEDEP}] )
	flume? ( ~dev-python/PyFlume-0.2.4[${PYTHON_USEDEP}] )
	flunearyou? ( ~dev-python/pyflunearyou-1.0.3[${PYTHON_USEDEP}] )
	flux_led? ( ~dev-python/flux-led-0.22[${PYTHON_USEDEP}] )
	folder_watcher? ( ~dev-python/watchdog-0.8.3[${PYTHON_USEDEP}] )
	foobot? ( ~dev-python/foobot_async-0.3.1[${PYTHON_USEDEP}] )
	fortigate? ( ~dev-python/pyfgt-0.5.1[${PYTHON_USEDEP}] )
	fortios? ( ~dev-python/fortiosapi-0.10.8[${PYTHON_USEDEP}] )
	foscam? ( ~dev-python/libpyfoscam-1.0[${PYTHON_USEDEP}] )
	free_mobile? ( ~dev-python/freesms-0.1.2[${PYTHON_USEDEP}] )
	freebox? ( ~dev-python/aiofreepybox-0.0.8[${PYTHON_USEDEP}] )
	fritz? ( ~dev-python/fritzconnection-0.8.4[${PYTHON_USEDEP}] )
	fritzbox? ( ~dev-python/pyfritzhome-0.4.0[${PYTHON_USEDEP}] )
	fritzbox_callmonitor? ( ~dev-python/fritzconnection-0.8.4[${PYTHON_USEDEP}] )
	fritzbox_netmonitor? ( ~dev-python/fritzconnection-0.8.4[${PYTHON_USEDEP}] )
	fritzdect? ( ~dev-python/fritzhome-1.0.4[${PYTHON_USEDEP}] )
	fronius? ( ~dev-python/PyFronius-0.4.6[${PYTHON_USEDEP}] )
	frontier_silicon? ( ~dev-python/afsapi-0.0.4[${PYTHON_USEDEP}] )
	futurenow? ( ~dev-python/pyfnip-0.2[${PYTHON_USEDEP}] )
	gc100? ( ~dev-python/python-gc100-1.0.3_alpha0[${PYTHON_USEDEP}] )
	gearbest? ( ~dev-python/gearbest-parser-1.0.7[${PYTHON_USEDEP}] )
	geizhals? ( ~dev-python/geizhals-0.0.9[${PYTHON_USEDEP}] )
	geniushub? ( ~dev-python/geniushub-client-0.6.30[${PYTHON_USEDEP}] )
	geo_json_events? ( ~dev-python/geojson-client-0.4[${PYTHON_USEDEP}] )
	geo_rss_events? ( ~dev-python/georss-generic-client-0.3[${PYTHON_USEDEP}] )
	geonetnz_quakes? ( ~dev-python/aio-geojson-geonetnz-quakes-0.11[${PYTHON_USEDEP}] )
	github? ( ~dev-python/PyGithub-1.43.8[${PYTHON_USEDEP}] )
	gitlab_ci? ( ~dev-python/python-gitlab-1.6.0[${PYTHON_USEDEP}] )
	gitter? ( ~dev-python/gitterpy-0.1.7[${PYTHON_USEDEP}] )
	glances? ( ~dev-python/glances_api-0.2.0[${PYTHON_USEDEP}] )
	gntp? ( ~dev-python/gntp-1.0.3[${PYTHON_USEDEP}] )
	goalfeed? ( ~dev-python/Pysher-1.0.1[${PYTHON_USEDEP}] )
	gogogate2? ( ~dev-python/pygogogate2-0.1.1[${PYTHON_USEDEP}] )
	google? ( ~dev-python/google-api-python-client-1.6.4[${PYTHON_USEDEP}]
			~dev-python/httplib2-0.10.3[${PYTHON_USEDEP}]
			~dev-python/oauth2client-4.0.0[${PYTHON_USEDEP}] )
	google_maps? ( ~dev-python/locationsharinglib-4.1.0[${PYTHON_USEDEP}] )
	google_translate? ( ~dev-python/gTTS-token-1.1.3[${PYTHON_USEDEP}] )
	google_travel_time? ( ~dev-python/googlemaps-2.5.1[${PYTHON_USEDEP}] )
	gpmdp? ( ~dev-python/websocket-client-0.54.0[${PYTHON_USEDEP}] )
	gpsd? ( ~dev-python/gps3-0.33.3[${PYTHON_USEDEP}] )
	greeneye_monitor? ( ~dev-python/greeneye-monitor-1.0.1[${PYTHON_USEDEP}] )
	greenwave? ( ~dev-python/greenwavereality-0.5.1[${PYTHON_USEDEP}] )
	growatt_server? ( ~dev-python/growattServer-0.0.1[${PYTHON_USEDEP}] )
	gstreamer? ( ~dev-python/gstreamer-player-1.1.2[${PYTHON_USEDEP}] )
	gtfs? ( ~dev-python/pygtfs-0.1.5[${PYTHON_USEDEP}] )
	habitica? ( ~dev-python/habitipy-0.2.0[${PYTHON_USEDEP}] )
	hangouts? ( ~dev-python/hangups-0.4.9[${PYTHON_USEDEP}] )
	harman_kardon_avr? ( ~dev-python/hkavr-0.0.5[${PYTHON_USEDEP}] )
	harmony? ( ~dev-python/aioharmony-0.1.13[${PYTHON_USEDEP}] )
	hdmi_cec? ( ~dev-python/pyCEC-0.4.13[${PYTHON_USEDEP}] )
	heatmiser? ( ~dev-python/heatmiserV3-1.1.18[${PYTHON_USEDEP}] )
	heos? ( ~dev-python/pyheos-0.6.0[${PYTHON_USEDEP}] )
	here_travel_time? ( ~dev-python/herepy-0.6.3.3[${PYTHON_USEDEP}] )
	hikvision? ( ~dev-python/pyHik-0.2.5[${PYTHON_USEDEP}] )
	hikvisioncam? ( ~dev-python/hikvision-0.4[${PYTHON_USEDEP}] )
	hive? ( ~dev-python/pyhiveapi-0.2.19.3[${PYTHON_USEDEP}] )
	hlk_sw16? ( ~dev-python/hlk-sw16-0.0.7[${PYTHON_USEDEP}] )
	homekit? ( ~dev-python/HAP-python-2.6.0[${PYTHON_USEDEP}] )
	homekit_controller? ( ~dev-python/homekit-python-0.15.0[${PYTHON_USEDEP}] )
	homematic? ( ~dev-python/pyhomematic-0.1.62[${PYTHON_USEDEP}] )
	homematicip_cloud? ( ~dev-python/homematicip-0.10.13[${PYTHON_USEDEP}] )
	homeworks? ( ~dev-python/pyhomeworks-0.0.6[${PYTHON_USEDEP}] )
	honeywell? ( ~dev-python/somecomfort-0.5.2[${PYTHON_USEDEP}] )
	horizon? ( ~dev-python/horimote-0.4.1[${PYTHON_USEDEP}] )
	hp_ilo? ( ~dev-python/python-hpilo-4.3[${PYTHON_USEDEP}] )
	html5? ( ~dev-python/pywebpush-1.9.2[${PYTHON_USEDEP}] )
	http? ( ~dev-python/aiohttp-cors-0.7.0[${PYTHON_USEDEP}] )
	htu21d? ( ~dev-python/i2csense-0.0.4[${PYTHON_USEDEP}]
			~dev-python/smbus-cffi-0.5.1[${PYTHON_USEDEP}] )
	huawei_lte? ( ~dev-python/getmac-0.8.1[${PYTHON_USEDEP}]
				~dev-python/huawei-lte-api-1.4.4[${PYTHON_USEDEP}]
				~dev-python/stringcase-1.2.0[${PYTHON_USEDEP}]
				~dev-python/url-normalize-1.4.1[${PYTHON_USEDEP}] )
	hue? ( ~dev-python/aiohue-1.9.2[${PYTHON_USEDEP}] )
	hunterdouglas_powerview? ( ~dev-python/aiopvapi-1.6.14[${PYTHON_USEDEP}] )
	hydrawise? ( ~dev-python/Hydrawiser-0.1.1[${PYTHON_USEDEP}] )
	ialarm? ( ~dev-python/pyialarm-0.3[${PYTHON_USEDEP}] )
	iaqualink? ( ~dev-python/iaqualink-0.3.0[${PYTHON_USEDEP}] )
	icloud? ( ~dev-python/pyicloud-0.9.1[${PYTHON_USEDEP}] )
	idteck_prox? ( ~dev-python/rfk101py-0.0.1[${PYTHON_USEDEP}] )
	ifttt? ( ~dev-python/pyfttt-0.3[${PYTHON_USEDEP}] )
	iglo? ( ~dev-python/iglo-1.2.7[${PYTHON_USEDEP}] )
	ign_sismologia? ( ~dev-python/georss-ign-sismologia-client-0.2[${PYTHON_USEDEP}] )
	ihc? ( ~dev-python/defusedxml-0.6.0[${PYTHON_USEDEP}]
		 ~dev-python/ihcsdk-2.3.0[${PYTHON_USEDEP}] )
	image_processing? ( ~dev-python/pillow-6.2.1[${PYTHON_USEDEP}] )
	imap? ( ~dev-python/aioimaplib-0.7.15[${PYTHON_USEDEP}] )
	incomfort? ( ~dev-python/incomfort-client-0.4.0[${PYTHON_USEDEP}] )
	influxdb? ( ~dev-python/influxdb-5.2.3[${PYTHON_USEDEP}] )
	insteon? ( ~dev-python/insteonplm-0.16.5[${PYTHON_USEDEP}] )
	iota? ( ~dev-python/PyOTA-2.0.5[${PYTHON_USEDEP}] )
	iperf3? ( ~dev-python/iperf3-0.1.11[${PYTHON_USEDEP}] )
	ipma? ( ~dev-python/pyipma-1.2.1[${PYTHON_USEDEP}] )
	iqvia? ( ~dev-python/numpy-1.17.4[${PYTHON_USEDEP}]
		   ~dev-python/pyiqvia-0.2.1[${PYTHON_USEDEP}] )
	irish_rail_transport? ( ~dev-python/pyirishrail-0.0.2[${PYTHON_USEDEP}] )
	islamic_prayer_times? ( ~dev-python/prayer_times_calculator-0.0.3[${PYTHON_USEDEP}] )
	iss? ( ~dev-python/pyiss-1.0.1[${PYTHON_USEDEP}] )
	isy994? ( ~dev-python/PyISY-1.1.2[${PYTHON_USEDEP}] )
	itach? ( ~dev-python/pyitachip2ir-0.0.7[${PYTHON_USEDEP}] )
	izone? ( ~dev-python/python-izone-1.1.1[${PYTHON_USEDEP}] )
	jewish_calendar? ( ~dev-python/hdate-0.9.3[${PYTHON_USEDEP}] )
	joaoapps_join? ( ~dev-python/python-join-api-0.0.4[${PYTHON_USEDEP}] )
	juicenet? ( ~dev-python/python-juicenet-0.1.6[${PYTHON_USEDEP}] )
	kaiterra? ( ~dev-python/kaiterra-async-client-0.0.2[${PYTHON_USEDEP}] )
	keba? ( ~dev-python/keba-kecontact-0.2.0[${PYTHON_USEDEP}] )
	keenetic_ndms2? ( ~dev-python/ndms2-client-0.0.11[${PYTHON_USEDEP}] )
	keyboard? ( ~dev-python/PyUserInput-0.1.11[${PYTHON_USEDEP}] )
	keyboard_remote? ( ~dev-python/evdev-1.1.2[${PYTHON_USEDEP}]
					 ~dev-python/aionotify-0.2.0[${PYTHON_USEDEP}] )
	kira? ( ~dev-python/pykira-0.1.1[${PYTHON_USEDEP}] )
	kiwi? ( ~dev-python/kiwiki-client-0.1.1[${PYTHON_USEDEP}] )
	knx? ( ~dev-python/xknx-0.11.2[${PYTHON_USEDEP}] )
	kodi? ( ~dev-python/jsonrpc-async-0.6[${PYTHON_USEDEP}]
		  ~dev-python/jsonrpc-websocket-0.6[${PYTHON_USEDEP}] )
	konnected? ( ~dev-python/konnected-0.1.5[${PYTHON_USEDEP}] )
	kwb? ( ~dev-python/pykwb-0.0.8[${PYTHON_USEDEP}] )
	lametric? ( ~dev-python/lmnotify-0.0.4[${PYTHON_USEDEP}] )
	lastfm? ( ~dev-python/pylast-3.1.0[${PYTHON_USEDEP}] )
	launch_library? ( ~dev-python/pylaunches-0.2.0[${PYTHON_USEDEP}] )
	lcn? ( ~dev-python/pypck-0.6.3[${PYTHON_USEDEP}] )
	lg_netcast? ( ~dev-python/pylgnetcast-homeassistant-0.2.0[${PYTHON_USEDEP}] )
	lg_soundbar? ( ~dev-python/temescal-0.1[${PYTHON_USEDEP}] )
	life360? ( ~dev-python/life360-4.1.1[${PYTHON_USEDEP}] )
	lifx? ( ~dev-python/aiolifx-0.6.7[${PYTHON_USEDEP}]
		  ~dev-python/aiolifx-effects-0.2.2[${PYTHON_USEDEP}] )
	lifx_legacy? ( ~dev-python/liffylights-0.9.4[${PYTHON_USEDEP}] )
	lightwave? ( ~dev-python/lightwave-0.15[${PYTHON_USEDEP}] )
	limitlessled? ( ~dev-python/limitlessled-1.1.3[${PYTHON_USEDEP}] )
	linky? ( ~dev-python/pylinky-0.4.0[${PYTHON_USEDEP}] )
	linode? ( ~dev-python/linode-api-4.1.9_beta1[${PYTHON_USEDEP}] )
	linux_battery? ( ~dev-python/batinfo-0.4.2[${PYTHON_USEDEP}] )
	lirc? ( ~dev-python/python-lirc-1.2.3[${PYTHON_USEDEP}] )
	litejet? ( ~dev-python/pylitejet-0.1[${PYTHON_USEDEP}] )
	liveboxplaytv? ( ~dev-python/liveboxplaytv-2.0.2[${PYTHON_USEDEP}]
				   ~dev-python/pyteleloisirs-3.5[${PYTHON_USEDEP}] )
	logi_circle? ( ~dev-python/logi-circle-0.2.2[${PYTHON_USEDEP}] )
	london_underground? ( ~dev-python/london-tube-status-0.2[${PYTHON_USEDEP}] )
	loopenergy? ( ~dev-python/pyloopenergy-0.1.3[${PYTHON_USEDEP}] )
	luci? ( ~dev-python/openwrt-luci-rpc-1.1.2[${PYTHON_USEDEP}] )
	luftdaten? ( ~dev-python/luftdaten-0.6.3[${PYTHON_USEDEP}] )
	lupusec? ( ~dev-python/lupupy-0.0.18[${PYTHON_USEDEP}] )
	lutron? ( ~dev-python/pylutron-0.2.5[${PYTHON_USEDEP}] )
	lutron_caseta? ( ~dev-python/pylutron-caseta-0.5.1[${PYTHON_USEDEP}] )
	lw12wifi? ( ~dev-python/lw12-0.9.2[${PYTHON_USEDEP}] )
	lyft? ( ~dev-python/lyft_rides-0.2[${PYTHON_USEDEP}] )
	magicseaweed? ( ~dev-python/magicseaweed-1.0.3[${PYTHON_USEDEP}] )
	mailgun? ( ~dev-python/pymailgunner-1.4[${PYTHON_USEDEP}] )
	mastodon? ( ~dev-python/Mastodon-py-1.5.0[${PYTHON_USEDEP}] )
	matrix? ( ~dev-python/matrix-client-0.2.0[${PYTHON_USEDEP}] )
	maxcube? ( ~dev-python/maxcube-api-0.1.0[${PYTHON_USEDEP}] )
	mcp23017? ( ~dev-python/RPi-GPIO-0.7.0[${PYTHON_USEDEP}]
			  ~dev-python/Adafruit-Blinka-1.2.1[${PYTHON_USEDEP}]
			  ~dev-python/adafruit-circuitpython-mcp230xx-1.1.2[${PYTHON_USEDEP}] )
	media_extractor? ( ~dev-python/youtube_dl-2019.11.28[${PYTHON_USEDEP}] )
	mediaroom? ( ~dev-python/pymediaroom-0.6.4[${PYTHON_USEDEP}] )
	melissa? ( ~dev-python/py-melissa-climate-2.0.0[${PYTHON_USEDEP}] )
	message_bird? ( ~dev-python/messagebird-1.2.0[${PYTHON_USEDEP}] )
	met? ( ~dev-python/PyMetno-0.4.6[${PYTHON_USEDEP}] )
	meteo_france? ( ~dev-python/meteofrance-0.3.7[${PYTHON_USEDEP}]
				  ~dev-python/vigilancemeteo-3.0.0[${PYTHON_USEDEP}] )
	meteoalarm? ( ~dev-python/meteoalertapi-0.1.6[${PYTHON_USEDEP}] )
	metoffice? ( ~dev-python/datapoint-0.4.3[${PYTHON_USEDEP}] )
	mfi? ( ~dev-python/mficlient-0.3.0[${PYTHON_USEDEP}] )
	mhz19? ( ~dev-python/pmsensor-0.4[${PYTHON_USEDEP}] )
	microsoft? ( ~dev-python/pycsspeechtts-1.0.3[${PYTHON_USEDEP}] )
	miflora? ( ~dev-python/bluepy-1.1.4[${PYTHON_USEDEP}] )
	mikrotik? ( ~dev-python/librouteros-2.3.0[${PYTHON_USEDEP}] )
	mill? ( ~dev-python/millheater-0.3.4[${PYTHON_USEDEP}] )
	minio? ( ~dev-python/minio-4.0.9[${PYTHON_USEDEP}] )
	mitemp_bt? ( ~dev-python/mitemp-bt-0.0.3[${PYTHON_USEDEP}] )
	mobile_app? ( ~dev-python/PyNaCl-1.3.0[${PYTHON_USEDEP}] )
	mochad? ( ~dev-python/pymochad-0.2.0[${PYTHON_USEDEP}] )
	modbus? ( ~dev-python/pymodbus-1.5.2[${PYTHON_USEDEP}] )
	modem_callerid? ( ~dev-python/basicmodem-0.7[${PYTHON_USEDEP}] )
	monoprice? ( ~dev-python/pymonoprice-0.3[${PYTHON_USEDEP}] )
	mopar? ( ~dev-python/motorparts-1.1.0[${PYTHON_USEDEP}] )
	mpd? ( ~dev-python/python-mpd2-1.0.0[${PYTHON_USEDEP}] )
	mqtt? ( ~dev-python/hbmqtt-0.9.5[${PYTHON_USEDEP}]
		  ~dev-python/paho-mqtt-1.5.0[${PYTHON_USEDEP}] )
	msteams? ( ~dev-python/pymsteams-0.1.12[${PYTHON_USEDEP}] )
	mvglive? ( ~dev-python/PyMVGLive-1.1.4[${PYTHON_USEDEP}] )
	mychevy? ( ~dev-python/mychevy-1.2.0[${PYTHON_USEDEP}] )
	mycroft? ( ~dev-python/mycroftapi-2.0[${PYTHON_USEDEP}] )
	myq? ( ~dev-python/pymyq-2.0.1[${PYTHON_USEDEP}] )
	mysensors? ( ~dev-python/pymysensors-0.18.0[${PYTHON_USEDEP}] )
	mystrom? ( ~dev-python/python-mystrom-0.5.0[${PYTHON_USEDEP}] )
	mythicbeastsdns? ( ~dev-python/mbddns-0.1.2[${PYTHON_USEDEP}] )
	n26? ( ~dev-python/n26-0.2.7[${PYTHON_USEDEP}] )
	nad? ( ~dev-python/nad_receiver-0.0.11[${PYTHON_USEDEP}] )
	namecheapdns? ( ~dev-python/defusedxml-0.6.0[${PYTHON_USEDEP}] )
	nanoleaf? ( ~dev-python/pynanoleaf-0.0.5[${PYTHON_USEDEP}] )
	neato? ( ~dev-python/pybotvac-0.0.17[${PYTHON_USEDEP}] )
	nederlandse_spoorwegen? ( ~dev-python/nsapi-2.7.4[${PYTHON_USEDEP}] )
	nello? ( ~dev-python/pynello-2.0.2[${PYTHON_USEDEP}] )
	ness_alarm? ( ~dev-python/nessclient-0.9.15[${PYTHON_USEDEP}] )
	nest? ( ~dev-python/python-nest-4.1.0[${PYTHON_USEDEP}] )
	netatmo? ( ~dev-python/pyatmo-3.1.0[${PYTHON_USEDEP}] )
	netdata? ( ~dev-python/netdata-0.1.2[${PYTHON_USEDEP}] )
	netgear? ( ~dev-python/pynetgear-0.6.1[${PYTHON_USEDEP}] )
	netgear_lte? ( ~dev-python/eternalegypt-0.0.11[${PYTHON_USEDEP}] )
	netio? ( ~dev-python/pynetio-0.1.9.1[${PYTHON_USEDEP}] )
	neurio_energy? ( ~dev-python/neurio-0.3.1[${PYTHON_USEDEP}] )
	nextbus? ( ~dev-python/py-nextbusnext-0.1.4[${PYTHON_USEDEP}] )
	niko_home_control? ( ~dev-python/niko-home-control-0.2.1[${PYTHON_USEDEP}] )
	nilu? ( ~dev-python/niluclient-0.1.2[${PYTHON_USEDEP}] )
	nissan_leaf? ( ~dev-python/pycarwings2-2.9[${PYTHON_USEDEP}] )
	nmap_tracker? ( ~dev-python/python-nmap-0.6.1[${PYTHON_USEDEP}]
				  ~dev-python/getmac-0.8.1[${PYTHON_USEDEP}] )
	nmbs? ( ~dev-python/pyrail-0.0.3[${PYTHON_USEDEP}] )
	noaa_tides? ( ~dev-python/py-noaa-0.3.0[${PYTHON_USEDEP}] )
	norway_air? ( ~dev-python/PyMetno-0.4.6[${PYTHON_USEDEP}] )
	notion? ( ~dev-python/aionotion-1.1.0[${PYTHON_USEDEP}] )
	nsw_fuel_station? ( ~dev-python/nsw-fuel-api-client-1.0.10[${PYTHON_USEDEP}] )
	nsw_rural_fire_service_feed? ( ~dev-python/aio-geojson-nsw-rfs-incidents-0.1[${PYTHON_USEDEP}] )
	nuheat? ( ~dev-python/nuheat-0.3.0[${PYTHON_USEDEP}] )
	nuimo_controller? ( ~dev-python/nuimo-0.1.0[${PYTHON_USEDEP}] )
	nuki? ( ~dev-python/pynuki-1.3.3[${PYTHON_USEDEP}] )
	nut? ( ~dev-python/pynut2-2.1.2[${PYTHON_USEDEP}] )
	nws? ( ~dev-python/pynws-0.8.1[${PYTHON_USEDEP}] )
	nx584? ( ~dev-python/pynx584-0.4[${PYTHON_USEDEP}] )
	nzbget? ( ~dev-python/pynzbgetapi-0.2.0[${PYTHON_USEDEP}] )
	oasa_telematics? ( ~dev-python/oasatelematics-0.3[${PYTHON_USEDEP}] )
	obihai? ( ~dev-python/pyobihai-1.2.0[${PYTHON_USEDEP}] )
	oem? ( ~dev-python/oemthermostat-1.1[${PYTHON_USEDEP}] )
	ohmconnect? ( ~dev-python/defusedxml-0.6.0[${PYTHON_USEDEP}] )
	ombi? ( ~dev-python/pyombi-0.1.10[${PYTHON_USEDEP}] )
	onkyo? ( ~dev-python/onkyo-eiscp-1.2.7[${PYTHON_USEDEP}] )
	onvif? ( ~dev-python/onvif-zeep-async-0.2.0[${PYTHON_USEDEP}] )
	opencv? ( ~dev-python/numpy-1.17.4[${PYTHON_USEDEP}] )
	openevse? ( ~dev-python/openevsewifi-0.4[${PYTHON_USEDEP}] )
	openhome? ( ~dev-python/openhomedevice-0.6.3[${PYTHON_USEDEP}] )
	opensensemap? ( ~dev-python/opensensemap-api-0.1.5[${PYTHON_USEDEP}] )
	opentherm_gw? ( ~dev-python/pyotgw-0.5_beta1[${PYTHON_USEDEP}] )
	openuv? ( ~dev-python/pyopenuv-1.0.9[${PYTHON_USEDEP}] )
	openweathermap? ( ~dev-python/pyowm-2.10.0[${PYTHON_USEDEP}] )
	opple? ( ~dev-python/pyoppleio-1.0.5[${PYTHON_USEDEP}] )
	orangepi_gpio? ( ~dev-python/OPi-GPIO-0.4.0[${PYTHON_USEDEP}] )
	oru? ( ~dev-python/oru-0.1.9[${PYTHON_USEDEP}] )
	orvibo? ( ~dev-python/orvibo-1.1.1[${PYTHON_USEDEP}] )
	osramlightify? ( ~dev-python/lightify-1.0.7.2[${PYTHON_USEDEP}] )
	otp? ( ~dev-python/pyotp-2.3.0[${PYTHON_USEDEP}] )
	owlet? ( ~dev-python/pyowlet-1.0.3[${PYTHON_USEDEP}] )
	owntracks? ( ~dev-python/PyNaCl-1.3.0[${PYTHON_USEDEP}] )
	panasonic_bluray? ( ~dev-python/panacotta-0.1[${PYTHON_USEDEP}] )
	panasonic_viera? ( ~dev-python/panasonic-viera-0.3.2[${PYTHON_USEDEP}]
					 ~dev-python/wakeonlan-1.1.6[${PYTHON_USEDEP}] )
	pandora? ( ~dev-python/pexpect-4.6.0[${PYTHON_USEDEP}] )
	pcal9535a? ( ~dev-python/pcal9535a-0.7[${PYTHON_USEDEP}] )
	pencom? ( ~dev-python/pencompy-0.0.3[${PYTHON_USEDEP}] )
	philips_js? ( ~dev-python/ha-philipsjs-0.0.8[${PYTHON_USEDEP}] )
	pi_hole? ( ~dev-python/hole-0.5.0[${PYTHON_USEDEP}] )
	piglow? ( ~dev-python/piglow-1.2.4[${PYTHON_USEDEP}] )
	pilight? ( ~dev-python/pilight-0.1.1[${PYTHON_USEDEP}] )
	pjlink? ( ~dev-python/pypjlink2-1.2.0[${PYTHON_USEDEP}] )
	plex? ( ~dev-python/PlexAPI-3.3.0[${PYTHON_USEDEP}]
		  ~dev-python/plexauth-0.0.5[${PYTHON_USEDEP}]
		  ~dev-python/plexwebsocket-0.0.6[${PYTHON_USEDEP}] )
	plugwise? ( ~dev-python/haanna-0.13.5[${PYTHON_USEDEP}] )
	plum_lightpad? ( ~dev-python/plumlightpad-0.0.11[${PYTHON_USEDEP}] )
	pocketcasts? ( ~dev-python/pocketcasts-0.1[${PYTHON_USEDEP}] )
	point? ( ~dev-python/pypoint-1.1.2[${PYTHON_USEDEP}] )
	postnl? ( ~dev-python/postnl-api-1.2.2[${PYTHON_USEDEP}] )
	prezzibenzina? ( ~dev-python/prezzibenzina-py-1.1.4[${PYTHON_USEDEP}] )
	proliphix? ( ~dev-python/proliphix-0.4.1[${PYTHON_USEDEP}] )
	prometheus? ( ~dev-python/prometheus_client-0.7.1[${PYTHON_USEDEP}] )
	proxmoxve? ( ~dev-python/proxmoxer-1.0.3[${PYTHON_USEDEP}] )
	proxy? ( ~dev-python/pillow-6.2.1[${PYTHON_USEDEP}] )
	ps4? ( ~dev-python/pyps4-2ndscreen-1.0.3[${PYTHON_USEDEP}] )
	ptvsd? ( ~dev-python/ptvsd-4.2.8[${PYTHON_USEDEP}] )
	pushbullet? ( ~dev-python/pushbullet-py-0.11.0[${PYTHON_USEDEP}] )
	pushetta? ( ~dev-python/pushetta-1.0.15[${PYTHON_USEDEP}] )
	pushover? ( ~dev-python/python-pushover-0.4[${PYTHON_USEDEP}] )
	python_script? ( ~dev-python/RestrictedPython-5.0[${PYTHON_USEDEP}] )
	qbittorrent? ( ~dev-python/python-qbittorrent-0.3.1[${PYTHON_USEDEP}] )
	qld_bushfire? ( ~dev-python/georss-qld-bushfire-alert-client-0.3[${PYTHON_USEDEP}] )
	qnap? ( ~dev-python/qnapstats-0.2.7[${PYTHON_USEDEP}] )
	qrcode? ( ~dev-python/pillow-6.2.1[${PYTHON_USEDEP}]
			~dev-python/pyzbar-0.1.7[${PYTHON_USEDEP}] )
	quantum_gateway? ( ~dev-python/quantum-gateway-0.0.5[${PYTHON_USEDEP}] )
	qwikswitch? ( ~dev-python/pyqwikswitch-0.93[${PYTHON_USEDEP}] )
	rachio? ( ~dev-python/RachioPy-0.1.3[${PYTHON_USEDEP}] )
	radiotherm? ( ~dev-python/radiotherm-2.0.0[${PYTHON_USEDEP}] )
	rainbird? ( ~dev-python/pyrainbird-0.4.1[${PYTHON_USEDEP}] )
	raincloud? ( ~dev-python/raincloudy-0.0.7[${PYTHON_USEDEP}] )
	rainforest_eagle? ( ~dev-python/eagle200-reader-0.2.1[${PYTHON_USEDEP}] )
	rainmachine? ( ~dev-python/regenmaschine-1.5.1[${PYTHON_USEDEP}] )
	raspihats? ( ~dev-python/raspihats-2.2.3[${PYTHON_USEDEP}]
			   ~dev-python/smbus-cffi-0.5.1[${PYTHON_USEDEP}] )
	raspyrfm? ( ~dev-python/raspyrfm-client-1.2.8[${PYTHON_USEDEP}] )
	recollect_waste? ( ~dev-python/recollect-waste-1.0.1[${PYTHON_USEDEP}] )
	recorder? ( ~dev-python/sqlalchemy-1.3.11[${PYTHON_USEDEP}] )
	recswitch? ( ~dev-python/pyrecswitch-1.0.2[${PYTHON_USEDEP}] )
	reddit? ( ~dev-python/praw-6.4.0[${PYTHON_USEDEP}] )
	rejseplanen? ( ~dev-python/rjpl-0.3.5[${PYTHON_USEDEP}] )
	remember_the_milk? ( ~dev-python/RtmAPI-0.7.2[${PYTHON_USEDEP}]
					   ~dev-python/httplib2-0.10.3[${PYTHON_USEDEP}] )
	remote_rpi_gpio? ( ~dev-python/gpiozero-1.5.1[${PYTHON_USEDEP}] )
	repetier? ( ~dev-python/pyrepetier-3.0.5[${PYTHON_USEDEP}] )
	rflink? ( ~dev-python/rflink-0.0.46[${PYTHON_USEDEP}] )
	rfxtrx? ( ~dev-python/pyRFXtrx-0.24[${PYTHON_USEDEP}] )
	ring? ( ~dev-python/ring-doorbell-0.2.8[${PYTHON_USEDEP}] )
	ripple? ( ~dev-python/python-ripple-api-0.0.3[${PYTHON_USEDEP}] )
	rmvtransport? ( ~dev-python/PyRMVtransport-0.2.9[${PYTHON_USEDEP}] )
	rocketchat? ( ~dev-python/rocketchat-API-0.6.1[${PYTHON_USEDEP}] )
	roku? ( ~dev-python/roku-4.0.0[${PYTHON_USEDEP}] )
	route53? ( ~dev-python/boto3-1.9.252[${PYTHON_USEDEP}]
			 ~dev-python/ipify-1.0.0[${PYTHON_USEDEP}] )
	rova? ( ~dev-python/rova-0.1.0[${PYTHON_USEDEP}] )
	rpi_gpio? ( ~dev-python/RPi-GPIO-0.7.0[${PYTHON_USEDEP}] )
	rpi_gpio_pwm? ( ~dev-python/pwmled-1.4.1[${PYTHON_USEDEP}] )
	rpi_pfio? ( ~dev-python/pifacecommon-4.2.2[${PYTHON_USEDEP}]
			  ~dev-python/pifacedigitalio-3.0.5[${PYTHON_USEDEP}] )
	rpi_rf? ( ~dev-python/rpi-rf-0.9.7[${PYTHON_USEDEP}] )
	russound_rio? ( ~dev-python/russound-rio-0.1.7[${PYTHON_USEDEP}] )
	russound_rnet? ( ~dev-python/russound-0.1.9[${PYTHON_USEDEP}] )
	sabnzbd? ( ~dev-python/pysabnzbd-1.1.0[${PYTHON_USEDEP}] )
	saj? ( ~dev-python/pysaj-0.0.14[${PYTHON_USEDEP}] )
	samsungtv? ( ~dev-python/samsungctl-0.7.1[${PYTHON_USEDEP}]
			   ~dev-python/wakeonlan-1.1.6[${PYTHON_USEDEP}] )
	satel_integra? ( ~dev-python/satel-integra-0.3.4[${PYTHON_USEDEP}] )
	scrape? ( ~dev-python/beautifulsoup-4.8.1[${PYTHON_USEDEP}] )
	scsgate? ( ~dev-python/scsgate-0.1.0[${PYTHON_USEDEP}] )
	sendgrid? ( ~dev-python/sendgrid-6.1.0[${PYTHON_USEDEP}] )
	sense? ( ~dev-python/sense-energy-0.7.0[${PYTHON_USEDEP}] )
	sensehat? ( ~dev-python/python-sense-hat-2.2.0[${PYTHON_USEDEP}] )
	sensibo? ( ~dev-python/pysensibo-1.0.3[${PYTHON_USEDEP}] )
	serial? ( ~dev-python/pyserial-asyncio-0.4[${PYTHON_USEDEP}] )
	serial_pm? ( ~dev-python/pmsensor-0.4[${PYTHON_USEDEP}] )
	sesame? ( ~dev-python/pysesame2-1.0.1[${PYTHON_USEDEP}] )
	seventeentrack? ( ~dev-python/py17track-2.2.2[${PYTHON_USEDEP}] )
	shiftr? ( ~dev-python/paho-mqtt-1.5.0[${PYTHON_USEDEP}] )
	shodan? ( ~dev-python/shodan-1.20.0[${PYTHON_USEDEP}] )
	sht31? ( ~dev-python/Adafruit-GPIO-1.0.3[${PYTHON_USEDEP}]
		   ~dev-python/Adafruit-SHT31-1.0.2[${PYTHON_USEDEP}] )
	simplepush? ( ~dev-python/simplepush-1.1.4[${PYTHON_USEDEP}] )
	simplisafe? ( ~dev-python/simplisafe-python-5.3.6[${PYTHON_USEDEP}] )
	sinch? ( ~dev-python/clx-sdk-xms-1.0.0[${PYTHON_USEDEP}] )
	sisyphus? ( ~dev-python/sisyphus-control-2.2.1[${PYTHON_USEDEP}] )
	skybeacon? ( ~dev-python/pygatt-4.0.5[${PYTHON_USEDEP}] )
	skybell? ( ~dev-python/skybellpy-0.4.0[${PYTHON_USEDEP}] )
	slack? ( ~dev-python/slacker-0.13.0[${PYTHON_USEDEP}] )
	sleepiq? ( ~dev-python/sleepyq-0.7[${PYTHON_USEDEP}] )
	slide? ( ~dev-python/goslide-api-0.5.1[${PYTHON_USEDEP}] )
	sma? ( ~dev-python/pysma-0.3.4[${PYTHON_USEDEP}] )
	smappee? ( ~dev-python/smappy-0.2.16[${PYTHON_USEDEP}] )
	smarthab? ( ~dev-python/SmartHab-0.20[${PYTHON_USEDEP}] )
	smartthings? ( ~dev-python/pysmartapp-0.3.2[${PYTHON_USEDEP}]
				 ~dev-python/pysmartthings-0.6.9[${PYTHON_USEDEP}] )
	smarty? ( ~dev-python/pysmarty-0.8[${PYTHON_USEDEP}] )
	smhi? ( ~dev-python/smhi-pkg-1.0.10[${PYTHON_USEDEP}] )
	snapcast? ( ~dev-python/snapcast-2.0.10[${PYTHON_USEDEP}] )
	snmp? ( ~dev-python/pysnmp-4.4.12[${PYTHON_USEDEP}] )
	sochain? ( ~dev-python/python-sochain-api-0.0.2[${PYTHON_USEDEP}] )
	socialblade? ( ~dev-python/socialbladeclient-0.2[${PYTHON_USEDEP}] )
	solaredge? ( ~dev-python/solaredge-0.0.2[${PYTHON_USEDEP}]
			   ~dev-python/stringcase-1.2.0[${PYTHON_USEDEP}] )
	solaredge_local? ( ~dev-python/solaredge-local-0.2.0[${PYTHON_USEDEP}] )
	solarlog? ( ~dev-python/sunwatcher-0.2.1[${PYTHON_USEDEP}] )
	solax? ( ~dev-python/solax-0.2.2[${PYTHON_USEDEP}] )
	soma? ( ~dev-python/pysoma-0.0.10[${PYTHON_USEDEP}] )
	somfy? ( ~dev-python/pymfy-0.7.1[${PYTHON_USEDEP}] )
	somfy_mylink? ( ~dev-python/somfy-mylink-synergy-1.0.6[${PYTHON_USEDEP}] )
	songpal? ( ~dev-python/python-songpal-0.11.2[${PYTHON_USEDEP}] )
	sonos? ( ~dev-python/pysonos-0.0.24[${PYTHON_USEDEP}] )
	sony_projector? ( ~dev-python/pySDCP-1[${PYTHON_USEDEP}] )
	soundtouch? ( ~dev-python/libsoundtouch-0.7.2[${PYTHON_USEDEP}] )
	spc? ( ~dev-python/pyspcwebgw-0.4.0[${PYTHON_USEDEP}] )
	speedtestdotnet? ( ~dev-python/speedtest-cli-2.1.2[${PYTHON_USEDEP}] )
	spider? ( ~dev-python/spiderpy-1.3.1[${PYTHON_USEDEP}] )
	spotcrime? ( ~dev-python/spotcrime-1.0.4[${PYTHON_USEDEP}] )
	spotify? ( ~dev-python/spotipy-homeassistant-2.4.4[${PYTHON_USEDEP}] )
	sql? ( ~dev-python/sqlalchemy-1.3.11[${PYTHON_USEDEP}] )
	ssdp? ( ~dev-python/defusedxml-0.6.0[${PYTHON_USEDEP}]
		  ~dev-python/netdisco-2.6.0[${PYTHON_USEDEP}] )
	starline? ( ~dev-python/starline-0.1.3[${PYTHON_USEDEP}] )
	starlingbank? ( ~dev-python/starlingbank-3.2[${PYTHON_USEDEP}] )
	startca? ( ~dev-python/xmltodict-0.12.0[${PYTHON_USEDEP}] )
	statsd? ( ~dev-python/statsd-3.2.1[${PYTHON_USEDEP}] )
	steam_online? ( ~dev-python/steamodd-4.21[${PYTHON_USEDEP}] )
	stiebel_eltron? ( ~dev-python/pystiebeleltron-0.0.1[${PYTHON_USEDEP}] )
	stream? ( ~dev-python/av-6.1.2[${PYTHON_USEDEP}] )
	streamlabswater? ( ~dev-python/streamlabswater-1.0.1[${PYTHON_USEDEP}] )
	suez_water? ( ~dev-python/pysuez-0.1.17[${PYTHON_USEDEP}] )
	supla? ( ~dev-python/pysupla-0.0.3[${PYTHON_USEDEP}] )
	swiss_hydrological_data? ( ~dev-python/swisshydrodata-0.0.3[${PYTHON_USEDEP}] )
	swiss_public_transport? ( ~dev-python/python_opendata_transport-0.1.4[${PYTHON_USEDEP}] )
	switchbot? ( ~dev-python/PySwitchbot-0.6.2[${PYTHON_USEDEP}] )
	switcher_kis? ( ~dev-python/aioswitcher-2019.4.26[${PYTHON_USEDEP}] )
	switchmate? ( ~dev-python/PySwitchmate-0.4.6[${PYTHON_USEDEP}] )
	syncthru? ( ~dev-python/PySyncThru-0.5.0[${PYTHON_USEDEP}] )
	synology? ( ~dev-python/py-synology-0.2.0[${PYTHON_USEDEP}] )
	synology_srm? ( ~dev-python/synology-srm-0.0.7[${PYTHON_USEDEP}] )
	synologydsm? ( ~dev-python/python-synology-0.2.0[${PYTHON_USEDEP}] )
	systemmonitor? ( ~dev-python/psutil-5.6.7[${PYTHON_USEDEP}] )
	tado? ( ~dev-python/python-tado-0.2.9[${PYTHON_USEDEP}] )
	tahoma? ( ~dev-python/tahoma-api-0.0.14[${PYTHON_USEDEP}] )
	tank_utility? ( ~dev-python/tank_utility-1.4.0[${PYTHON_USEDEP}] )
	tapsaff? ( ~dev-python/tapsaff-0.2.1[${PYTHON_USEDEP}] )
	tautulli? ( ~dev-python/pytautulli-0.5.0[${PYTHON_USEDEP}] )
	ted5000? ( ~dev-python/xmltodict-0.12.0[${PYTHON_USEDEP}] )
	telegram_bot? ( ~dev-python/python-telegram-bot-11.1.0[${PYTHON_USEDEP}]
				  ~dev-python/PySocks-1.7.1[${PYTHON_USEDEP}] )
	tellduslive? ( ~dev-python/tellduslive-0.10.10[${PYTHON_USEDEP}] )
	tellstick? ( ~dev-python/tellcore-net-0.4[${PYTHON_USEDEP}]
			   ~dev-python/tellcore-py-1.1.2[${PYTHON_USEDEP}] )
	temper? ( ~dev-python/temperusb-1.5.3[${PYTHON_USEDEP}] )
	tensorflow? ( ~dev-python/numpy-1.17.4[${PYTHON_USEDEP}] )
	tesla? ( ~dev-python/teslajsonpy-0.2.0[${PYTHON_USEDEP}] )
	tfiac? ( ~dev-python/pytfiac-0.4[${PYTHON_USEDEP}] )
	thermoworks_smoke? ( ~dev-python/stringcase-1.2.0[${PYTHON_USEDEP}]
					   ~dev-python/thermoworks-smoke-0.1.8[${PYTHON_USEDEP}] )
	thingspeak? ( ~dev-python/thingspeak-1.0.0[${PYTHON_USEDEP}] )
	thinkingcleaner? ( ~dev-python/pythinkingcleaner-0.0.3[${PYTHON_USEDEP}] )
	tibber? ( ~dev-python/pyTibber-0.12.0[${PYTHON_USEDEP}] )
	tikteck? ( ~dev-python/tikteck-0.4[${PYTHON_USEDEP}] )
	tile? ( ~dev-python/pytile-3.0.1[${PYTHON_USEDEP}] )
	todoist? ( ~dev-python/todoist-python-8.0.0[${PYTHON_USEDEP}] )
	tof? ( ~dev-python/VL53L1X2-0.1.5[${PYTHON_USEDEP}] )
	toon? ( ~dev-python/toonapilib-3.2.4[${PYTHON_USEDEP}] )
	totalconnect? ( ~dev-python/total-connect-client-0.28[${PYTHON_USEDEP}] )
	touchline? ( ~dev-python/pytouchline-0.7[${PYTHON_USEDEP}] )
	tplink? ( ~dev-python/pyHS100-0.3.5[${PYTHON_USEDEP}] )
	tplink_lte? ( ~dev-python/tp-connected-0.0.4[${PYTHON_USEDEP}] )
	traccar? ( ~dev-python/pytraccar-0.9.0[${PYTHON_USEDEP}]
			 ~dev-python/stringcase-1.2.0[${PYTHON_USEDEP}] )
	trackr? ( ~dev-python/pytrackr-0.0.5[${PYTHON_USEDEP}] )
	tradfri? ( ~dev-python/pytradfri-6.4.0[${PYTHON_USEDEP}] )
	trafikverket_train? ( ~dev-python/pytrafikverket-0.1.5.9[${PYTHON_USEDEP}] )
	trafikverket_weatherstation? ( ~dev-python/pytrafikverket-0.1.5.9[${PYTHON_USEDEP}] )
	transmission? ( ~dev-python/transmissionrpc-0.11[${PYTHON_USEDEP}] )
	transport_nsw? ( ~dev-python/PyTransportNSW-0.1.1[${PYTHON_USEDEP}] )
	travisci? ( ~dev-python/TravisPy-0.3.5[${PYTHON_USEDEP}] )
	trend? ( ~dev-python/numpy-1.17.4[${PYTHON_USEDEP}] )
	tuya? ( ~dev-python/tuyaha-0.0.4[${PYTHON_USEDEP}] )
	twentemilieu? ( ~dev-python/twentemilieu-0.1.0[${PYTHON_USEDEP}] )
	twilio? ( ~dev-python/twilio-6.32.0[${PYTHON_USEDEP}] )
	twitch? ( ~dev-python/python-twitch-client-0.6.0[${PYTHON_USEDEP}] )
	twitter? ( ~dev-python/TwitterAPI-2.5.10[${PYTHON_USEDEP}] )
	ubee? ( ~dev-python/pyubee-0.7[${PYTHON_USEDEP}] )
	unifi? ( ~dev-python/aiounifi-11[${PYTHON_USEDEP}] )
	unifi_direct? ( ~dev-python/pexpect-4.6.0[${PYTHON_USEDEP}] )
	unifiled? ( ~dev-python/unifiled-0.11[${PYTHON_USEDEP}] )
	upc_connect? ( ~dev-python/connect-box-0.2.5[${PYTHON_USEDEP}] )
	upcloud? ( ~dev-python/upcloud-api-0.4.5[${PYTHON_USEDEP}] )
	updater? ( ~dev-python/distro-1.4.0[${PYTHON_USEDEP}] )
	upnp? ( ~dev-python/async-upnp-client-0.14.12[${PYTHON_USEDEP}] )
	uscis? ( ~dev-python/uscisstatus-0.1.1[${PYTHON_USEDEP}] )
	usgs_earthquakes_feed? ( ~dev-python/geojson-client-0.4[${PYTHON_USEDEP}] )
	uvc? ( ~dev-python/uvcclient-0.11.0[${PYTHON_USEDEP}] )
	vallox? ( ~dev-python/vallox-websocket-api-2.2.0[${PYTHON_USEDEP}] )
	vasttrafik? ( ~dev-python/vtjp-0.1.14[${PYTHON_USEDEP}] )
	velbus? ( ~dev-python/python-velbus-2.0.27[${PYTHON_USEDEP}] )
	velux? ( ~dev-python/pyvlx-0.2.11[${PYTHON_USEDEP}] )
	venstar? ( ~dev-python/venstarcolortouch-0.9[${PYTHON_USEDEP}] )
	vera? ( ~dev-python/pyvera-0.3.6[${PYTHON_USEDEP}] )
	verisure? ( ~dev-python/jsonpath-0.82[${PYTHON_USEDEP}]
			  ~dev-python/vsure-1.5.4[${PYTHON_USEDEP}] )
	versasense? ( ~dev-python/pyversasense-0.0.6[${PYTHON_USEDEP}] )
	version? ( ~dev-python/pyhaversion-3.1.0[${PYTHON_USEDEP}] )
	vesync? ( ~dev-python/pyvesync-1.1.0[${PYTHON_USEDEP}] )
	vicare? ( ~dev-python/PyViCare-0.1.2[${PYTHON_USEDEP}] )
	vivotek? ( ~dev-python/libpyvivotek-0.3.1[${PYTHON_USEDEP}] )
	vizio? ( ~dev-python/pyvizio-0.0.7[${PYTHON_USEDEP}] )
	vlc? ( ~dev-python/python-vlc-1.1.2[${PYTHON_USEDEP}] )
	vlc_telnet? ( ~dev-python/python-telnet-vlc-1.0.4[${PYTHON_USEDEP}] )
	volkszaehler? ( ~dev-python/volkszaehler-0.1.2[${PYTHON_USEDEP}] )
	vultr? ( ~dev-python/vultr-0.1.2[${PYTHON_USEDEP}] )
	w800rf32? ( ~dev-python/pyW800rf32-0.1[${PYTHON_USEDEP}] )
	wake_on_lan? ( ~dev-python/wakeonlan-1.1.6[${PYTHON_USEDEP}] )
	waqi? ( ~dev-python/waqiasync-1.0.0[${PYTHON_USEDEP}] )
	waterfurnace? ( ~dev-python/waterfurnace-1.1.0[${PYTHON_USEDEP}] )
	watson_iot? ( ~dev-python/ibmiotf-0.3.4[${PYTHON_USEDEP}] )
	watson_tts? ( ~dev-python/ibm-watson-4.0.1[${PYTHON_USEDEP}] )
	waze_travel_time? ( ~dev-python/WazeRouteCalculator-0.12[${PYTHON_USEDEP}] )
	webostv? ( ~dev-python/pylgtv-0.1.9[${PYTHON_USEDEP}]
			 ~dev-python/websockets-6.0[${PYTHON_USEDEP}] )
	wemo? ( ~dev-python/pywemo-0.4.34[${PYTHON_USEDEP}] )
	whois? ( ~dev-python/python-whois-0.7.2[${PYTHON_USEDEP}] )
	wink? ( ~dev-python/pubnubsub-handler-1.0.8[${PYTHON_USEDEP}]
		  ~dev-python/python-wink-1.10.5[${PYTHON_USEDEP}] )
	wirelesstag? ( ~dev-python/wirelesstagpy-0.4.0[${PYTHON_USEDEP}] )
	withings? ( ~dev-python/withings-api-2.1.3[${PYTHON_USEDEP}] )
	wled? ( ~dev-python/wled-0.1.0[${PYTHON_USEDEP}] )
	workday? ( ~dev-python/holidays-0.9.11[${PYTHON_USEDEP}] )
	wunderlist? ( ~dev-python/wunderpy2-0.1.6[${PYTHON_USEDEP}] )
	wwlln? ( ~dev-python/aiowwlln-2.0.2[${PYTHON_USEDEP}] )
	xbox_live? ( ~dev-python/xboxapi-0.1.1[${PYTHON_USEDEP}] )
	xeoma? ( ~dev-python/pyxeoma-1.4.1[${PYTHON_USEDEP}] )
	xfinity? ( ~dev-python/xfinity-gateway-0.0.4[${PYTHON_USEDEP}] )
	xiaomi_aqara? ( ~dev-python/PyXiaomiGateway-0.12.4[${PYTHON_USEDEP}] )
	xiaomi_miio? ( ~dev-python/construct-2.9.45[${PYTHON_USEDEP}]
				 ~dev-python/python-miio-0.4.7[${PYTHON_USEDEP}] )
	xiaomi_tv? ( ~dev-python/pymitv-1.4.3[${PYTHON_USEDEP}] )
	xmpp? ( ~dev-python/slixmpp-1.4.2[${PYTHON_USEDEP}] )
	yale_smart_alarm? ( ~dev-python/yalesmartalarmclient-0.1.6[${PYTHON_USEDEP}] )
	yamaha? ( ~dev-python/rxv-0.6.0[${PYTHON_USEDEP}] )
	yamaha_musiccast? ( ~dev-python/pymusiccast-0.1.6[${PYTHON_USEDEP}] )
	yandex_transport? ( ~dev-python/ya-ma-0.3.8[${PYTHON_USEDEP}] )
	yeelight? ( ~dev-python/yeelight-0.5.0[${PYTHON_USEDEP}] )
	yeelightsunflower? ( ~dev-python/yeelightsunflower-0.0.10[${PYTHON_USEDEP}] )
	yessssms? ( ~dev-python/YesssSMS-0.4.1[${PYTHON_USEDEP}] )
	yi? ( ~dev-python/aioftp-0.12.0[${PYTHON_USEDEP}] )
	yr? ( ~dev-python/xmltodict-0.12.0[${PYTHON_USEDEP}] )
	yweather? ( ~dev-python/yahooweather-0.10[${PYTHON_USEDEP}] )
	zengge? ( ~dev-python/zengge-0.2[${PYTHON_USEDEP}] )
	zeroconf? ( ~dev-python/zeroconf-0.24.0[${PYTHON_USEDEP}] )
	zestimate? ( ~dev-python/xmltodict-0.12.0[${PYTHON_USEDEP}] )
	zha? ( ~dev-python/bellows-homeassistant-0.11.0[${PYTHON_USEDEP}]
		 ~dev-python/zha-quirks-0.0.28[${PYTHON_USEDEP}]
		 ~dev-python/zigpy-deconz-0.7.0[${PYTHON_USEDEP}]
		 ~dev-python/zigpy-homeassistant-0.11.0[${PYTHON_USEDEP}]
		 ~dev-python/zigpy-xbee-homeassistant-0.7.0[${PYTHON_USEDEP}]
		 ~dev-python/zigpy-zigate-0.5.0[${PYTHON_USEDEP}] )
	zhong_hong? ( ~dev-python/zhong-hong-hvac-1.0.9[${PYTHON_USEDEP}] )
	zigbee? ( ~dev-python/xbee-helper-0.0.7[${PYTHON_USEDEP}] )
	ziggo_mediabox_xl? ( ~dev-python/ziggo-mediabox-xl-1.1.0[${PYTHON_USEDEP}] )
	zoneminder? ( ~dev-python/zm-py-0.4.0[${PYTHON_USEDEP}] )
	zwave? ( ~dev-python/homeassistant-pyozw-0.1.7[${PYTHON_USEDEP}]
		   ~dev-python/pydispatcher-2.0.5[${PYTHON_USEDEP}] )"

DEPEND="${RDEPEND}
	test? ( ~dev-python/asynctest-0.12.2[${PYTHON_USEDEP}]
		dev-python/coverage[${PYTHON_USEDEP}]
		~dev-python/coveralls-1.2.0[${PYTHON_USEDEP}]
		~dev-python/flake8-docstrings-1.3.0[${PYTHON_USEDEP}]
		~dev-python/flake8-3.7.5[${PYTHON_USEDEP}]
		~dev-python/mock-open-1.3.1[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
		~dev-python/mypy-0.660[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}]
		~dev-python/pydocstyle-3.0.0[${PYTHON_USEDEP}]
		~dev-python/pylint-2.2.2[${PYTHON_USEDEP}]
		~dev-python/pytest-aiohttp-0.3.0[${PYTHON_USEDEP}]
		~dev-python/pytest-cov-2.6.1[${PYTHON_USEDEP}]
		~dev-python/pytest-sugar-0.9.2[${PYTHON_USEDEP}]
		~dev-python/pytest-timeout-1.3.3[${PYTHON_USEDEP}]
		~dev-python/pytest-4.2.1[${PYTHON_USEDEP}]
		~dev-python/requests-mock-1.5.2[${PYTHON_USEDEP}] )"

INSTALL_DIR="/opt/${PN}"

DISABLE_AUTOFORMATTING=1
DOC_CONTENTS="
The HA interface listens on port 8123
hass configuration is in: /etc/${PN}
daemon command line arguments are configured in: /etc/conf.d/${PN}
logging is to: /var/log/${PN}/{server,errors,stdout}.log
The sqlite db is by default in: /etc/${PN}
support at https://git.edevau.net/onkelbeh/HomeAssistantRepository
"

DOCS="README.rst"

pkg_setup() {
	enewgroup "${PN}"
	enewuser "${PN}" -1 -1 "$INSTALL_DIR" "${PN}"
}

src_prepare() {
	sed -e 's;astral==1.5;astral>=1.5;' \
		-i "setup.py" \
		-i homeassistant/package_constraints.txt

	# https://github.com/home-assistant/home-assistant/issues/28811
	if use maxcube_hack ; then
	   eapply "${FILESDIR}/maxcube_TypeError_dirty_hack.patch"
	fi

	eapply_user
}

python_install_all() {
	dodoc ${DOCS}
	distutils-r1_python_install_all
	keepdir "$INSTALL_DIR"
	keepdir "/etc/${PN}"
	fowners -R "${PN}:${PN}" "/etc/${PN}"
	keepdir "/var/log/${PN}"
	fowners -R "${PN}:${PN}" "/var/log/${PN}"
	newconfd "${FILESDIR}/${PN}.conf.d" "${PN}"
	newinitd "${FILESDIR}/${PN}.init.d" "${PN}"

	if use socat ; then
		newinitd "${FILESDIR}/socat-zwave.init.d" "socat-zwave"
		sed -i -e 's/# need socat-zwave/need socat-zwave/g' "${D}/etc/init.d/${PN}" || die
	fi

	if use mqtt ; then
		sed -i -e 's/# need mosquitto/need mosquitto/g' "${D}/etc/init.d/${PN}" || die
	fi

	insinto /etc/logrotate.d
	newins "${FILESDIR}/${PN}.logrotate" "${PN}"
	dobin "${FILESDIR}/hasstest"
	readme.gentoo_create_doc
}

pkg_postinst() {
	readme.gentoo_print_elog
}
