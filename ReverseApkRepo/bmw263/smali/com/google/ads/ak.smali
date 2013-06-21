.class final Lcom/google/ads/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/ai;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/ads/d;

.field private final d:Ljava/util/HashMap;

.field private final e:Z

.field private final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/ads/ai;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/ads/ak;->a:Lcom/google/ads/ai;

    .line 97
    iput-object p3, p0, Lcom/google/ads/ak;->b:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ak;->f:Ljava/lang/ref/WeakReference;

    .line 99
    iput-object p4, p0, Lcom/google/ads/ak;->c:Lcom/google/ads/d;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/ads/ak;->d:Ljava/util/HashMap;

    .line 103
    iget-object v0, p0, Lcom/google/ads/ak;->d:Ljava/util/HashMap;

    const-string v1, "gwhirl_share_location"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/ads/ak;->e:Z

    .line 104
    return-void

    .line 103
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received an illegal value, \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', for the special share location parameter from mediation server (expected \'0\' or \'1\'). Will not share the location."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/ads/ah;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-static {p1, p2}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    iget-object v0, p0, Lcom/google/ads/ak;->a:Lcom/google/ads/ai;

    invoke-virtual {v0, p3}, Lcom/google/ads/ai;->a(Lcom/google/ads/ah;)V

    .line 138
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to instantiate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/ak;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/ads/ak;->b:Ljava/lang/String;

    const-class v1, Lcom/google/ads/a/b;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/b;

    .line 119
    iget-object v1, p0, Lcom/google/ads/ak;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/ads/al;

    const-string v1, "Activity became null while trying to instantiate adapter."

    invoke-direct {v0, v1}, Lcom/google/ads/al;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find adapter class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/ak;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Did you link the ad network\'s mediation adapter? Skipping ad network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/ads/ah;->e:Lcom/google/ads/ah;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/ads/ak;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/ads/ah;)V

    .line 132
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/ads/ak;->a:Lcom/google/ads/ai;

    invoke-virtual {v2, v0}, Lcom/google/ads/ai;->a(Lcom/google/ads/a/b;)V

    invoke-interface {v0}, Lcom/google/ads/a/b;->c()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/a/e;

    iget-object v3, p0, Lcom/google/ads/ak;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/google/ads/a/e;->a(Ljava/util/Map;)V

    :cond_1
    invoke-interface {v0}, Lcom/google/ads/a/b;->b()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/ads/ak;->c:Lcom/google/ads/d;

    invoke-virtual {v3, v2}, Lcom/google/ads/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Lcom/google/ads/a/a;

    iget-object v3, p0, Lcom/google/ads/ak;->c:Lcom/google/ads/d;

    iget-boolean v4, p0, Lcom/google/ads/ak;->e:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/google/ads/a/a;-><init>(Lcom/google/ads/d;Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/google/ads/ak;->a:Lcom/google/ads/ai;

    iget-object v1, v1, Lcom/google/ads/ai;->a:Lcom/google/ads/internal/u;

    invoke-virtual {v1}, Lcom/google/ads/internal/u;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/google/ads/a/d;

    if-nez v1, :cond_3

    new-instance v0, Lcom/google/ads/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/ak;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationInterstitialAdapter interface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/al;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :catch_1
    move-exception v0

    .line 127
    const-string v1, "Error while creating adapter and loading ad from ad network. Skipping ad network."

    sget-object v2, Lcom/google/ads/ah;->f:Lcom/google/ads/ah;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/ads/ak;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/ads/ah;)V

    goto :goto_0

    .line 119
    :cond_3
    :try_start_2
    check-cast v0, Lcom/google/ads/a/d;

    new-instance v1, Lcom/google/ads/an;

    iget-object v2, p0, Lcom/google/ads/ak;->a:Lcom/google/ads/ai;

    invoke-direct {v1, v2}, Lcom/google/ads/an;-><init>(Lcom/google/ads/ai;)V

    invoke-interface {v0}, Lcom/google/ads/a/d;->d()V

    :goto_1
    iget-object v0, p0, Lcom/google/ads/ak;->a:Lcom/google/ads/ai;

    invoke-virtual {v0}, Lcom/google/ads/ai;->g()V

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/google/ads/a/c;

    if-nez v1, :cond_5

    new-instance v0, Lcom/google/ads/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/ak;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationBannerAdapter interface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v0, Lcom/google/ads/a/c;

    new-instance v1, Lcom/google/ads/am;

    iget-object v2, p0, Lcom/google/ads/ak;->a:Lcom/google/ads/ai;

    invoke-direct {v1, v2}, Lcom/google/ads/am;-><init>(Lcom/google/ads/ai;)V

    iget-object v1, p0, Lcom/google/ads/ak;->a:Lcom/google/ads/ai;

    iget-object v1, v1, Lcom/google/ads/ai;->a:Lcom/google/ads/internal/u;

    invoke-virtual {v1}, Lcom/google/ads/internal/u;->b()Lcom/google/ads/g;

    invoke-interface {v0}, Lcom/google/ads/a/c;->d()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
