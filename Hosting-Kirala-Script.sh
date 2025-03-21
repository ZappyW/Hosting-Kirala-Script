printf "\033c"
echo -e "
---------=======                ++++++++++++++++**+****++++++++++++++++++++++++++++++++++++++=======
--------=======                ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=========
-------=======                 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++===========
-------=======                ++++++++++++++++++++++++++++++++++++++++++++++++++++++++==============
------========               +++++++++++++++++++++++++++++++++++++++++++++++++++++++================
-----========                +++++++++++++++++++++++++++++++++++++++++++++++++++++==================
----========                 +++++++++++++++++++++++++++++++++++++++++++++++++++====================
----========                ++++++++++++++++++++++++++++++++++++++++++++++++++======================
---========                ++++++++++++++++++++++++       ++++++++++++++++++========================
--========                 ++++++++++++++++++++               ++++++++++++==========================
-=========                +++++++++++++++++++                   +++++++=============================
-=========               +++++++++++++++++*                       ++++==============================
=========                ++++++++++++++++                          ================================ 
=========                ++++++++++++++                             ==============================  
========                +++++++++++++*                              ============================    
=======                ++++++++++++*                                ==========================      
=======                ++++++++++++                                  ========================       
=======               +++++++++++                ++                 ========================        
======                ++++++++++               ++++                 ======================          
=====                 ++++++++                +++++                 ====================            
=====                ++++++++               ++++++                  ===================             
====                +++++++                +++++++                 ==================               
====                ++++++               ++++++++=                 ================               ==
===                ++++++               +++++++++                 ================              ====
===                +++++               +++++++===                ===============               =====
===               ++++               ++++++++====                =============               =======
==                +++               +++++++=====                 ===========               =========
==                ++               +++++++======                ==========                ==========
=                ++              +++++++========               =========                ============
=                               ++++++=========                ========               ==============
                               ++++++==========               ======                 =============++
                              ++++++===========               ===                  =============++++
                             +++++==============                                 =============++++++
                            ++++================                               ==============+++++++
                           ++++==================                            =============++++++++++
                          ++++====================                         ==============+++++++++++
                         +++========================                     ==============+++++++++++++
                       ++++============================               ===============+++++++++++++++
                      ++++=================================        =================++++++++++++++++
                      ++==========================================================++++++++++++++++++
                     +==========================================================++++++++++++++++++++                
"
echo -e "\e[38;5;123mHosting Kirala Rust Server Startup Script"
sleep 5

./RustDedicated -batchmode -logfile 1 +server.port ${SERVER_PORT} +server.queryport ${QUERY_PORT} +server.identity "rust" +server.gamemode "${GAMEMODE}" +rcon.port ${RCON_PORT} +rcon.web true +rcon.password "${RCON_PASS}" +server.hostname "${HOSTNAME}" +server.level "${LEVEL}" +server.description "${DESCRIPTION}" +server.tags "${GAMEMODE},${SERVER_REGION_TAG},${WIPETYPE},${SERVER_TAGS}" +server.url "${SERVER_URL}" +server.headerimage "${SERVER_IMG}" +server.logoimage "${SERVER_LOGO}" +server.maxplayers ${MAX_PLAYERS} +rcon.password "${RCON_PASS}" +server.saveinterval ${SAVEINTERVAL} +app.publicip ${APP_PUBLIC_IP} +app.port ${APP_PORT} +wipeDayofWeek "${WIPEDAYOFWEEK}" +wipeHourofDay "${WIPEHOUROFDAY}"  $( [ -z ${MAP_URL} ] && printf %s "+server.worldsize "${WORLD_SIZE}" +server.seed "${WORLD_SEED}"" || printf %s "+server.levelurl ${MAP_URL}" ) ${ADDITIONAL_ARGS} $( if [[ ${PERFORMANCE_MODE} == "1" ]]; then printf %s '+batching.colliders "0" +gc.interval "90000" +server.encryption "0" +chicken.population "0" +ai.think "0" +ai.move'; fi )
