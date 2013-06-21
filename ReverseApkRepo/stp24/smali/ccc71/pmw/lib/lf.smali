.class final Lccc71/pmw/lib/lf;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sd;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sd;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    iput-object p2, p0, Lccc71/pmw/lib/lf;->b:Ljava/lang/String;

    iput-object p3, p0, Lccc71/pmw/lib/lf;->c:Landroid/os/Handler;

    .line 198
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/lf;)Lccc71/pmw/lib/pmw_sd;
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 205
    iget-object v0, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->f(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    iget-object v2, p0, Lccc71/pmw/lib/lf;->b:Ljava/lang/String;

    iget-object v3, p0, Lccc71/pmw/lib/lf;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lccc71/pmw/b/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 206
    sget-boolean v0, Lccc71/pmw/b/u;->l:Z

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->f(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/u;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->f(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/u;->c:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v0

    if-nez v0, :cond_4

    .line 213
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    iget-object v1, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->f(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;Lccc71/pmw/b/u;)V

    .line 214
    iget-object v0, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    iget-object v1, p0, Lccc71/pmw/lib/lf;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;Ljava/lang/String;)V

    .line 217
    :cond_4
    sget-boolean v0, Lccc71/pmw/b/u;->l:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/u;->c:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/u;->c:[Ljava/lang/String;

    .line 223
    :goto_1
    iget-object v1, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/u;->e:[Ljava/lang/Long;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/u;->e:[Ljava/lang/Long;

    .line 225
    :goto_2
    iget-object v2, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_sd;->g(Lccc71/pmw/lib/pmw_sd;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/lf;->a:Lccc71/pmw/lib/pmw_sd;

    new-instance v4, Lccc71/pmw/lib/lg;

    invoke-direct {v4, p0, v0, v1}, Lccc71/pmw/lib/lg;-><init>(Lccc71/pmw/lib/lf;[Ljava/lang/String;[Ljava/lang/Long;)V

    invoke-static {v3, v4}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 222
    :cond_5
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_1

    .line 223
    :cond_6
    new-array v1, v4, [Ljava/lang/Long;

    goto :goto_2
.end method
