.class public final Limoblife/toolbox/full/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Limoblife/toolbox/full/battery/a;
.implements Limoblife/toolbox/full/it/b;


# static fields
.field private static a:Limoblife/toolbox/full/f/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;
    .locals 1

    sget-object v0, Limoblife/toolbox/full/f/a;->a:Limoblife/toolbox/full/f/a;

    if-nez v0, :cond_0

    new-instance v0, Limoblife/toolbox/full/f/a;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/f/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Limoblife/toolbox/full/f/a;->a:Limoblife/toolbox/full/f/a;

    :cond_0
    sget-object v0, Limoblife/toolbox/full/f/a;->a:Limoblife/toolbox/full/f/a;

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mode_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Limoblife/toolbox/full/f/a;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mode_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Limoblife/toolbox/full/f/a;->c()V

    invoke-virtual {p0}, Limoblife/toolbox/full/f/a;->e()V

    invoke-virtual {p0}, Limoblife/toolbox/full/f/a;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Limoblife/toolbox/full/f/a;->d()V

    invoke-virtual {p0}, Limoblife/toolbox/full/f/a;->f()V

    goto :goto_0
.end method

.method public final a(III)V
    .locals 2

    iput p1, p0, Limoblife/toolbox/full/f/a;->c:I

    iput p2, p0, Limoblife/toolbox/full/f/a;->d:I

    mul-int/lit8 v0, p1, 0x4

    div-int v1, v0, p2

    const v0, 0x7f020097

    packed-switch v1, :pswitch_data_0

    :goto_0
    iput v0, p0, Limoblife/toolbox/full/f/a;->h:I

    invoke-direct {p0}, Limoblife/toolbox/full/f/a;->g()V

    return-void

    :pswitch_0
    const v0, 0x7f0200b4

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0200b5

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0200b6

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0200b7

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0200b8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(JJ)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestMemory(): free = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestMemory(): total = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Limoblife/toolbox/full/f/a;->e:J

    iput-wide p3, p0, Limoblife/toolbox/full/f/a;->f:J

    invoke-direct {p0}, Limoblife/toolbox/full/f/a;->g()V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Limoblife/toolbox/full/f/a;->c:I

    return-void
.end method

.method public final c()V
    .locals 9

    const v8, 0x7f070001

    const/4 v7, 0x0

    iget-wide v0, p0, Limoblife/toolbox/full/f/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Limoblife/toolbox/full/f/a;->e:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Limoblife/toolbox/full/f/a;->f:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Limoblife/toolbox/full/f/a;->g:I

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    iget-wide v1, p0, Limoblife/toolbox/full/f/a;->e:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    iget-wide v2, p0, Limoblife/toolbox/full/f/a;->f:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    iget-wide v3, p0, Limoblife/toolbox/full/f/a;->f:J

    iget-wide v5, p0, Limoblife/toolbox/full/f/a;->e:J

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    const v4, 0x7f07007b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Limoblife/toolbox/full/f/a;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/f/a;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020132

    iget-object v3, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030031

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0800df

    iget-object v4, p0, Limoblife/toolbox/full/f/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0800e1

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Limoblife/toolbox/full/f/a;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0800de

    const/16 v4, 0x64

    iget v5, p0, Limoblife/toolbox/full/f/a;->g:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const v3, 0x7f0800e0

    iget v4, p0, Limoblife/toolbox/full/f/a;->h:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    const-class v4, Lcom/viewpagerindicator/sample/SampleTabsDefault;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    invoke-static {v3, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Limoblife/toolbox/full/f/a;->f()V

    return-void
.end method

.method public final e()V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Limoblife/toolbox/full/g/c;->a(Landroid/content/Context;)Limoblife/toolbox/full/g/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Limoblife/toolbox/full/g/c;->a(Limoblife/toolbox/full/it/b;)V

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Limoblife/toolbox/full/g/c;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Limoblife/toolbox/full/g/c;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Limoblife/toolbox/full/f/a;->b:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
