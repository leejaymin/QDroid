.class public final Lcom/google/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/ads/internal/o;Lcom/google/ads/internal/p;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-static {}, Lcom/google/ads/AdActivity;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 135
    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->f()Lcom/google/ads/internal/o;

    move-result-object v0

    if-nez v0, :cond_1

    .line 136
    invoke-static {p0}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/o;)Lcom/google/ads/internal/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit v1

    .line 144
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/aq;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 145
    if-nez v0, :cond_2

    .line 146
    const-string v0, "activity was null while launching an AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 137
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->f()Lcom/google/ads/internal/o;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 138
    const-string v0, "Tried to launch a new AdActivity with a different AdManager."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    .line 139
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 149
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/ads/AdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v2, "com.google.ads.AdOpener"

    invoke-virtual {p1}, Lcom/google/ads/internal/p;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 155
    :try_start_2
    const-string v2, "Launching AdActivity."

    invoke-static {v2}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "Activity not found."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/google/ads/AdActivity;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->e()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method