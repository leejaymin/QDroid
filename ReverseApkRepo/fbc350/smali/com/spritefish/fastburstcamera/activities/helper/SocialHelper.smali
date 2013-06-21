.class public Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper;
.super Ljava/lang/Object;
.source "SocialHelper.java"


# static fields
.field private static socialPopupMins:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/16 v0, 0x1680

    sput-wide v0, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper;->socialPopupMins:J

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showSocialDialog(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Landroid/content/Context;)V
    .locals 12
    .parameter "db"
    .parameter "ctx"

    .prologue
    .line 17
    const-string v0, "firststart"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 18
    .local v8, firstStart:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 19
    .local v9, firstStart_ts:J
    const-wide/32 v0, 0xea60

    sget-wide v2, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper;->socialPopupMins:J

    mul-long/2addr v0, v2

    add-long/2addr v0, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const v0, 0x7f07005b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f070088

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "social_like"

    .line 24
    new-instance v5, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper$1;

    invoke-direct {v5, p1}, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper$1;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v6, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper$2;

    invoke-direct {v6, p1}, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper$2;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v7, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper$3;

    invoke-direct {v7, p1}, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper$3;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    move-object v1, p0

    .line 22
    invoke-static/range {v0 .. v7}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 67
    .local v11, showSocialDialog:Landroid/app/AlertDialog$Builder;
    const-string v0, "social_like"

    invoke-static {p0, v0}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->isDialogSupressed(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
