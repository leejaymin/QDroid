.class public abstract Lorg/connectbot/service/ConnectionNotifier;
.super Ljava/lang/Object;
.source "ConnectionNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;,
        Lorg/connectbot/service/ConnectionNotifier$PreEclair;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/connectbot/service/ConnectionNotifier;
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lorg/connectbot/util/PreferenceConstants;->PRE_ECLAIR:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lorg/connectbot/service/ConnectionNotifier$PreEclair$Holder;->access$0()Lorg/connectbot/service/ConnectionNotifier$PreEclair;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond$Holder;->access$0()Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public abstract hideRunningNotification(Landroid/app/Service;)V
.end method

.method protected newActivityNotification(Landroid/content/Context;Lorg/connectbot/bean/HostBean;)Landroid/app/Notification;
    .locals 9
    .parameter "context"
    .parameter "host"

    .prologue
    const/4 v8, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lorg/connectbot/service/ConnectionNotifier;->newNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    .line 69
    .local v2, notification:Landroid/app/Notification;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 72
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0800cb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 71
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, contentText:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lorg/connectbot/ConsoleActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v3, notificationIntent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p2}, Lorg/connectbot/bean/HostBean;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    invoke-static {p1, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 81
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v5, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 83
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 85
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 86
    const-string v5, "red"

    invoke-virtual {p2}, Lorg/connectbot/bean/HostBean;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    const/high16 v5, -0x1

    iput v5, v2, Landroid/app/Notification;->ledARGB:I

    .line 94
    :goto_0
    const/16 v5, 0x12c

    iput v5, v2, Landroid/app/Notification;->ledOnMS:I

    .line 95
    const/16 v5, 0x3e8

    iput v5, v2, Landroid/app/Notification;->ledOffMS:I

    .line 96
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 98
    return-object v2

    .line 88
    :cond_0
    const-string v5, "green"

    invoke-virtual {p2}, Lorg/connectbot/bean/HostBean;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    const v5, -0xff0100

    iput v5, v2, Landroid/app/Notification;->ledARGB:I

    goto :goto_0

    .line 90
    :cond_1
    const-string v5, "blue"

    invoke-virtual {p2}, Lorg/connectbot/bean/HostBean;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    const v5, -0xffff01

    iput v5, v2, Landroid/app/Notification;->ledARGB:I

    goto :goto_0

    .line 93
    :cond_2
    const/4 v5, -0x1

    iput v5, v2, Landroid/app/Notification;->ledARGB:I

    goto :goto_0
.end method

.method protected newNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 60
    .local v0, notification:Landroid/app/Notification;
    const v1, 0x7f020009

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 63
    return-object v0
.end method

.method protected newRunningNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 5
    .parameter "context"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lorg/connectbot/service/ConnectionNotifier;->newNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    .line 104
    .local v0, notification:Landroid/app/Notification;
    const/16 v2, 0x22

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 106
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 109
    const/4 v2, 0x1

    .line 110
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/connectbot/ConsoleActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    .line 108
    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    const v3, 0x7f0800d1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    iget-object v4, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 114
    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 119
    return-object v0
.end method

.method public showActivityNotification(Landroid/app/Service;Lorg/connectbot/bean/HostBean;)V
    .locals 3
    .parameter "context"
    .parameter "host"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lorg/connectbot/service/ConnectionNotifier;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2}, Lorg/connectbot/service/ConnectionNotifier;->newActivityNotification(Landroid/content/Context;Lorg/connectbot/bean/HostBean;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 124
    return-void
.end method

.method public abstract showRunningNotification(Landroid/app/Service;)V
.end method
