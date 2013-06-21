.class public Lcom/redlynx/drawrace2/DrawRace2Native;
.super Ljava/lang/Object;
.source "DrawRace2Native.java"


# static fields
.field static final BUTTON_NEGATIVE:I = 0x0

.field static final BUTTON_NEUTRAL:I = 0x2

.field static final BUTTON_POSITIVE:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static appActivity:Landroid/app/Activity;

.field public static appContext:Landroid/content/Context;

.field static dialogActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static nextDialogId:I

.field public static sdCardAssetPath:Ljava/io/File;

.field static smDialogId:I

.field static smDialogType:I

.field static smFinalMessage:Ljava/lang/String;

.field static smFinalNegativeText:Ljava/lang/String;

.field static smFinalNeutralText:Ljava/lang/String;

.field static smFinalPositiveText:Ljava/lang/String;

.field static smFinalTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/redlynx/drawrace2/DrawRace2Native;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    sput v0, Lcom/redlynx/drawrace2/DrawRace2Native;->nextDialogId:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->dialogActions:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ATFaceBookPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "content"
    .parameter "imageUrl"

    .prologue
    .line 470
    :try_start_0
    invoke-static {p2}, Lcom/facebook/android/Facebook;->setPictureURL(Ljava/lang/String;)V

    .line 472
    sget-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".aja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 473
    const-string v1, "http://bit.ly/J6DI3w"

    .line 476
    .local v1, link:Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    const-string v3, "facebook"

    invoke-static {v2, v3, v1, p0, p1}, Lcom/addthis/core/AddThis;->shareItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v1           #link:Ljava/lang/String;
    :goto_1
    return-void

    .line 475
    :cond_0
    const-string v1, "http://bit.ly/HMWI8Z"
    :try_end_0
    .catch Lcom/addthis/error/ATDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/addthis/error/ATSharerException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v1       #link:Ljava/lang/String;
    goto :goto_0

    .line 483
    .end local v1           #link:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Lcom/addthis/error/ATDatabaseException;
    invoke-virtual {v0}, Lcom/addthis/error/ATDatabaseException;->printStackTrace()V

    goto :goto_1

    .line 485
    .end local v0           #e:Lcom/addthis/error/ATDatabaseException;
    :catch_1
    move-exception v0

    .line 486
    .local v0, e:Lcom/addthis/error/ATSharerException;
    invoke-virtual {v0}, Lcom/addthis/error/ATSharerException;->printStackTrace()V

    goto :goto_1
.end method

.method public static checkJSON(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "json"

    .prologue
    .line 315
    return-void
.end method

.method public static confirmAppExit()V
    .locals 2

    .prologue
    .line 519
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2Native$5;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2Native$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 524
    return-void
.end method

.method public static dismissAlertDialog()V
    .locals 2

    .prologue
    .line 362
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2Native$4;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2Native$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public static native doAppExit()V
.end method

.method public static dumpDisplayInfo()V
    .locals 20

    .prologue
    .line 91
    sget-object v17, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 92
    .local v3, display:Landroid/view/Display;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Landroid/view/Display;->getPixelFormat()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, pixelFormat:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/Display;->getPixelFormat()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 112
    .local v6, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    const-string v2, ""

    .line 114
    .local v2, density:Ljava/lang/String;
    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 128
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    iget v7, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 130
    .local v7, metricsDpi:I
    iget v0, v6, Landroid/util/DisplayMetrics;->xdpi:F

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 131
    .local v8, metricsXDpi:I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [I

    const/16 v17, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    aput v18, v15, v17

    const/16 v17, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v15, v17

    .line 132
    .local v15, xdpi:[I
    iget v0, v6, Landroid/util/DisplayMetrics;->ydpi:F

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 133
    .local v9, metricsYDpi:I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v18

    aput v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v16, v17

    .line 141
    .local v16, ydpi:[I
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v14

    .line 142
    .local v14, width:I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [F

    const/16 v17, 0x0

    const/high16 v18, 0x3f80

    int-to-float v0, v14

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/16 v19, 0x1

    aget v19, v15, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    aput v18, v12, v17

    const/16 v17, 0x1

    const/high16 v18, 0x3f80

    int-to-float v0, v14

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/16 v19, 0x0

    aget v19, v15, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    aput v18, v12, v17

    .line 143
    .local v12, physWidth:[F
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 144
    .local v4, height:I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [F

    const/16 v17, 0x0

    const/high16 v18, 0x3f80

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/16 v19, 0x1

    aget v19, v16, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    aput v18, v11, v17

    const/16 v17, 0x1

    const/high16 v18, 0x3f80

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/16 v19, 0x0

    aget v19, v16, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    aput v18, v11, v17

    .line 145
    .local v11, physHeight:[F
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [F

    .line 146
    .local v10, physDiameter:[F
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v5, v0, :cond_0

    .line 147
    aget v17, v12, v5

    aget v18, v12, v5

    mul-float v17, v17, v18

    aget v18, v11, v5

    aget v19, v11, v5

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    aput v17, v10, v5

    .line 146
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 95
    .end local v2           #density:Ljava/lang/String;
    .end local v4           #height:I
    .end local v5           #i:I
    .end local v6           #metrics:Landroid/util/DisplayMetrics;
    .end local v7           #metricsDpi:I
    .end local v8           #metricsXDpi:I
    .end local v9           #metricsYDpi:I
    .end local v10           #physDiameter:[F
    .end local v11           #physHeight:[F
    .end local v12           #physWidth:[F
    .end local v14           #width:I
    .end local v15           #xdpi:[I
    .end local v16           #ydpi:[I
    :pswitch_1
    const-string v13, "16-bit (RGB_565)"

    .line 96
    goto/16 :goto_0

    .line 98
    :pswitch_2
    const-string v13, "24-bit (RGB_888)"

    .line 99
    goto/16 :goto_0

    .line 101
    :pswitch_3
    const-string v13, "32-bit (RGBA_8888)"

    goto/16 :goto_0

    .line 116
    .restart local v2       #density:Ljava/lang/String;
    .restart local v6       #metrics:Landroid/util/DisplayMetrics;
    :sswitch_0
    const-string v2, "ldpi"

    .line 117
    goto/16 :goto_1

    .line 119
    :sswitch_1
    const-string v2, "mdpi"

    .line 120
    goto/16 :goto_1

    .line 122
    :sswitch_2
    const-string v2, "hdpi"

    .line 123
    goto/16 :goto_1

    .line 125
    :sswitch_3
    const-string v2, "xhdpi"

    goto/16 :goto_1

    .line 156
    .restart local v4       #height:I
    .restart local v5       #i:I
    .restart local v7       #metricsDpi:I
    .restart local v8       #metricsXDpi:I
    .restart local v9       #metricsYDpi:I
    .restart local v10       #physDiameter:[F
    .restart local v11       #physHeight:[F
    .restart local v12       #physWidth:[F
    .restart local v14       #width:I
    .restart local v15       #xdpi:[I
    .restart local v16       #ydpi:[I
    :cond_0
    return-void

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public static native enableMusic(Z)V
.end method

.method public static native enableStats(Z)V
.end method

.method public static flurryEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "event"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 426
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 427
    .local v0, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    if-eqz p2, :cond_0

    const-string v1, "label"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_0
    const-string v1, "value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 436
    return-void
.end method

.method public static flurryStart(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 403
    return-void
.end method

.method public static flurryStop()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public static getAlertDialogAction(I)I
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 379
    sget-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->dialogActions:Ljava/util/Map;

    monitor-enter v2

    .line 380
    :try_start_0
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->dialogActions:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->dialogActions:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 382
    .local v0, action:I
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->dialogActions:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    monitor-exit v2

    .line 386
    .end local v0           #action:I
    :goto_0
    return v0

    .line 385
    :cond_0
    monitor-exit v2

    .line 386
    const/4 v0, -0x1

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getApplicationContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceManufacturerModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 439
    new-instance v1, Lutil/deviceinfo/DeviceUUIDFactory;

    sget-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lutil/deviceinfo/DeviceUUIDFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lutil/deviceinfo/DeviceUUIDFactory;->getDeviceUuidString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method

.method public static getLocaleCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewsPageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    const-string v0, "http://crosspromotion.redlynx.com/moregames/moregames_android_drawrace2.html"

    return-object v0
.end method

.method public static getResourceIdentifier(Ljava/lang/String;)I
    .locals 4
    .parameter "fileName"

    .prologue
    .line 190
    sget-object v3, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 191
    .local v1, resources:Landroid/content/res/Resources;
    sget-object v3, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, packageName:Ljava/lang/String;
    const-string v3, "raw"

    invoke-virtual {v1, p0, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 193
    .local v2, result:I
    return v2
.end method

.method public static getResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    const/16 v2, 0x5f

    .line 202
    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 206
    :cond_0
    return-object p0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 71
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    .line 75
    :try_start_0
    sget-object v3, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 76
    .local v2, packMgr:Landroid/content/pm/PackageManager;
    sget-object v3, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 77
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 78
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v3}, Lcom/redlynx/drawrace2/DrawRace2Native;->initNativeIO(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packMgr:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget-object v3, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-static {v3}, Lutil/Localizator;->init(Landroid/content/Context;)V

    .line 85
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/redlynx/drawrace2/DrawRace2Native;->setKeepScreenOn(Z)V

    .line 87
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Native;->dumpDisplayInfo()V

    .line 88
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static native initNativeIO(Ljava/lang/String;)V
.end method

.method public static initPushWoosh()V
    .locals 3

    .prologue
    .line 496
    new-instance v0, Lcom/arellomobile/android/push/PushManager;

    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/arellomobile/android/push/PushManager;-><init>(Landroid/content/Context;)V

    .line 497
    .local v0, pushManager:Lcom/arellomobile/android/push/PushManager;
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/arellomobile/android/push/PushManager;->onStartup(Landroid/content/Context;)V

    .line 499
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    check-cast v1, Lcom/redlynx/drawrace2/DrawRace2Activity;

    sget-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/redlynx/drawrace2/DrawRace2Activity;->checkMessage(Landroid/content/Intent;)V

    .line 504
    return-void
.end method

.method public static isConnectedToNetwork()Z
    .locals 3

    .prologue
    .line 318
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 320
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 323
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKindle()Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public static native isMusicEnabled()Z
.end method

.method public static native isStatsEnabled()Z
.end method

.method public static locateFile(Ljava/lang/String;[J)Z
    .locals 9
    .parameter "fileName"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-static {p0}, Lcom/redlynx/drawrace2/DrawRace2Native;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, fileNameToLoad:Ljava/lang/String;
    invoke-static {v1}, Lcom/redlynx/drawrace2/DrawRace2Native;->getResourceIdentifier(Ljava/lang/String;)I

    move-result v2

    .line 221
    .local v2, resId:I
    if-eqz v2, :cond_0

    .line 225
    sget-object v5, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 228
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    aput-wide v5, p1, v4

    .line 230
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    aput-wide v4, p1, v3

    .line 234
    .end local v0           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static native onPushNotifyToken(Ljava/lang/String;)V
.end method

.method public static native openPauseMenu()V
.end method

.method public static native openSettings()Z
.end method

.method public static openURL(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, i:Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 300
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 301
    return-void
.end method

.method public static readImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 243
    invoke-static {p0}, Lcom/redlynx/drawrace2/DrawRace2Native;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, fileNameToLoad:Ljava/lang/String;
    invoke-static {v1}, Lcom/redlynx/drawrace2/DrawRace2Native;->getResourceIdentifier(Ljava/lang/String;)I

    move-result v3

    .line 252
    .local v3, resId:I
    if-eqz v3, :cond_0

    .line 253
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 254
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 255
    sget-object v4, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native requestAudioBufferFill([S)V
.end method

.method public static native resetGameData()V
.end method

.method public static native setAssetPath(Ljava/lang/String;Z)V
.end method

.method public static native setAudioPlaying(Z)V
.end method

.method public static setKeepScreenOn(Z)V
    .locals 2
    .parameter "keepScreenOn"

    .prologue
    .line 276
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2Native$1;

    invoke-direct {v1, p0}, Lcom/redlynx/drawrace2/DrawRace2Native$1;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method public static showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "title"
    .parameter "message"
    .parameter "positiveButtonText"
    .parameter "negativeButtonText"
    .parameter "neutralButtonText"

    .prologue
    .line 328
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalTitle:Ljava/lang/String;

    .line 329
    sput-object p1, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalMessage:Ljava/lang/String;

    .line 330
    sput-object p2, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalPositiveText:Ljava/lang/String;

    .line 331
    sput-object p3, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalNegativeText:Ljava/lang/String;

    .line 332
    sput-object p4, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalNeutralText:Ljava/lang/String;

    .line 333
    sget v0, Lcom/redlynx/drawrace2/DrawRace2Native;->nextDialogId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/redlynx/drawrace2/DrawRace2Native;->nextDialogId:I

    sput v0, Lcom/redlynx/drawrace2/DrawRace2Native;->smDialogId:I

    .line 334
    const/4 v0, 0x4

    sput v0, Lcom/redlynx/drawrace2/DrawRace2Native;->smDialogType:I

    .line 335
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2Native$2;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2Native$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 340
    sget v0, Lcom/redlynx/drawrace2/DrawRace2Native;->smDialogId:I

    return v0
.end method

.method public static showProgressDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "image"
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 347
    sget v0, Lcom/redlynx/drawrace2/DrawRace2Native;->nextDialogId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/redlynx/drawrace2/DrawRace2Native;->nextDialogId:I

    sput v0, Lcom/redlynx/drawrace2/DrawRace2Native;->smDialogId:I

    .line 348
    sput-object p2, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalTitle:Ljava/lang/String;

    .line 349
    sput-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalMessage:Ljava/lang/String;

    .line 350
    sput-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalPositiveText:Ljava/lang/String;

    .line 351
    sput-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalNegativeText:Ljava/lang/String;

    .line 352
    sput-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalNeutralText:Ljava/lang/String;

    .line 353
    const/4 v0, 0x5

    sput v0, Lcom/redlynx/drawrace2/DrawRace2Native;->smDialogType:I

    .line 354
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2Native$3;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2Native$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method
