.class Lcom/pgmsoft/wifinder/scan$WifiBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "scan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgmsoft/wifinder/scan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/scan;


# direct methods
.method constructor <init>(Lcom/pgmsoft/wifinder/scan;)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 974
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->receiverScanResult:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$0(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$2(Lcom/pgmsoft/wifinder/scan;Ljava/util/List;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$3(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 982
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$2(Lcom/pgmsoft/wifinder/scan;Ljava/util/List;)V

    .line 984
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Scan completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x0

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1130
    :cond_1
    :goto_1
    return-void

    .line 975
    :catch_0
    move-exception v11

    .line 978
    .local v11, e:Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receiverScanResult not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 986
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 987
    const-string v1, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkInfo;

    .line 988
    .local v14, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    const/4 v10, 0x0

    .line 990
    .local v10, disconnectFirst:Z
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 991
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 990
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 992
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 993
    .local v13, info:Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x2

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pgmsoft/wifinder/scan;->GorneInfo(ILjava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const-string v2, ""

    #setter for: Lcom/pgmsoft/wifinder/scan;->tmpSSID:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$5(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network obtaining ip address for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    .end local v13           #info:Landroid/net/wifi/WifiInfo;
    :cond_3
    :goto_2
    if-nez v10, :cond_a

    .line 1054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x0

    #setter for: Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$12(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x1

    #setter for: Lcom/pgmsoft/wifinder/scan;->attempt:I
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$13(Lcom/pgmsoft/wifinder/scan;I)V

    .line 1059
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    #setter for: Lcom/pgmsoft/wifinder/scan;->prevState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$15(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_1

    .line 997
    :cond_4
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 1000
    .restart local v13       #info:Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->title_lewy:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$6(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v3, 0x7f040036

    invoke-virtual {v2, v3}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x1

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pgmsoft/wifinder/scan;->GorneInfo(ILjava/lang/String;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const-string v2, ""

    #setter for: Lcom/pgmsoft/wifinder/scan;->tmpSSID:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$5(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network connected to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, -0x1

    #setter for: Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$7(Lcom/pgmsoft/wifinder/scan;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$8(Lcom/pgmsoft/wifinder/scan;Ljava/util/List;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$9(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiConfiguration;

    .line 1015
    .local v16, wifiEntry:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    move-object/from16 v0, v16

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_4

    .line 1016
    .end local v13           #info:Landroid/net/wifi/WifiInfo;
    .end local v16           #wifiEntry:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 1017
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 1016
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1019
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1021
    const-string v2, "Network connection failed"

    .line 1020
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1022
    :cond_6
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1024
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->title_lewy:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$6(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v3, 0x7f040037

    invoke-virtual {v2, v3}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$10(Lcom/pgmsoft/wifinder/scan;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1035
    const/4 v10, 0x1

    .line 1036
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->tmpSSID:Ljava/lang/String;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$11(Lcom/pgmsoft/wifinder/scan;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$12(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$10(Lcom/pgmsoft/wifinder/scan;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto/16 :goto_2

    .line 1041
    :cond_7
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 1042
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 1041
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1043
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x0

    #setter for: Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$12(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network idle"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1046
    :cond_8
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 1047
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 1046
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network scan"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1049
    :cond_9
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 1050
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 1049
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network suspended"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1057
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->attempt:I
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$14(Lcom/pgmsoft/wifinder/scan;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/pgmsoft/wifinder/scan;->attempt:I
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$13(Lcom/pgmsoft/wifinder/scan;I)V

    goto/16 :goto_3

    .line 1062
    .end local v10           #disconnectFirst:Z
    .end local v14           #netInfo:Landroid/net/NetworkInfo;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1063
    const-string v1, "supplicantError"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1064
    .local v12, error:I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$8(Lcom/pgmsoft/wifinder/scan;Ljava/util/List;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$9(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1069
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$10(Lcom/pgmsoft/wifinder/scan;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1073
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 1074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, -0x1

    #setter for: Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$7(Lcom/pgmsoft/wifinder/scan;I)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$16(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    #calls: Lcom/pgmsoft/wifinder/scan;->showDialogNetwork(Ljava/lang/Object;ZI)V
    invoke-static {v1, v2, v3, v4}, Lcom/pgmsoft/wifinder/scan;->access$17(Lcom/pgmsoft/wifinder/scan;Ljava/lang/Object;ZI)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authentication failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1066
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiConfiguration;

    .line 1067
    .restart local v16       #wifiEntry:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    move-object/from16 v0, v16

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_5

    .line 1078
    .end local v12           #error:I
    .end local v16           #wifiEntry:Landroid/net/wifi/WifiConfiguration;
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1079
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 1078
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1080
    const-string v1, "previous_wifi_state"

    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1081
    .local v15, previousState:I
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1082
    .local v17, wifiState:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x0

    #setter for: Lcom/pgmsoft/wifinder/scan;->new_scan_menu:Z
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$18(Lcom/pgmsoft/wifinder/scan;Z)V

    .line 1083
    packed-switch v17, :pswitch_data_0

    .line 1127
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->changeOrientation:Z
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$23(Lcom/pgmsoft/wifinder/scan;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x0

    #setter for: Lcom/pgmsoft/wifinder/scan;->changeOrientation:Z
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$24(Lcom/pgmsoft/wifinder/scan;Z)V

    goto/16 :goto_1

    .line 1085
    :pswitch_0
    const/4 v1, 0x1

    if-ne v15, v1, :cond_e

    .line 1086
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$16(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-object/from16 v18, v0

    new-instance v1, Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v3, 0x7f04001a

    invoke-virtual {v2, v3}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x2710

    .line 1088
    const/4 v5, 0x2

    const-string v6, "ON"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v9, 0x7f04001b

    invoke-virtual {v8, v9}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1087
    move-object/from16 v0, v18

    #setter for: Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/scan;->access$19(Lcom/pgmsoft/wifinder/scan;Lcom/pgmsoft/wifinder/RowList;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$16(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$20(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/scan;->update()V

    .line 1092
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x1

    #setter for: Lcom/pgmsoft/wifinder/scan;->new_scan_menu:Z
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$18(Lcom/pgmsoft/wifinder/scan;Z)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Enabling WiFI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1096
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->BnewScan:Landroid/widget/Button;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$21(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$22(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1098
    const/4 v1, 0x2

    if-ne v15, v1, :cond_f

    .line 1099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->changeOrientation:Z
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$23(Lcom/pgmsoft/wifinder/scan;)Z

    move-result v1

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$3(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$16(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    move-object/from16 v18, v0

    new-instance v1, Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v3, 0x7f04001c

    invoke-virtual {v2, v3}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x2710

    .line 1102
    const/4 v5, 0x2

    const-string v6, "ON"

    const/4 v7, 0x0

    .line 1103
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v9, 0x7f04001d

    invoke-virtual {v8, v9}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1101
    move-object/from16 v0, v18

    #setter for: Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/scan;->access$19(Lcom/pgmsoft/wifinder/scan;Lcom/pgmsoft/wifinder/RowList;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$16(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$20(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/scan;->update()V

    .line 1110
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x1

    #setter for: Lcom/pgmsoft/wifinder/scan;->new_scan_menu:Z
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$18(Lcom/pgmsoft/wifinder/scan;Z)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WiFI Enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1107
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v2, 0x0

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_8

    .line 1114
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->BnewScan:Landroid/widget/Button;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$21(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$22(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disabling WiFI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1120
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->title_lewy:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$6(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v3, 0x7f040037

    invoke-virtual {v2, v3}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WiFI Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1124
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WiFI Unknown state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1070
    .end local v15           #previousState:I
    .end local v17           #wifiState:I
    .restart local v12       #error:I
    :catch_1
    move-exception v1

    goto/16 :goto_6

    .line 1083
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
