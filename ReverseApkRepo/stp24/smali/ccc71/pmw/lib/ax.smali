.class final Lccc71/pmw/lib/ax;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/aw;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/aw;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ax;->a:Lccc71/pmw/lib/aw;

    iput p2, p0, Lccc71/pmw/lib/ax;->b:I

    .line 2085
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2090
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2092
    iget-object v0, p0, Lccc71/pmw/lib/ax;->a:Lccc71/pmw/lib/aw;

    invoke-static {v0}, Lccc71/pmw/lib/aw;->a(Lccc71/pmw/lib/aw;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/b;->e:Lccc71/pmw/a/b;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 2093
    iget-object v0, p0, Lccc71/pmw/lib/ax;->a:Lccc71/pmw/lib/aw;

    invoke-static {v0}, Lccc71/pmw/lib/aw;->a(Lccc71/pmw/lib/aw;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    iget-object v0, p0, Lccc71/pmw/lib/ax;->a:Lccc71/pmw/lib/aw;

    invoke-static {v0}, Lccc71/pmw/lib/aw;->a(Lccc71/pmw/lib/aw;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v2, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lccc71/pmw/lib/ax;->a:Lccc71/pmw/lib/aw;

    invoke-static {v0}, Lccc71/pmw/lib/aw;->a(Lccc71/pmw/lib/aw;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->m(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v3

    iget v0, p0, Lccc71/pmw/lib/ax;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 2094
    return-void

    .line 2093
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
