.class public LdT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat;


# static fields
.field private static a:LdT;

.field private static b:Landroid/app/Notification;

.field private static c:Landroid/widget/RemoteViews;

.field private static d:I

.field private static e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static h:Z

.field private static i:I

.field private static j:Z

.field private static k:Z


# instance fields
.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    new-instance v0, LdT;

    invoke-direct {v0}, LdT;-><init>()V

    sput-object v0, LdT;->a:LdT;

    .line 36
    const/4 v0, -0x1

    sput v0, LdT;->d:I

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, LdT;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, LdT;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    sput-boolean v1, LdT;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, LdT;->g:Z

    return-void
.end method

.method public static declared-synchronized a(Z)V
    .locals 8
    .parameter

    .prologue
    .line 117
    const-class v2, LdT;

    monitor-enter v2

    :try_start_0
    const-class v3, LdT;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 121
    sget-boolean v1, LdT;->j:Z

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 125
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, LdT;->j:Z

    .line 126
    invoke-static {}, Lgj;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    :goto_0
    sput v1, LdT;->d:I

    .line 127
    invoke-static {}, Lfp;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lgj;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f020066

    .line 129
    :goto_1
    sget-object v4, LdT;->b:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 131
    invoke-static {}, LdT;->f()V

    .line 132
    new-instance v4, Landroid/app/Notification;

    const-string v5, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v1, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v4, LdT;->b:Landroid/app/Notification;

    .line 134
    :cond_1
    sget-object v4, LdT;->b:Landroid/app/Notification;

    iput v1, v4, Landroid/app/Notification;->icon:I

    .line 135
    sget-object v1, LdT;->b:Landroid/app/Notification;

    const-string v4, ""

    iput-object v4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 136
    sget-object v1, LdT;->b:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 137
    invoke-static {}, Lgj;->e()Z

    move-result v1

    invoke-static {v1}, LdT;->b(Z)V

    .line 138
    sget-object v1, LdT;->b:Landroid/app/Notification;

    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 139
    const/4 v1, 0x1

    sget-object v4, LdT;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 140
    sget-object v0, LdT;->b:Landroid/app/Notification;

    const-string v1, ""

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, LdT;->h:Z

    .line 142
    sget-object v0, LdT;->a:LdT;

    invoke-static {v0}, LcA;->a(Lat;)V

    .line 143
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    .line 126
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_3
    const v1, 0x7f020061

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-static {}, Lgj;->e()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f020067

    goto :goto_1

    :cond_5
    const v1, 0x7f020062

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(ZII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0b00f6

    const/4 v4, 0x0

    .line 283
    sget-boolean v0, LdT;->h:Z

    if-eqz v0, :cond_1

    .line 284
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03002d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 285
    sput-object v0, LdT;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0b00f5

    sget v2, LdT;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 286
    sget-object v0, LdT;->c:Landroid/widget/RemoteViews;

    sget v1, LdT;->i:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 287
    sget-object v0, LdT;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0b00f7

    invoke-virtual {v0, v1, p2, p1, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 288
    if-ge p1, p2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/16 v0, 0x64

    .line 289
    :goto_0
    sget-object v1, LdT;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 290
    sget-object v1, LdT;->c:Landroid/widget/RemoteViews;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v3, 0x7f0801d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 292
    invoke-static {}, Lfp;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    const v0, 0x7f020066

    .line 295
    :goto_1
    sget-object v1, LdT;->c:Landroid/widget/RemoteViews;

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 296
    sget-object v0, LdT;->b:Landroid/app/Notification;

    sget-object v1, LdT;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 298
    :cond_1
    return-void

    .line 288
    :cond_2
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    goto :goto_0

    .line 292
    :cond_3
    const v0, 0x7f020061

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    const v0, 0x7f020067

    goto :goto_1

    :cond_5
    const v0, 0x7f020062

    goto :goto_1
.end method

.method private static a(Landroid/view/ViewGroup;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 65
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 66
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 68
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move v2, v1

    .line 70
    :goto_0
    if-ge v2, v3, :cond_2

    .line 72
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    const-string v5, "smpTxt"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    sput v0, LdT;->i:I

    .line 79
    const/4 v0, 0x1

    .line 87
    :goto_1
    return v0

    .line 82
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, LdT;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 87
    goto :goto_1
.end method

.method private static b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 223
    sget v0, LdT;->d:I

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    :pswitch_0
    return-void

    .line 225
    :pswitch_1
    invoke-static {}, LdT;->i()V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-static {p0}, LdT;->c(Z)V

    goto :goto_0

    .line 234
    :pswitch_3
    invoke-static {}, LdT;->h()V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Z)V
    .locals 4
    .parameter

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v2, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    invoke-static {v0}, LcW;->a(Landroid/content/Intent;)V

    .line 242
    const-string v1, "com.kms.gui.codeexpiration"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    const-string v1, "com.kms.gui.next_activity"

    const-class v2, Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    const-string v1, "com.kms.gui.entercodemode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 246
    sget-object v1, LdT;->b:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 247
    sget-object v0, LdT;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sget-object v0, LdT;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    invoke-static {p0, v1, v0}, LdT;->a(ZII)V

    .line 249
    return-void

    .line 247
    :cond_0
    sget-object v0, LdT;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized c()Z
    .locals 2

    .prologue
    .line 59
    const-class v0, LdT;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, LdT;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()V
    .locals 3

    .prologue
    .line 147
    const-class v1, LdT;

    monitor-enter v1

    :try_start_0
    sget-object v0, LdT;->a:LdT;

    invoke-static {v0}, LcA;->b(Lat;)V

    .line 148
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 150
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 151
    const/4 v0, 0x0

    sput-boolean v0, LdT;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit v1

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d(I)V
    .locals 2
    .parameter

    .prologue
    .line 54
    const-class v0, LdT;

    monitor-enter v0

    :try_start_0
    sput p0, LdT;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, LdT;->h:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lgj;->e()Z

    move-result v0

    invoke-static {v0}, LdT;->b(Z)V

    .line 157
    invoke-static {}, LdT;->g()V

    .line 159
    :cond_0
    return-void
.end method

.method private static f()V
    .locals 5

    .prologue
    .line 92
    sget v0, LdT;->i:I

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 99
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 100
    const-string v2, "smpTxt"

    const-string v3, "smpTxt"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 101
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_1

    .line 104
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 106
    :cond_1
    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    invoke-static {v0}, LdT;->a(Landroid/view/ViewGroup;)Z

    .line 108
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const/4 v0, 0x0

    sput v0, LdT;->i:I

    goto :goto_0
.end method

.method private static g()V
    .locals 3

    .prologue
    .line 215
    sget-boolean v0, LdT;->h:Z

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 218
    const/4 v1, 0x1

    sget-object v2, LdT;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 220
    :cond_0
    return-void
.end method

.method private static h()V
    .locals 5

    .prologue
    const v4, 0x7f0b00f6

    .line 252
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 253
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03002c

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 254
    sput-object v0, LdT;->c:Landroid/widget/RemoteViews;

    const v2, 0x7f0b00f5

    sget v3, LdT;->i:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 255
    sget-object v0, LdT;->c:Landroid/widget/RemoteViews;

    sget v2, LdT;->i:I

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 257
    invoke-static {}, Lfp;->f()I

    move-result v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    const v0, 0x7f020066

    .line 265
    :goto_0
    const v2, 0x7f080219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 267
    sget-object v3, LdT;->c:Landroid/widget/RemoteViews;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 268
    sget-object v2, LdT;->c:Landroid/widget/RemoteViews;

    const v3, 0x7f0b00f4

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 269
    sget-object v2, LdT;->b:Landroid/app/Notification;

    sget-object v3, LdT;->c:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 270
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/kms/activation/gui/ActivationActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    invoke-static {v2}, LcW;->a(Landroid/content/Intent;)V

    .line 272
    const-string v3, "dummy_stub"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 274
    sget-object v2, LdT;->b:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 275
    sget-object v1, LdT;->b:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 277
    return-void

    .line 263
    :cond_0
    const v0, 0x7f020067

    goto :goto_0
.end method

.method private static i()V
    .locals 9

    .prologue
    const v8, 0x7f0b00f6

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 301
    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 302
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03002c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 303
    sput-object v0, LdT;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0b00f5

    sget v2, LdT;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 304
    sget-object v0, LdT;->c:Landroid/widget/RemoteViews;

    sget v1, LdT;->i:I

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 305
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lge;

    .line 307
    const v1, 0x7f0801d5

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    const-class v2, Lge;

    monitor-enter v2

    .line 311
    :try_start_0
    invoke-virtual {v0}, Lge;->a()V

    .line 312
    iget v4, v0, Lge;->a:I

    .line 313
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    sput-boolean v7, LdT;->k:Z

    .line 315
    invoke-static {}, Lfp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020061

    .line 316
    :goto_0
    if-nez v4, :cond_1

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <b><font color=\"#ff8080\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0801d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</font></b>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    :goto_1
    sget-object v4, LdT;->c:Landroid/widget/RemoteViews;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 332
    sget-object v1, LdT;->c:Landroid/widget/RemoteViews;

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 333
    sget-object v1, LdT;->b:Landroid/app/Notification;

    sget-object v2, LdT;->c:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 334
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    invoke-static {v1}, LcW;->a(Landroid/content/Intent;)V

    .line 336
    const-string v2, "com.kms.gui.entercodemode"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v2, "com.kms.gui.codeexpiration"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const/high16 v2, 0x800

    invoke-static {v3, v7, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 339
    sget-object v2, LdT;->b:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 340
    sget-object v1, LdT;->b:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 341
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 315
    :cond_0
    const v0, 0x7f020062

    goto :goto_0

    .line 318
    :cond_1
    invoke-static {}, Lfp;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " <b><font color=\"#ff8080\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0801d8

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font></b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    sput-boolean v6, LdT;->k:Z

    .line 322
    const v0, 0x7f020066

    .line 323
    const-string v1, ""

    goto :goto_1

    .line 325
    :cond_2
    if-ne v4, v6, :cond_3

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <b>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0801d7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</b>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 328
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <b>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0801d6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</b>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    const/4 v0, 0x3

    sput v0, LdT;->d:I

    .line 207
    iput-boolean v1, p0, LdT;->g:Z

    .line 208
    sget-object v0, LdT;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 209
    sget-object v0, LdT;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 210
    invoke-static {}, Lgj;->e()Z

    move-result v0

    invoke-static {v0}, LdT;->b(Z)V

    .line 211
    invoke-static {}, LdT;->g()V

    .line 212
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, LdT;->g:Z

    .line 166
    sget-object v0, LdT;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 167
    sget-object v0, LdT;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    invoke-static {}, Lgj;->e()Z

    move-result v0

    sget-object v1, LdT;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sget-object v2, LdT;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v1, v2}, LdT;->a(ZII)V

    .line 169
    invoke-static {}, LdT;->g()V

    .line 172
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-static {}, Lgj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, LdT;->d:I

    .line 198
    sget-object v0, LdT;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 199
    sget-object v0, LdT;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 200
    invoke-static {}, Lgj;->e()Z

    move-result v0

    invoke-static {v0}, LdT;->b(Z)V

    .line 201
    invoke-static {}, LdT;->g()V

    .line 202
    return-void

    :cond_0
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 180
    return-void
.end method

.method public final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 184
    iget-boolean v0, p0, LdT;->g:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lgj;->e()Z

    move-result v0

    sget-object v1, LdT;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v0, p1, v1}, LdT;->a(ZII)V

    .line 187
    invoke-static {}, LdT;->g()V

    .line 189
    :cond_0
    return-void
.end method
