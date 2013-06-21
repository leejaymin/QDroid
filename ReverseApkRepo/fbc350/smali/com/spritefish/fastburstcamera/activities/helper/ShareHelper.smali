.class public Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanSafelocation(Landroid/content/Context;)V
    .locals 12
    .parameter "c"

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 25
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 35
    .end local v0           #dir:Ljava/io/File;
    :goto_1
    return-void

    .line 25
    .restart local v0       #dir:Ljava/io/File;
    :cond_0
    aget-object v2, v4, v3

    .line 26
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 27
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "insta"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static copyToSafeLocation(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "f"
    .parameter "c"

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v0, dest:Ljava/io/File;
    :try_start_0
    invoke-static {p0, v0}, Lcom/spritefish/camera/Util;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0           #dest:Ljava/io/File;
    :goto_0
    return-object v0

    .line 43
    .restart local v0       #dest:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchOpenSinglePicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "c"
    .parameter "uri"

    .prologue
    .line 84
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, share:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    const v2, 0x7f07006e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1           #share:Landroid/content/Intent;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "insta"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static launchOpenSinglePicture(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/Picture;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 3
    .parameter "c"
    .parameter "openThis"
    .parameter "tracker"

    .prologue
    .line 67
    if-eqz p2, :cond_0

    .line 68
    const-string v1, "OpenPicture"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 73
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->launchOpenSinglePicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "insta"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static launchShareSinglePicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "c"
    .parameter "uri"

    .prologue
    .line 102
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, share:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    const-string v2, "android.intent.extra.SUBJECT"

    const v3, 0x7f07006f

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v2, "Share Photo"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1           #share:Landroid/content/Intent;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "insta"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static launchShareSinglePicture(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/Picture;)V
    .locals 4
    .parameter "c"
    .parameter "shareThis"

    .prologue
    .line 55
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->copyToSafeLocation(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, dest:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->launchShareSinglePicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0           #dest:Ljava/io/File;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "insta"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
