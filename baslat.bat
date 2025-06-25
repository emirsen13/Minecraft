@echo off
:X
title Nourse Project - Survival V2
echo Nourse Project Survival V2 Sunucusu Aciliyor...
"C:\Program Files\Java\jdk-16.0.2\bin\java.exe" -Xmx4G -Xms4G -Duser.language=en -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Daikars.new.flags=true -Dusing.aikars.flags=https://mcflags.emc.gs -jar paper.jar --nogui

echo -------------------------------------------------
echo Sunucu 30 saniye sonra yeniden baslatilacaktir.
echo Eger tekrar baslatilmasini istemiyorsaniz kapatin.
echo -------------------------------------------------
timeout 30 > nul
goto x