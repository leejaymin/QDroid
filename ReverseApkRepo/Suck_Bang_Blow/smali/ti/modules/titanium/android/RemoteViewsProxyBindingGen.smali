.class public Lti/modules/titanium/android/RemoteViewsProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "RemoteViewsProxyBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "Android.RemoteViews"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.android.RemoteViewsProxy"

.field private static final METHOD_setBoolean:Ljava/lang/String; = "setBoolean"

.field private static final METHOD_setChronometer:Ljava/lang/String; = "setChronometer"

.field private static final METHOD_setDouble:Ljava/lang/String; = "setDouble"

.field private static final METHOD_setImageViewResource:Ljava/lang/String; = "setImageViewResource"

.field private static final METHOD_setImageViewUri:Ljava/lang/String; = "setImageViewUri"

.field private static final METHOD_setInt:Ljava/lang/String; = "setInt"

.field private static final METHOD_setOnClickPendingIntent:Ljava/lang/String; = "setOnClickPendingIntent"

.field private static final METHOD_setProgressBar:Ljava/lang/String; = "setProgressBar"

.field private static final METHOD_setString:Ljava/lang/String; = "setString"

.field private static final METHOD_setTextColor:Ljava/lang/String; = "setTextColor"

.field private static final METHOD_setTextViewText:Ljava/lang/String; = "setTextViewText"

.field private static final METHOD_setViewVisibility:Ljava/lang/String; = "setViewVisibility"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "RemoteViews"

.field private static final TAG:Ljava/lang/String; = "RemoteViewsProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 58
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setDouble"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setChronometer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setOnClickPendingIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTextViewText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setImageViewResource"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setString"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setViewVisibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setInt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTextColor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setBoolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setImageViewUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setProgressBar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 74
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    const-string v0, "Android.RemoteViews"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 18
    .parameter "name"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 79
    .local v15, value:Ljava/lang/Object;
    if-eqz v15, :cond_0

    move-object/from16 v16, v15

    .line 608
    :goto_0
    return-object v16

    .line 89
    :cond_0
    const-string v16, "setDouble"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 90
    new-instance v5, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$1;

    const-string v16, "setDouble"

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$1;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 131
    .local v5, setDouble_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setDouble"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v5

    .line 132
    goto :goto_0

    .line 135
    .end local v5           #setDouble_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v16, "setChronometer"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 136
    new-instance v4, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$2;

    const-string v16, "setChronometer"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$2;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 186
    .local v4, setChronometer_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setChronometer"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v4

    .line 187
    goto :goto_0

    .line 190
    .end local v4           #setChronometer_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v16, "setOnClickPendingIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 191
    new-instance v9, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$3;

    const-string v16, "setOnClickPendingIntent"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$3;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 223
    .local v9, setOnClickPendingIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setOnClickPendingIntent"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v9

    .line 224
    goto/16 :goto_0

    .line 227
    .end local v9           #setOnClickPendingIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v16, "setTextViewText"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 228
    new-instance v13, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$4;

    const-string v16, "setTextViewText"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$4;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 260
    .local v13, setTextViewText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setTextViewText"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v13

    .line 261
    goto/16 :goto_0

    .line 264
    .end local v13           #setTextViewText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v16, "setImageViewResource"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 265
    new-instance v6, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$5;

    const-string v16, "setImageViewResource"

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$5;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 297
    .local v6, setImageViewResource_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setImageViewResource"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v6

    .line 298
    goto/16 :goto_0

    .line 301
    .end local v6           #setImageViewResource_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v16, "setString"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 302
    new-instance v11, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$6;

    const-string v16, "setString"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$6;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 343
    .local v11, setString_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setString"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v11

    .line 344
    goto/16 :goto_0

    .line 347
    .end local v11           #setString_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v16, "setViewVisibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 348
    new-instance v14, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$7;

    const-string v16, "setViewVisibility"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$7;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 380
    .local v14, setViewVisibility_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setViewVisibility"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v14

    .line 381
    goto/16 :goto_0

    .line 384
    .end local v14           #setViewVisibility_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v16, "setInt"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 385
    new-instance v8, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$8;

    const-string v16, "setInt"

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$8;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 426
    .local v8, setInt_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setInt"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v8

    .line 427
    goto/16 :goto_0

    .line 430
    .end local v8           #setInt_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v16, "setTextColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 431
    new-instance v12, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$9;

    const-string v16, "setTextColor"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$9;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 463
    .local v12, setTextColor_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setTextColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v12

    .line 464
    goto/16 :goto_0

    .line 467
    .end local v12           #setTextColor_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v16, "setBoolean"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 468
    new-instance v3, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$10;

    const-string v16, "setBoolean"

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$10;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 509
    .local v3, setBoolean_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setBoolean"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v3

    .line 510
    goto/16 :goto_0

    .line 513
    .end local v3           #setBoolean_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v16, "setImageViewUri"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 514
    new-instance v7, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$11;

    const-string v16, "setImageViewUri"

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$11;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 548
    .local v7, setImageViewUri_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setImageViewUri"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v7

    .line 549
    goto/16 :goto_0

    .line 552
    .end local v7           #setImageViewUri_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v16, "setProgressBar"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 553
    new-instance v10, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$12;

    const-string v16, "setProgressBar"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$12;-><init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V

    .line 603
    .local v10, setProgressBar_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "setProgressBar"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v10

    .line 604
    goto/16 :goto_0

    .line 608
    .end local v10           #setProgressBar_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    const-string v0, "ti.modules.titanium.android.RemoteViewsProxy"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    const-class v0, Lti/modules/titanium/android/RemoteViewsProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    const-string v0, "RemoteViews"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 628
    const/4 v0, 0x0

    return-object v0
.end method
