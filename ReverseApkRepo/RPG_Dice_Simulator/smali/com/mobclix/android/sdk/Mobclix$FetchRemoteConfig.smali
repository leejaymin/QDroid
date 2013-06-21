.class Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchRemoteConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1221
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    return-void
.end method

.method private getConfigUrl(Z)Ljava/lang/String;
    .locals 6
    .parameter "usePref"

    .prologue
    const-string v3, "ConfigServer"

    const-string v3, ".MCConfig"

    const-string v3, "UTF-8"

    .line 1378
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->access$29(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, c:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1381
    .local v1, data:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v3, ".MCConfig"

    const-string v4, "ConfigServer"

    invoke-static {v3, v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1382
    const-string v3, ".MCConfig"

    const-string v4, "ConfigServer"

    invoke-static {v3, v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1383
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1384
    const-string v3, "?p=android"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1385
    const-string v3, "&a="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1386
    const-string v3, "&m="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1387
    const-string v3, "&d="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1388
    const-string v3, "&dm="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1389
    const-string v3, "&v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$10(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1390
    const-string v3, "&dv="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$35(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1394
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1396
    :goto_0
    return-object v3

    .line 1395
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1396
    .local v2, e:Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$1(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1225
    .local v5, app_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$1(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1227
    .local v14, package_manager:Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v14

    move-object v1, v5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v23, v0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$11(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :goto_0
    const-string v22, "android.permission.ACCESS_FINE_LOCATION"

    move-object v0, v14

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_9

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    new-instance v23, Landroid/location/Criteria;

    invoke-direct/range {v23 .. v23}, Landroid/location/Criteria;-><init>()V

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$12(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Criteria;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$13(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Criteria;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 1242
    :goto_1
    const-string v22, "android.permission.ACCESS_NETWORK_STATE"

    move-object v0, v14

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_b

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$15(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 1248
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$16(Lcom/mobclix/android/sdk/Mobclix;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v23, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$1(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v23

    const-string v24, "location"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    move-object/from16 v0, v22

    move-object v1, v3

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$17(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/LocationManager;)V

    .line 1258
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$1(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v22

    const-string v23, "phone"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 1259
    .local v19, telephoney_manager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$18(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$19(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_1

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, "null"

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$18(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1264
    :cond_1
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$20()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v23

    if-lt v0, v1, :cond_c

    .line 1275
    const/4 v15, 0x1

    .line 1276
    .local v15, repeat:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$23(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 1350
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$23(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 1351
    const-string v22, ".MCConfig"

    const-string v23, "ConfigServer"

    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, ".MCConfig"

    const-string v24, "ConfigServer"

    invoke-static/range {v23 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$24(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1353
    :cond_3
    const-string v22, ".MCConfig"

    const-string v23, "AdServer"

    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, ".MCConfig"

    const-string v24, "AdServer"

    invoke-static/range {v23 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$25(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1355
    :cond_4
    const-string v22, ".MCConfig"

    const-string v23, "AnalyticsServer"

    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, ".MCConfig"

    const-string v24, "AnalyticsServer"

    invoke-static/range {v23 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$26(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1357
    :cond_5
    const-string v22, ".MCConfig"

    const-string v23, "VcServer"

    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, ".MCConfig"

    const-string v24, "VcServer"

    invoke-static/range {v23 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$27(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1359
    :cond_6
    const-string v22, ".MCConfig"

    const-string v23, "FeedbackServer"

    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, ".MCConfig"

    const-string v24, "FeedbackServer"

    invoke-static/range {v23 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1361
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$34(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 1374
    :cond_8
    return-void

    .line 1228
    .end local v15           #repeat:Z
    .end local v19           #telephoney_manager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v22

    move-object/from16 v12, v22

    .line 1229
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, "null"

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$11(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1235
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    const-string v22, "android.permission.ACCESS_COARSE_LOCATION"

    move-object v0, v14

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_a

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    new-instance v23, Landroid/location/Criteria;

    invoke-direct/range {v23 .. v23}, Landroid/location/Criteria;-><init>()V

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$12(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Criteria;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$13(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Criteria;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;Z)V

    goto/16 :goto_1

    .line 1240
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;Z)V

    goto/16 :goto_1

    .line 1245
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$15(Lcom/mobclix/android/sdk/Mobclix;Z)V

    goto/16 :goto_2

    .line 1264
    .restart local v19       #telephoney_manager:Landroid/telephony/TelephonyManager;
    :cond_c
    aget-object v18, v22, v24

    .line 1265
    .local v18, s:Ljava/lang/String;
    const-string v25, ".MCConfig"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 1266
    const-string v25, ".MCConfig"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1267
    .local v8, c:Ljava/lang/String;
    const-string v25, ","

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1268
    .local v11, cs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v25, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Lcom/mobclix/android/sdk/Mobclix;->access$21(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v11, v26

    const-string v27, "true"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v25, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Lcom/mobclix/android/sdk/Mobclix;->access$22(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .end local v8           #c:Ljava/lang/String;
    .end local v11           #cs:[Ljava/lang/String;
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 1271
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v25, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Lcom/mobclix/android/sdk/Mobclix;->access$21(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v25, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Lcom/mobclix/android/sdk/Mobclix;->access$22(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v25

    const-wide/16 v26, 0x7530

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1278
    .end local v18           #s:Ljava/lang/String;
    .restart local v15       #repeat:Z
    :cond_e
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->getConfigUrl(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->url:Ljava/lang/String;

    .line 1279
    const-string v16, ""

    .line 1280
    .local v16, response:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1281
    .local v9, con:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 1284
    .local v7, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 1285
    const-string v22, "GET"

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1286
    const-string v22, "User-Agent"

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v23

    move-object v0, v9

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 1288
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 1290
    .local v17, responseCode:I
    const/16 v22, 0xc8

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 1291
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v23, 0x1f40

    move-object v0, v6

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1292
    .end local v7           #br:Ljava/io/BufferedReader;
    .local v6, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 1293
    .local v20, tmp:Ljava/lang/String;
    :goto_6
    if-nez v20, :cond_11

    .line 1297
    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v22

    if-nez v22, :cond_f

    .line 1300
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v10, config:Lorg/json/JSONObject;
    const-string v22, "urls"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 1302
    .local v21, urls:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, "config"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$24(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, "ads"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$25(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, "analytics"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$26(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, "vc"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$27(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const-string v23, "feedback"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1307
    const-string v22, ".MCConfig"

    const-string v23, "ConfigServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v24, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->access$29(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v22, ".MCConfig"

    const-string v23, "AdServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v24, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->access$30(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v22, ".MCConfig"

    const-string v23, "AnalyticsServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v24, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->access$31(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v22, ".MCConfig"

    const-string v23, "VcServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v24, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->access$32(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v22, ".MCConfig"

    const-string v23, "FeedbackServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v24, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v22, ".MCConfig"

    const-string v23, "LastConfigTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v22, "ad_units"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1316
    .local v4, adUnits:Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v22

    move v0, v13

    move/from16 v1, v22

    if-lt v0, v1, :cond_12

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$34(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1339
    .end local v4           #adUnits:Lorg/json/JSONArray;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v13           #i:I
    .end local v20           #tmp:Ljava/lang/String;
    .end local v21           #urls:Lorg/json/JSONObject;
    :cond_f
    :goto_8
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1341
    :goto_9
    if-eqz v9, :cond_10

    .line 1342
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1345
    .end local v17           #responseCode:I
    :cond_10
    :goto_a
    if-eqz v15, :cond_2

    .line 1347
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1294
    .restart local v17       #responseCode:I
    .restart local v20       #tmp:Ljava/lang/String;
    :cond_11
    :try_start_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1295
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v20

    goto/16 :goto_6

    .line 1317
    .restart local v4       #adUnits:Lorg/json/JSONArray;
    .restart local v10       #config:Lorg/json/JSONObject;
    .restart local v13       #i:I
    .restart local v21       #urls:Lorg/json/JSONObject;
    :cond_12
    :try_start_6
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1318
    .local v3, a:Lorg/json/JSONObject;
    const-string v22, "size"

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1319
    .restart local v18       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$21(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "enabled"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    const-string v22, "refresh"

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_13

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$22(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v22

    const-wide/16 v23, -0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    :goto_b
    const-string v22, ".MCConfig"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v24, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->access$21(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #a:Lorg/json/JSONObject;
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v24, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v24 .. v24}, Lcom/mobclix/android/sdk/Mobclix;->access$22(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 1323
    .restart local v3       #a:Lorg/json/JSONObject;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->access$22(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "refresh"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    mul-long v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_b

    .line 1328
    .end local v3           #a:Lorg/json/JSONObject;
    .end local v4           #adUnits:Lorg/json/JSONArray;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v13           #i:I
    .end local v18           #s:Ljava/lang/String;
    .end local v21           #urls:Lorg/json/JSONObject;
    :catch_1
    move-exception v22

    move-object/from16 v12, v22

    .line 1329
    .local v12, e:Lorg/json/JSONException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$34(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_8

    .line 1336
    .end local v12           #e:Lorg/json/JSONException;
    .end local v20           #tmp:Ljava/lang/String;
    :catch_2
    move-exception v22

    .line 1339
    .end local v17           #responseCode:I
    :goto_c
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1341
    :goto_d
    if-eqz v9, :cond_10

    .line 1342
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_a

    .line 1333
    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v17       #responseCode:I
    :cond_14
    :try_start_9
    const-string v22, "mobclix-controller"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Remote Config failed, response code: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v22 .. v23}, Lcom/mobclix/android/sdk/Mobclix;->access$34(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 1337
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v17           #responseCode:I
    .restart local v7       #br:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v22

    move-object v6, v7

    .line 1339
    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    :goto_e
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1341
    :goto_f
    if-eqz v9, :cond_15

    .line 1342
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1343
    :cond_15
    throw v22

    .line 1340
    :catch_3
    move-exception v22

    goto :goto_d

    :catch_4
    move-exception v23

    goto :goto_f

    .restart local v17       #responseCode:I
    :catch_5
    move-exception v22

    goto/16 :goto_9

    .line 1337
    :catchall_1
    move-exception v22

    goto :goto_e

    .line 1336
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v17           #responseCode:I
    .restart local v7       #br:Ljava/io/BufferedReader;
    :catch_6
    move-exception v22

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    goto :goto_c
.end method
