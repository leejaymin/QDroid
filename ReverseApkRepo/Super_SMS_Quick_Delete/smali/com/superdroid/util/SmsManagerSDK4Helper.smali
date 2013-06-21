.class public Lcom/superdroid/util/SmsManagerSDK4Helper;
.super Lcom/superdroid/util/SmsManagerHelper;
.source "SmsManagerSDK4Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/superdroid/util/SmsManagerHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitMapDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "ctx"
    .parameter "bitmap"

    .prologue
    .line 17
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "address"
    .parameter "message"
    .parameter "logId"
    .parameter "ctx"
    .parameter "sender"
    .parameter "delivered"

    .prologue
    .line 37
    invoke-static/range {p1 .. p1}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    :try_start_0
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v17, sendIntent:Landroid/content/Intent;
    const-string v5, "log_id"

    move-object/from16 v0, v17

    move-object v1, v5

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "spc://sms/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    .line 49
    .local v4, smsManager:Landroid/telephony/SmsManager;
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 50
    .local v7, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v6, Lcom/superdroid/util/SmsManagerSDK4Helper;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "message size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 50
    invoke-interface {v5, v6, v8}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Lcom/superdroid/util/SuperUtil;->isTattoo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 53
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v8, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_2

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v9, 0x0

    move-object/from16 v5, p1

    .line 63
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v4           #smsManager:Landroid/telephony/SmsManager;
    .end local v7           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v16           #i:I
    .end local v17           #sendIntent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 87
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v4       #smsManager:Landroid/telephony/SmsManager;
    .restart local v7       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v16       #i:I
    .restart local v17       #sendIntent:Landroid/content/Intent;
    :cond_2
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 58
    const/4 v9, 0x0

    .line 57
    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v17

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 60
    .local v13, sendPendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 66
    .end local v8           #intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v13           #sendPendingIntent:Landroid/app/PendingIntent;
    .end local v16           #i:I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v7           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 73
    .local v12, m:Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x0

    .line 73
    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v17

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 76
    .restart local v13       #sendPendingIntent:Landroid/app/PendingIntent;
    sget-object v6, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v7, Lcom/superdroid/util/SmsManagerSDK4Helper;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 77
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SmsMessageSender.sendMessage: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 78
    const-string v11, "address:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "message:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 79
    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 77
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 76
    invoke-interface {v6, v7, v8}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 81
    const/4 v11, 0x0

    .line 82
    const/4 v14, 0x0

    move-object v9, v4

    move-object/from16 v10, p1

    .line 81
    invoke-virtual/range {v9 .. v14}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "address"
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-static {p1}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 26
    .local v0, sm:Landroid/telephony/SmsManager;
    invoke-static {}, Lcom/superdroid/util/SuperUtil;->isTattoo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    .line 28
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .end local v3           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    move-object v4, v0

    move-object v5, p1

    move-object v6, v2

    move-object v7, p2

    move-object v8, v2

    move-object v9, v2

    .line 30
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
