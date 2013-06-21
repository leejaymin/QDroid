.class public final Leu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Leu;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput v0, Leu;->a:I

    .line 117
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Leu;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0b0087

    const/4 v0, 0x0

    .line 126
    invoke-static {}, Leu;->b()I

    move-result v1

    .line 127
    if-nez p1, :cond_0

    sget v2, Leu;->a:I

    if-ne v1, v2, :cond_0

    .line 145
    :goto_0
    return v0

    .line 132
    :cond_0
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030023

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 133
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 135
    invoke-virtual {v2, v7, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 137
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/kms/gui/widget/KMSWidget;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.kms.gui.widget.CLICK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {p0, v0, v5, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 141
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 142
    invoke-virtual {v3, v4, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 144
    sput v1, Leu;->a:I

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b()I
    .locals 9

    .prologue
    const v3, 0x7f0200b7

    const v5, 0x7f0200b5

    const v4, 0x7f0200b1

    const v2, 0x7f0200b3

    .line 24
    invoke-static {}, Lgj;->a()Z

    move-result v0

    .line 25
    if-nez v0, :cond_0

    move v0, v2

    .line 107
    :goto_0
    return v0

    .line 31
    :cond_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 32
    const-class v1, Lgd;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-boolean v6, v0, Lgd;->g:Z

    .line 34
    iget-boolean v7, v0, Lgd;->h:Z

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lge;

    .line 38
    if-eqz v0, :cond_1

    .line 39
    const-class v1, Lge;

    monitor-enter v1

    .line 40
    :try_start_1
    invoke-virtual {v0}, Lge;->a()V

    .line 41
    iget v0, v0, Lge;->a:I

    .line 42
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v0

    .line 44
    :cond_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 45
    if-nez v6, :cond_2

    .line 47
    const v0, 0x7f0200b9

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 42
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 50
    :cond_2
    invoke-static {}, Lgj;->e()Z

    move-result v6

    .line 51
    if-eqz v1, :cond_8

    .line 53
    if-nez v7, :cond_4

    .line 55
    if-eqz v6, :cond_3

    move v0, v3

    .line 57
    goto :goto_0

    :cond_3
    move v0, v4

    .line 59
    goto :goto_0

    .line 63
    :cond_4
    iget-boolean v0, v0, Lgf;->b:Z

    if-eqz v0, :cond_6

    .line 65
    if-eqz v6, :cond_5

    .line 67
    const v0, 0x7f0200b8

    goto :goto_0

    .line 69
    :cond_5
    const v0, 0x7f0200b2

    goto :goto_0

    .line 73
    :cond_6
    if-eqz v6, :cond_7

    move v0, v3

    .line 75
    goto :goto_0

    :cond_7
    move v0, v4

    .line 77
    goto :goto_0

    .line 83
    :cond_8
    if-nez v7, :cond_a

    .line 85
    if-eqz v6, :cond_9

    move v0, v5

    .line 87
    goto :goto_0

    :cond_9
    move v0, v2

    .line 89
    goto :goto_0

    .line 93
    :cond_a
    iget-boolean v0, v0, Lgf;->b:Z

    if-eqz v0, :cond_c

    .line 95
    if-eqz v6, :cond_b

    .line 97
    const v0, 0x7f0200b6

    goto :goto_0

    .line 99
    :cond_b
    const v0, 0x7f0200b4

    goto :goto_0

    .line 103
    :cond_c
    if-eqz v6, :cond_d

    move v0, v5

    .line 105
    goto :goto_0

    :cond_d
    move v0, v2

    .line 107
    goto :goto_0
.end method
