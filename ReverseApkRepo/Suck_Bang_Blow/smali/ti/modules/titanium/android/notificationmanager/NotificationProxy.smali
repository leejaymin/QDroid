.class public Lti/modules/titanium/android/notificationmanager/NotificationProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "NotificationProxy.java"


# static fields
.field private static DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiNotification"


# instance fields
.field protected notification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 5
    .parameter "tiContext"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 42
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108008a

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    .line 44
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 45
    return-void
.end method


# virtual methods
.method protected checkLatestEventInfoProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .parameter "d"

    .prologue
    const-string v8, "contentIntent"

    const-string v7, "contentTitle"

    const-string v6, "contentText"

    .line 223
    const-string v5, "contentTitle"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "contentText"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 226
    :cond_0
    const-string v3, ""

    .line 227
    .local v3, contentTitle:Ljava/lang/String;
    const-string v2, ""

    .line 228
    .local v2, contentText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 229
    .local v1, contentIntent:Landroid/app/PendingIntent;
    const-string v5, "contentTitle"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    const-string v5, "contentTitle"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    :cond_1
    const-string v5, "contentText"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    const-string v5, "contentText"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    :cond_2
    const-string v5, "contentIntent"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    const-string v5, "contentIntent"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/android/PendingIntentProxy;

    .line 237
    .local v4, intentProxy:Lti/modules/titanium/android/PendingIntentProxy;
    invoke-virtual {v4}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 239
    .end local v4           #intentProxy:Lti/modules/titanium/android/PendingIntentProxy;
    :cond_3
    invoke-virtual {p0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_4

    .line 241
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    :cond_4
    iget-object v5, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v0, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 245
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #contentText:Ljava/lang/String;
    .end local v3           #contentTitle:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .parameter "d"

    .prologue
    const/4 v1, 0x0

    const-string v5, "defaults"

    const-string v4, "contentView"

    const-string v3, "contentIntent"

    const-string v2, "audioStreamType"

    .line 50
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 51
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setIcon(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V

    .line 57
    :cond_1
    const-string v0, "tickerText"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "tickerText"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setTickerText(Ljava/lang/String;)V

    .line 60
    :cond_2
    const-string v0, "when"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "when"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setWhen(Ljava/lang/Object;)V

    .line 63
    :cond_3
    const-string v0, "audioStreamType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    const-string v0, "audioStreamType"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setAudioStreamType(I)V

    .line 66
    :cond_4
    const-string v0, "contentView"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    const-string v0, "contentView"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/RemoteViewsProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setContentView(Lti/modules/titanium/android/RemoteViewsProxy;)V

    .line 69
    :cond_5
    const-string v0, "contentIntent"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    const-string v0, "contentIntent"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/PendingIntentProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setContentIntent(Lti/modules/titanium/android/PendingIntentProxy;)V

    .line 72
    :cond_6
    const-string v0, "defaults"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    const-string v0, "defaults"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setDefaults(I)V

    .line 75
    :cond_7
    const-string v0, "deleteIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    const-string v0, "deleteIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/PendingIntentProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setDeleteIntent(Lti/modules/titanium/android/PendingIntentProxy;)V

    .line 78
    :cond_8
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    const-string v0, "flags"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setFlags(I)V

    .line 81
    :cond_9
    const-string v0, "iconLevel"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    const-string v0, "iconLevel"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setIconLevel(I)V

    .line 84
    :cond_a
    const-string v0, "ledARGB"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    const-string v0, "ledARGB"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLedARGB(I)V

    .line 87
    :cond_b
    const-string v0, "ledOffMS"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 88
    const-string v0, "ledOffMS"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLedOffMS(I)V

    .line 90
    :cond_c
    const-string v0, "ledOnMS"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 91
    const-string v0, "ledOnMS"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLedOnMS(I)V

    .line 93
    :cond_d
    const-string v0, "number"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 94
    const-string v0, "number"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setNumber(I)V

    .line 96
    :cond_e
    const-string v0, "sound"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 97
    const-string v0, "sound"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setSound(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;)V

    .line 99
    :cond_f
    const-string v0, "vibratePattern"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 100
    const-string v0, "vibratePattern"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setVibratePattern([Ljava/lang/Object;)V

    .line 102
    :cond_10
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->checkLatestEventInfoProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 140
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 141
    return-void
.end method

.method public setContentIntent(Lti/modules/titanium/android/PendingIntentProxy;)V
    .locals 2
    .parameter "contentIntent"

    .prologue
    .line 152
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {p1}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 153
    return-void
.end method

.method public setContentView(Lti/modules/titanium/android/RemoteViewsProxy;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 146
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {p1}, Lti/modules/titanium/android/RemoteViewsProxy;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 147
    return-void
.end method

.method public setDefaults(I)V
    .locals 1
    .parameter "defaults"

    .prologue
    .line 158
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 159
    return-void
.end method

.method public setDeleteIntent(Lti/modules/titanium/android/PendingIntentProxy;)V
    .locals 2
    .parameter "deleteIntent"

    .prologue
    .line 164
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {p1}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 165
    return-void
.end method

.method public setFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 170
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 171
    return-void
.end method

.method public setIcon(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V
    .locals 6
    .parameter "invocation"
    .parameter "icon"

    .prologue
    .line 108
    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local p2
    :cond_1
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, iconUrl:Ljava/lang/String;
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    move-object v0, v3

    .line 113
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    :goto_1
    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, iconFullUrl:Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 115
    iget-object v3, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-nez v3, :cond_0

    .line 116
    const-string v3, "TiNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No image found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    .end local v1           #iconFullUrl:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public setIconLevel(I)V
    .locals 1
    .parameter "iconLevel"

    .prologue
    .line 176
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->iconLevel:I

    .line 177
    return-void
.end method

.method public setLatestEventInfo(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/String;Lti/modules/titanium/android/PendingIntentProxy;)V
    .locals 3
    .parameter "invocation"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "contentIntent"

    .prologue
    .line 251
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {p4}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, p2, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 256
    return-void
.end method

.method public setLedARGB(I)V
    .locals 1
    .parameter "ledARGB"

    .prologue
    .line 182
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 183
    return-void
.end method

.method public setLedOffMS(I)V
    .locals 1
    .parameter "ledOffMS"

    .prologue
    .line 188
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 189
    return-void
.end method

.method public setLedOnMS(I)V
    .locals 1
    .parameter "ledOnMS"

    .prologue
    .line 194
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 195
    return-void
.end method

.method public setNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 200
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 201
    return-void
.end method

.method public setSound(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;)V
    .locals 3
    .parameter "invocation"
    .parameter "url"

    .prologue
    .line 206
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    move-object v0, v1

    .line 207
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p2}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 208
    return-void

    .line 206
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public setTickerText(Ljava/lang/String;)V
    .locals 1
    .parameter "tickerText"

    .prologue
    .line 124
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 125
    return-void
.end method

.method public setVibratePattern([Ljava/lang/Object;)V
    .locals 4
    .parameter "pattern"

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    array-length v2, p1

    new-array v2, v2, [J

    iput-object v2, v1, Landroid/app/Notification;->vibrate:[J

    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->vibrate:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public setWhen(Ljava/lang/Object;)V
    .locals 3
    .parameter "when"

    .prologue
    .line 130
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 135
    :goto_0
    return-void

    .line 133
    .restart local p1
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    goto :goto_0
.end method
