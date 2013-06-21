.class final Lccc71/pmw/lib/bm;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bm;->a:Lccc71/pmw/lib/bl;

    .line 1340
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1345
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1347
    iget-object v0, p0, Lccc71/pmw/lib/bm;->a:Lccc71/pmw/lib/bl;

    invoke-static {v0}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/bm;->a:Lccc71/pmw/lib/bl;

    invoke-static {v1}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;)V

    .line 1348
    return-void
.end method
