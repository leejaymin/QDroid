.class public final Lcom/thinkyeah/smartlock/ap;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/thinkyeah/smartlock/ap;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/thinkyeah/smartlock/service/a;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/aq;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/aq;-><init>(Lcom/thinkyeah/smartlock/ap;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ap;->d:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;
    .locals 2

    const-class v1, Lcom/thinkyeah/smartlock/ap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/thinkyeah/smartlock/ap;->c:Lcom/thinkyeah/smartlock/ap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thinkyeah/smartlock/ap;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/ap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/thinkyeah/smartlock/ap;->c:Lcom/thinkyeah/smartlock/ap;

    :cond_0
    sget-object v0, Lcom/thinkyeah/smartlock/ap;->c:Lcom/thinkyeah/smartlock/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "PasswordRetrieveMethod"

    invoke-static {v0, v1, p1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0, p1}, Lcom/thinkyeah/smartlock/service/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "ShowSettingSecurityQuestionSuggestion"

    invoke-static {v0, v1, p1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ap;->q()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 6

    const v5, 0x7f0b004a

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "LockPatternEnabled"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    const-string v4, "LockPatternEnabled"

    invoke-static {v3, v4, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-class v3, Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001d

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v2, 0x7f020061

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.thinkyeah.smartlock.intent.action.WIDGET_TOGGLE_LOCK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-class v4, Lcom/thinkyeah/smartlock/widget/QuickToggleWidget;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const v2, 0x7f09004d

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ap;->c()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const v2, 0x7f09004c

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public final c()V
    .locals 6

    const v5, 0x7f0b004a

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-class v3, Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ap;->d()V

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f020062

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.thinkyeah.smartlock.intent.action.WIDGET_TOGGLE_LOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-class v3, Lcom/thinkyeah/smartlock/widget/QuickToggleWidget;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final d()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-class v2, Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->d:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "LockPatternEnabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->a()V

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "LockPatternEnabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "NotificationEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "LockScreenSelection"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "LockScreenUri"

    sget-object v2, Lcom/thinkyeah/smartlock/aj;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "NotificationEnabled"

    invoke-static {v1, v2, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v3, "NotificationEnabled"

    invoke-static {v2, v3, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->b()V

    goto :goto_0
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "VibrationFeedbackEnabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ap;->s()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ai;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ai;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/thinkyeah/smartlock/ai;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final m()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ap;->q()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ai;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ai;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "PatternVisible"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v3, "VersionCode"

    invoke-static {v2, v3, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "VersionCode"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final p()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v3, "VersionCode"

    invoke-static {v2, v3, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final q()I
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "LockType"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "ShowSettingSecurityQuestionSuggestion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "PasswordRetrieveMethod"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ai;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ai;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ai;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/thinkyeah/smartlock/ap;->a(I)V

    move v0, v1

    goto :goto_0
.end method
