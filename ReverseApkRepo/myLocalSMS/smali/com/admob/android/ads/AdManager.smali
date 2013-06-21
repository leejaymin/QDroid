.class public Lcom/admob/android/ads/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/AdManager$Gender;
    }
.end annotation


# static fields
.field private static final LOCATION_UPDATE_INTERVAL:J = 0xdbba0L

.field static final LOG:Ljava/lang/String; = "AdMob SDK"

.field static final SDK_SITE_ID:Ljava/lang/String; = "a1496ced2842262"

.field public static final SDK_VERSION:Ljava/lang/String; = "20090728-ANDROID-3312276cc1406347"

.field private static final SDK_VERSION_CHECKSUM:Ljava/lang/String; = "3312276cc1406347"

.field static final SDK_VERSION_DATE:Ljava/lang/String; = "20090728"

.field private static birthday:Ljava/util/GregorianCalendar;

.field private static coordinates:Landroid/location/Location;

.field private static coordinatesTimestamp:J

.field private static gender:Lcom/admob/android/ads/AdManager$Gender;

.field private static publisherId:Ljava/lang/String;

.field private static testMode:Z

.field private static userAgent:Ljava/lang/String;

.field private static userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "AdMob SDK"

    const-string v1, "AdMob SDK version is 20090728-ANDROID-3312276cc1406347"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$000()Landroid/location/Location;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/admob/android/ads/AdManager;->coordinates:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$002(Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-object p0, Lcom/admob/android/ads/AdManager;->coordinates:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 17
    sget-wide v0, Lcom/admob/android/ads/AdManager;->coordinatesTimestamp:J

    return-wide v0
.end method

.method static synthetic access$102(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-wide p0, Lcom/admob/android/ads/AdManager;->coordinatesTimestamp:J

    return-wide p0
.end method

.method protected static clientError(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 129
    const-string v0, "AdMob SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBirthday()Ljava/util/GregorianCalendar;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/admob/android/ads/AdManager;->birthday:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method static getBirthdayAsString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/admob/android/ads/AdManager;->getBirthday()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 495
    .local v0, dob:Ljava/util/GregorianCalendar;
    if-eqz v0, :cond_0

    .line 497
    const-string v2, "%04d%02d%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 503
    :cond_0
    return-object v1
.end method

.method public static getCoordinates(Landroid/content/Context;)Landroid/location/Location;
    .locals 12
    .parameter "context"

    .prologue
    const-wide/32 v10, 0xdbba0

    const-string v2, "AdMob SDK"

    .line 323
    if-eqz p0, :cond_7

    .line 326
    sget-object v2, Lcom/admob/android/ads/AdManager;->coordinates:Landroid/location/Location;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/admob/android/ads/AdManager;->coordinatesTimestamp:J

    add-long/2addr v4, v10

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 329
    :cond_0
    monitor-enter p0

    .line 333
    :try_start_0
    sget-object v2, Lcom/admob/android/ads/AdManager;->coordinates:Landroid/location/Location;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/admob/android/ads/AdManager;->coordinatesTimestamp:J

    add-long/2addr v4, v10

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 336
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/admob/android/ads/AdManager;->coordinatesTimestamp:J

    .line 338
    const/4 v9, 0x0

    .line 339
    .local v9, permissions:Z
    const/4 v0, 0x0

    .line 340
    .local v0, manager:Landroid/location/LocationManager;
    const/4 v1, 0x0

    .line 343
    .local v1, provider:Ljava/lang/String;
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 345
    const-string v2, "AdMob SDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    const-string v2, "AdMob SDK"

    const-string v3, "Trying to get locations from the network."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2
    const/4 v9, 0x1

    .line 351
    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #manager:Landroid/location/LocationManager;
    check-cast v0, Landroid/location/LocationManager;

    .line 353
    .restart local v0       #manager:Landroid/location/LocationManager;
    if-eqz v0, :cond_3

    .line 355
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 356
    .local v7, criteria:Landroid/location/Criteria;
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 357
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 358
    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 363
    .end local v7           #criteria:Landroid/location/Criteria;
    :cond_3
    if-nez v1, :cond_5

    .line 365
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 367
    const-string v2, "AdMob SDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    const-string v2, "AdMob SDK"

    const-string v3, "Trying to get locations from GPS."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_4
    const/4 v9, 0x1

    .line 373
    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #manager:Landroid/location/LocationManager;
    check-cast v0, Landroid/location/LocationManager;

    .line 375
    .restart local v0       #manager:Landroid/location/LocationManager;
    if-eqz v0, :cond_5

    .line 377
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 378
    .restart local v7       #criteria:Landroid/location/Criteria;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 379
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 380
    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 386
    .end local v7           #criteria:Landroid/location/Criteria;
    :cond_5
    if-nez v9, :cond_8

    .line 388
    const-string v2, "AdMob SDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 390
    const-string v2, "AdMob SDK"

    const-string v3, "Cannot access user\'s location.  Permissions are not set."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v0           #manager:Landroid/location/LocationManager;
    .end local v1           #provider:Ljava/lang/String;
    .end local v9           #permissions:Z
    :cond_6
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_7
    sget-object v2, Lcom/admob/android/ads/AdManager;->coordinates:Landroid/location/Location;

    return-object v2

    .line 393
    .restart local v0       #manager:Landroid/location/LocationManager;
    .restart local v1       #provider:Ljava/lang/String;
    .restart local v9       #permissions:Z
    :cond_8
    if-nez v1, :cond_9

    .line 395
    :try_start_1
    const-string v2, "AdMob SDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 397
    const-string v2, "AdMob SDK"

    const-string v3, "No location providers are available.  Ads will not be geotargeted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    .end local v0           #manager:Landroid/location/LocationManager;
    .end local v1           #provider:Ljava/lang/String;
    .end local v9           #permissions:Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 402
    .restart local v0       #manager:Landroid/location/LocationManager;
    .restart local v1       #provider:Ljava/lang/String;
    .restart local v9       #permissions:Z
    :cond_9
    :try_start_2
    const-string v2, "AdMob SDK"

    const-string v3, "Location provider setup successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object v8, v0

    .line 406
    .local v8, mgr:Landroid/location/LocationManager;
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/admob/android/ads/AdManager$1;

    invoke-direct {v5, v8}, Lcom/admob/android/ads/AdManager$1;-><init>(Landroid/location/LocationManager;)V

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static getCoordinatesAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const-string v5, "AdMob SDK"

    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, result:Ljava/lang/String;
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getCoordinates(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 461
    .local v0, l:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    :cond_0
    const-string v2, "AdMob SDK"

    const/4 v2, 0x3

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    const-string v2, "AdMob SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User coordinates are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    return-object v1
.end method

.method public static getGender()Lcom/admob/android/ads/AdManager$Gender;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Lcom/admob/android/ads/AdManager;->gender:Lcom/admob/android/ads/AdManager$Gender;

    return-object v0
.end method

.method static getGenderAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    sget-object v0, Lcom/admob/android/ads/AdManager;->gender:Lcom/admob/android/ads/AdManager$Gender;

    sget-object v1, Lcom/admob/android/ads/AdManager$Gender;->MALE:Lcom/admob/android/ads/AdManager$Gender;

    if-ne v0, v1, :cond_0

    .line 550
    const-string v0, "m"

    .line 558
    :goto_0
    return-object v0

    .line 552
    :cond_0
    sget-object v0, Lcom/admob/android/ads/AdManager;->gender:Lcom/admob/android/ads/AdManager$Gender;

    sget-object v1, Lcom/admob/android/ads/AdManager$Gender;->FEMALE:Lcom/admob/android/ads/AdManager$Gender;

    if-ne v0, v1, :cond_1

    .line 554
    const-string v0, "f"

    goto :goto_0

    .line 558
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPublisherId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const-string v7, "AdMob SDK"

    .line 143
    sget-object v4, Lcom/admob/android/ads/AdManager;->publisherId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 150
    .local v3, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 152
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 154
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "ADMOB_PUBLISHER_ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, id:Ljava/lang/String;
    const-string v4, "AdMob SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Publisher ID read from AndroidManifest.xml is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v4, "a1496ced2842262"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.admob.android.test"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.example.admob.lunarlander"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    :cond_0
    const-string v4, "AdMob SDK"

    const-string v5, "This is a sample application so allowing sample publisher ID."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sput-object v1, Lcom/admob/android/ads/AdManager;->publisherId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #manager:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-object v4, Lcom/admob/android/ads/AdManager;->publisherId:Ljava/lang/String;

    return-object v4

    .line 167
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #manager:Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->setPublisherId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 173
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AdMob SDK"

    const-string v4, "Could not read ADMOB_PUBLISHER_ID meta-data from AndroidManifest.xml."

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static getUserAgent()Ljava/lang/String;
    .locals 13

    .prologue
    const-string v12, "AdMob SDK"

    const-string v9, "; "

    .line 579
    sget-object v8, Lcom/admob/android/ads/AdManager;->userAgent:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 585
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 588
    .local v0, arg:Ljava/lang/StringBuffer;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 589
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 591
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    :goto_0
    const-string v8, "; "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 602
    .local v4, l:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 603
    .local v5, language:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 605
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 609
    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 621
    .local v6, model:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 623
    const-string v8, "; "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 627
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 629
    const-string v8, " Build/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    :cond_2
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2 (AdMob-ANDROID-%s)"

    .line 636
    .local v1, base:Ljava/lang/String;
    const-string v8, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2 (AdMob-ANDROID-%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    const-string v11, "20090728"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/admob/android/ads/AdManager;->userAgent:Ljava/lang/String;

    .line 638
    const-string v8, "AdMob SDK"

    const/4 v8, 0x3

    invoke-static {v12, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 640
    const-string v8, "AdMob SDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phone\'s user-agent is:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/admob/android/ads/AdManager;->userAgent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v0           #arg:Ljava/lang/StringBuffer;
    .end local v1           #base:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #l:Ljava/util/Locale;
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #model:Ljava/lang/String;
    .end local v7           #version:Ljava/lang/String;
    :cond_3
    sget-object v8, Lcom/admob/android/ads/AdManager;->userAgent:Ljava/lang/String;

    return-object v8

    .line 596
    .restart local v0       #arg:Ljava/lang/StringBuffer;
    .restart local v7       #version:Ljava/lang/String;
    :cond_4
    const-string v8, "1.0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 616
    .restart local v4       #l:Ljava/util/Locale;
    .restart local v5       #language:Ljava/lang/String;
    :cond_5
    const-string v8, "en"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 257
    sget-object v0, Lcom/admob/android/ads/AdManager;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/AdManager;->userId:Ljava/lang/String;

    .line 264
    sget-object v0, Lcom/admob/android/ads/AdManager;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/AdManager;->userId:Ljava/lang/String;

    .line 266
    const-string v0, "AdMob SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The user ID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/admob/android/ads/AdManager;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    sget-object v0, Lcom/admob/android/ads/AdManager;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public static isInTestMode()Z
    .locals 1

    .prologue
    .line 222
    sget-boolean v0, Lcom/admob/android/ads/AdManager;->testMode:Z

    return v0
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "val"

    .prologue
    const/4 v9, 0x0

    .line 280
    const/4 v2, 0x0

    .line 282
    .local v2, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 286
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 287
    .local v1, md5:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 288
    const-string v3, "%032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 299
    .end local v1           #md5:Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    return-object v2

    .line 290
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 292
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AdMob SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not generate hash of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    sget-object v3, Lcom/admob/android/ads/AdManager;->userId:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/admob/android/ads/AdManager;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setBirthday(III)V
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 525
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 526
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-virtual {v0, p0, v1, p2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 527
    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->setBirthday(Ljava/util/GregorianCalendar;)V

    .line 528
    return-void
.end method

.method public static setBirthday(Ljava/util/GregorianCalendar;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 513
    sput-object p0, Lcom/admob/android/ads/AdManager;->birthday:Ljava/util/GregorianCalendar;

    .line 514
    return-void
.end method

.method public static setGender(Lcom/admob/android/ads/AdManager$Gender;)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 569
    sput-object p0, Lcom/admob/android/ads/AdManager;->gender:Lcom/admob/android/ads/AdManager$Gender;

    .line 570
    return-void
.end method

.method public static setInTestMode(Z)V
    .locals 0
    .parameter "testing"

    .prologue
    .line 246
    sput-boolean p0, Lcom/admob/android/ads/AdManager;->testMode:Z

    .line 247
    return-void
.end method

.method public static setPublisherId(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 192
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETUP ERROR:  Incorrect AdMob publisher ID.  Should 15 [a-f,0-9] characters:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/admob/android/ads/AdManager;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    .line 197
    :cond_1
    const-string v0, "a1496ced2842262"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    const-string v0, "SETUP ERROR:  Cannot use the sample publisher ID (a1496ced2842262).  Yours is available on www.admob.com."

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    .line 203
    :cond_2
    const-string v0, "AdMob SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publisher ID set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sput-object p0, Lcom/admob/android/ads/AdManager;->publisherId:Ljava/lang/String;

    .line 206
    return-void
.end method
