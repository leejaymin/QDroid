.class final Lccc71/pmw/lib/dg;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lccc71/pmw/a/y;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;Ljava/lang/String;Lccc71/pmw/a/y;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dg;->a:Lccc71/pmw/lib/pmw_backuplist;

    iput-object p2, p0, Lccc71/pmw/lib/dg;->b:Ljava/lang/String;

    iput-object p3, p0, Lccc71/pmw/lib/dg;->c:Lccc71/pmw/a/y;

    iput-object p4, p0, Lccc71/pmw/lib/dg;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lccc71/pmw/lib/dg;->e:Z

    .line 1072
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 1077
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1079
    iget-object v0, p0, Lccc71/pmw/lib/dg;->a:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v1, p0, Lccc71/pmw/lib/dg;->b:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/dg;->c:Lccc71/pmw/a/y;

    sget-object v3, Lccc71/pmw/a/y;->e:Lccc71/pmw/a/y;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lccc71/pmw/lib/dg;->c:Lccc71/pmw/a/y;

    iget-boolean v4, p0, Lccc71/pmw/lib/dg;->e:Z

    iget-object v5, p0, Lccc71/pmw/lib/dg;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_backuplist;->z(Lccc71/pmw/lib/pmw_backuplist;)Landroid/os/Handler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lccc71/pmw/a/y;ZLandroid/os/Handler;)V

    .line 1080
    return-void

    .line 1079
    :cond_0
    iget-object v2, p0, Lccc71/pmw/lib/dg;->d:Ljava/lang/String;

    goto :goto_0
.end method
