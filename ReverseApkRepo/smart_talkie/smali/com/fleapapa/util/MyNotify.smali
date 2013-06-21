.class public Lcom/fleapapa/util/MyNotify;
.super Ljava/lang/Object;
.source "MyNotify.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "rid"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static notify(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "rid"
    .parameter "bLong"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 19
    return-void
.end method

.method public static notify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "text"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 23
    return-void
.end method

.method public static notify(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "bLong"

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 15
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 14
    :cond_0
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 16
    return-void
.end method

.method public static notifyStatusBar(Landroid/content/Context;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "icon"
    .parameter "ticker"
    .parameter "contentIntent"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "flags"
    .parameter "number"
    .parameter "defaults"

    .prologue
    const/4 v2, 0x0

    const-string v4, "notification"

    .line 31
    invoke-static {p0, v2, p4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 32
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p2, p3, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 33
    .local v0, notification:Landroid/app/Notification;
    invoke-virtual {v0, p0, p5, p6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 34
    iput p7, v0, Landroid/app/Notification;->flags:I

    .line 35
    iput p8, v0, Landroid/app/Notification;->number:I

    .line 36
    iput p9, v0, Landroid/app/Notification;->defaults:I

    .line 37
    const-string v2, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 38
    const-string v2, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 39
    return-void
.end method

.method public static todo(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const-string v0, "Under Construction..."

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method
