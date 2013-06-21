.class public Lcom/andfreek/myLocale/receiver/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSReceiver.java"


# static fields
.field public static _id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 30
    .local v17, bundle:Landroid/os/Bundle;
    const-string v5, "pdus"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Ljava/lang/Object;

    .line 31
    .local v28, messages:[Ljava/lang/Object;
    move-object/from16 v0, v28

    array-length v0, v0

    move v5, v0

    move v0, v5

    new-array v0, v0, [Landroid/telephony/gsm/SmsMessage;

    move-object/from16 v33, v0

    .line 33
    .local v33, smsMessage:[Landroid/telephony/gsm/SmsMessage;
    const-string v31, "notification"

    .line 34
    .local v31, ns:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/NotificationManager;

    .line 35
    .local v26, mNotificationManager:Landroid/app/NotificationManager;
    const/high16 v25, 0x7f02

    .line 36
    .local v25, icon:I
    const v5, 0x7f06000b

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 37
    .local v34, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    .line 39
    .local v35, when:J
    new-instance v30, Landroid/app/Notification;

    move-object/from16 v0, v30

    move/from16 v1, v25

    move-object/from16 v2, v34

    move-wide/from16 v3, v35

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 42
    .local v30, notification:Landroid/app/Notification;
    const-string v21, "myLocalSMS"

    .line 43
    .local v21, contentTitle:Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 47
    .local v20, contentText:Ljava/lang/CharSequence;
    new-instance v22, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v22, conversations:Landroid/content/Intent;
    const-string v5, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/high16 v24, 0x3400

    .line 55
    .local v24, flags:I
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v22

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 60
    .local v19, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 61
    const/16 v16, 0x1

    .line 63
    .local v16, HELLO_ID:I
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move v1, v5

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 67
    const/16 v29, 0x0

    .end local p2
    .local v29, n:I
    :goto_0
    move-object/from16 v0, v28

    array-length v0, v0

    move v5, v0

    move/from16 v0, v29

    move v1, v5

    if-lt v0, v1, :cond_1

    .line 70
    const/4 v5, 0x0

    aget-object v5, v33, v5

    invoke-virtual {v5}, Landroid/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v33, v5

    invoke-virtual {v5}, Landroid/telephony/gsm/SmsMessage;->isEmail()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v33, v5

    invoke-virtual {v5}, Landroid/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    const/4 v5, 0x0

    aget-object v5, v33, v5

    invoke-virtual {v5}, Landroid/telephony/gsm/SmsMessage;->isStatusReportMessage()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v33, v5

    invoke-virtual {v5}, Landroid/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    :cond_0
    :goto_1
    return-void

    .line 68
    :cond_1
    aget-object p2, v28, v29

    check-cast p2, [B

    invoke-static/range {p2 .. p2}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v5

    aput-object v5, v33, v29

    .line 67
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 76
    :cond_2
    monitor-enter p0

    .line 79
    const-wide/16 v8, 0x3e8

    :try_start_0
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    const-string v5, "content://sms/inbox"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 87
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 88
    .local v18, c:Landroid/database/Cursor;
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    .line 89
    .local v27, messageBean:[Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 92
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    const-string v5, "RAMES"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #uri:Landroid/net/Uri;
    const-string v7, "_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_id"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v18

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v5, "RAMES"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "body="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "body"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v18

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v5, "RAMES"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "address="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "address"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v18

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v5, "RAMES"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "date="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "date"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v18

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v5, "RAMES"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "thread_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "thread_id"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v18

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v5, 0x0

    const-string v6, "_id"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v27, v5

    .line 100
    const/4 v5, 0x1

    const-string v6, "body"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v27, v5

    .line 101
    const/4 v5, 0x2

    const-string v6, "address"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v27, v5

    .line 102
    const/4 v5, 0x3

    const-string v6, "date"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v27, v5

    .line 103
    const/4 v5, 0x4

    const-string v6, "thread_id"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v27, v5

    .line 105
    invoke-static/range {p1 .. p1}, Lcom/andfreek/myLocale/db/DBManager;->isTranslationEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    const-string v5, "RAMES"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "From SMSReceiver, getTargetLanguage="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/andfreek/myLocale/db/DBManager;->getTargetLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v7, Lcom/andfreek/myLocale/thread/Invoker;

    const-string v8, ""

    .line 109
    invoke-static/range {p1 .. p1}, Lcom/andfreek/myLocale/db/DBManager;->getTargetLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 110
    const/4 v5, 0x1

    aget-object v10, v27, v5

    .line 111
    const/4 v5, 0x4

    aget-object v11, v27, v5

    .line 112
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 108
    invoke-direct/range {v7 .. v15}, Lcom/andfreek/myLocale/thread/Invoker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v7, in:Lcom/andfreek/myLocale/thread/Invoker;
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/andfreek/myLocale/thread/Invoker;->setContext(Landroid/content/Context;)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/andfreek/myLocale/thread/Invoker;->setContectResolver(Landroid/content/ContentResolver;)V

    .line 115
    const/4 v5, 0x2

    aget-object v5, v27, v5

    invoke-virtual {v7, v5}, Lcom/andfreek/myLocale/thread/Invoker;->setPhoneNumber(Ljava/lang/String;)V

    .line 116
    const/4 v5, 0x1

    aget-object v5, v27, v5

    invoke-virtual {v7, v5}, Lcom/andfreek/myLocale/thread/Invoker;->setSendMessage(Ljava/lang/String;)V

    .line 117
    move-object v0, v7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/andfreek/myLocale/thread/Invoker;->setMessageBean([Ljava/lang/String;)V

    .line 118
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 80
    .end local v7           #in:Lcom/andfreek/myLocale/thread/Invoker;
    .end local v18           #c:Landroid/database/Cursor;
    .end local v27           #messageBean:[Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 82
    .local v23, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 76
    .end local v23           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 119
    .restart local v18       #c:Landroid/database/Cursor;
    .restart local v27       #messageBean:[Ljava/lang/String;
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/andfreek/myLocale/db/DBManager;->isPopupEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const-string v5, "RAMEs"

    const-string v6, "-------------------------3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v32, Landroid/content/Intent;

    const-class v5, Lcom/andfreek/myLocale/activity/Popup;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v32, popupIntent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    move-object/from16 v0, v32

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    const-string v5, "message_id"

    move-object/from16 v0, v32

    move-object v1, v5

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
