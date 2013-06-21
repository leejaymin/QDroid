.class public Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;
.super Ljava/lang/Object;
.source "PromotionHelper.java"


# instance fields
.field endDate:Ljava/lang/String;

.field formatter:Ljava/text/SimpleDateFormat;

.field startDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "2011-10-10"

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;->startDate:Ljava/lang/String;

    .line 20
    const-string v0, "2011-10-13"

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;->endDate:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;->formatter:Ljava/text/SimpleDateFormat;

    .line 17
    return-void
.end method


# virtual methods
.method public showCurrentPromotion(Landroid/app/Activity;)V
    .locals 9
    .parameter "caller"

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v6

    if-nez v6, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;->formatter:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;->startDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 29
    .local v5, start:Ljava/util/Date;
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;->formatter:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;->endDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 31
    .local v3, end:Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 33
    .local v4, now:Ljava/util/Date;
    invoke-virtual {v5, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 36
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v6, "SPECIAL OFFER - ACT SOON\n\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v6, "Buy the full version of this app at a reduced price.\n\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v6, "Special price until friday oct. 13th $0.99\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v6, "Normal price $3.99\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 44
    const-string v7, "Buy now"

    new-instance v8, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper$1;

    invoke-direct {v8, p0, p1}, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper$1;-><init>(Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 51
    const-string v7, "Not now"

    new-instance v8, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper$2;

    invoke-direct {v8, p0}, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper$2;-><init>(Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    .end local v3           #end:Ljava/util/Date;
    .end local v4           #now:Ljava/util/Date;
    .end local v5           #start:Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 61
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
