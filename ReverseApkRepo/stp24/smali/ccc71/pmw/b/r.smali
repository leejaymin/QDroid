.class final Lccc71/pmw/b/r;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/b/q;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccc71/pmw/b/q;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/b/r;->a:Lccc71/pmw/b/q;

    iput-object p2, p0, Lccc71/pmw/b/r;->b:Ljava/lang/String;

    .line 479
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 484
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 486
    new-instance v0, Lccc71/pmw/b/h;

    iget-object v1, p0, Lccc71/pmw/b/r;->b:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 487
    return-void
.end method
