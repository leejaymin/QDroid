.class final Lccc71/pmw/lib/ap;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ao;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ap;->a:Lccc71/pmw/lib/ao;

    .line 1872
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1877
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1879
    iget-object v0, p0, Lccc71/pmw/lib/ap;->a:Lccc71/pmw/lib/ao;

    invoke-static {v0}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/b;->a:Lccc71/pmw/a/b;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 1880
    iget-object v0, p0, Lccc71/pmw/lib/ap;->a:Lccc71/pmw/lib/ao;

    invoke-static {v0}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ap;->a:Lccc71/pmw/lib/ao;

    invoke-static {v1}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lccc71/pmw/lib/ap;->a:Lccc71/pmw/lib/ao;

    invoke-static {v2}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->m(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 1881
    return-void
.end method
