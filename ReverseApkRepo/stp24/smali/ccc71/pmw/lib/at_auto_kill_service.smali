.class public Lccc71/pmw/lib/at_auto_kill_service;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Intent;

.field static b:Z

.field private static c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lccc71/pmw/lib/at_auto_kill_service;->c:Ljava/util/ArrayList;

    .line 23
    sput-object v0, Lccc71/pmw/lib/at_auto_kill_service;->a:Landroid/content/Intent;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    sget-object v0, Lccc71/pmw/lib/at_auto_kill_service;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lccc71/pmw/lib/at_auto_kill_service;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/at_auto_kill_service;->a:Landroid/content/Intent;

    .line 44
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/util/ArrayList;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    if-ne p1, v1, :cond_3

    .line 103
    :try_start_0
    sget v1, Lccc71/pmw/lib/g;->dU:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 120
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lccc71/pmw/lib/at_auto_kill_service;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lccc71/pmw/lib/at_auto_kill_service;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lccc71/pmw/lib/at_auto_kill_service;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_monitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const v1, 0x10000004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :cond_2
    :goto_1
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->b(Landroid/content/Context;)V

    .line 148
    return-void

    .line 106
    :cond_3
    if-eqz p3, :cond_4

    if-eqz p1, :cond_0

    .line 108
    :cond_4
    :try_start_2
    sget v1, Lccc71/pmw/lib/g;->dT:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 109
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    const-string v1, "process_monitor_widget"

    const-string v2, "Can\'t show toast message - probably running without UI!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    .line 133
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error launching task manager:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 138
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lccc71/pmw/lib/at_auto_kill_service;->c:Ljava/util/ArrayList;

    move v1, v0

    .line 139
    :goto_2
    if-ge v1, p1, :cond_2

    .line 141
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 142
    sget-object v2, Lccc71/pmw/lib/at_auto_kill_service;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 29
    sget-object v0, Lccc71/pmw/lib/at_auto_kill_service;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lccc71/pmw/lib/at_auto_kill_service;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lccc71/pmw/lib/at_auto_kill_service;->a:Landroid/content/Intent;

    .line 32
    :cond_0
    sput-boolean p1, Lccc71/pmw/lib/at_auto_kill_service;->b:Z

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lccc71/pmw/lib/at_auto_kill_service;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter

    .prologue
    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v3, Lccc71/pmw/b/q;

    invoke-direct {v3, p0}, Lccc71/pmw/b/q;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v3}, Lccc71/pmw/b/q;->c()V

    .line 158
    invoke-virtual {v3}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 190
    if-eqz v4, :cond_1

    .line 192
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Killing "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " processes..."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v4, :cond_6

    .line 200
    :cond_1
    return-object v2

    .line 160
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 162
    iget-object v4, v0, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    .line 164
    :cond_3
    iget-object v4, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v4}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    iget-object v4, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v4}, Lccc71/pmw/b/q;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 170
    invoke-static {p0, v0}, Lccc71/pmw/b/q;->a(Landroid/content/Context;Lccc71/pmw/b/p;)V

    .line 171
    iget-boolean v4, v0, Lccc71/pmw/b/p;->h:Z

    if-eqz v4, :cond_4

    .line 173
    invoke-virtual {v3, v0}, Lccc71/pmw/b/q;->c(Lccc71/pmw/b/p;)V

    goto :goto_0

    .line 176
    :cond_4
    iget-boolean v4, v0, Lccc71/pmw/b/p;->g:Z

    if-nez v4, :cond_0

    .line 178
    invoke-virtual {v3, v0}, Lccc71/pmw/b/q;->d(Lccc71/pmw/b/p;)V

    .line 184
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_6
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    invoke-virtual {v3, v0}, Lccc71/pmw/b/q;->a(Lccc71/pmw/b/p;)Z

    .line 194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lccc71/pmw/lib/at_auto_kill_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/j;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/j;-><init>(Lccc71/pmw/lib/at_auto_kill_service;Landroid/content/Context;)V

    sget-object v0, Lccc71/utils/android/a;->e:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lccc71/pmw/lib/j;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 51
    const/4 v0, 0x1

    return v0
.end method
