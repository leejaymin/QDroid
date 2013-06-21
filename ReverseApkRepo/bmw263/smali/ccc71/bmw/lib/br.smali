.class final Lccc71/bmw/lib/br;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_past_stats;

.field private final synthetic b:Lccc71/utils/b/a;

.field private final synthetic c:Landroid/os/Handler;

.field private final synthetic d:J


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_past_stats;Lccc71/utils/b/a;Landroid/os/Handler;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    iput-object p2, p0, Lccc71/bmw/lib/br;->b:Lccc71/utils/b/a;

    iput-object p3, p0, Lccc71/bmw/lib/br;->c:Landroid/os/Handler;

    iput-wide p4, p0, Lccc71/bmw/lib/br;->d:J

    .line 173
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/br;)Lccc71/bmw/lib/bmw_past_stats;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 178
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v0, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    iget-object v0, p0, Lccc71/bmw/lib/br;->b:Lccc71/utils/b/a;

    iget-object v1, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    const/4 v3, 0x1

    iget-object v4, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_past_stats;->c(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v4

    iget-object v5, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v5}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lccc71/utils/b/a;->a(Landroid/content/Context;III)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lccc71/bmw/lib/bmw_past_stats;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 186
    iget-object v0, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    iget-object v0, p0, Lccc71/bmw/lib/br;->b:Lccc71/utils/b/a;

    iget-object v1, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    const/4 v3, 0x0

    iget-object v4, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_past_stats;->c(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v4

    iget-object v5, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v5}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lccc71/utils/b/a;->a(Landroid/content/Context;III)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lccc71/bmw/lib/bmw_past_stats;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 187
    iget-object v0, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    iget-object v0, p0, Lccc71/bmw/lib/br;->b:Lccc71/utils/b/a;

    iget-object v1, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    const/4 v3, 0x2

    iget-object v4, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_past_stats;->c(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v4

    iget-object v5, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v5}, Lccc71/bmw/lib/bmw_past_stats;->b(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lccc71/utils/b/a;->a(Landroid/content/Context;III)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lccc71/bmw/lib/bmw_past_stats;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 189
    new-instance v0, Lccc71/utils/b/g;

    invoke-direct {v0}, Lccc71/utils/b/g;-><init>()V

    .line 190
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Loaded "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " wakelocks data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    iget-object v0, p0, Lccc71/bmw/lib/br;->b:Lccc71/utils/b/a;

    iget-object v1, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    iget-object v3, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-static {v3}, Lccc71/bmw/lib/bmw_past_stats;->c(Lccc71/bmw/lib/bmw_past_stats;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lccc71/utils/b/a;->a(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 201
    new-instance v0, Lccc71/utils/b/c;

    invoke-direct {v0}, Lccc71/utils/b/c;-><init>()V

    .line 202
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    iget-object v0, p0, Lccc71/bmw/lib/br;->a:Lccc71/bmw/lib/bmw_past_stats;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_past_stats;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 206
    iget-object v7, p0, Lccc71/bmw/lib/br;->c:Landroid/os/Handler;

    new-instance v0, Lccc71/bmw/lib/bs;

    iget-wide v5, p0, Lccc71/bmw/lib/br;->d:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lccc71/bmw/lib/bs;-><init>(Lccc71/bmw/lib/br;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/pm/PackageManager;J)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 196
    const-string v1, "battery_widget_monitor"

    const-string v3, "Failed to load wakelocks"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
