.class final Lccc71/pmw/lib/iv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/iu;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lccc71/pmw/lib/iu;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/iv;->a:Lccc71/pmw/lib/iu;

    iput-boolean p2, p0, Lccc71/pmw/lib/iv;->b:Z

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lccc71/pmw/lib/iv;->a:Lccc71/pmw/lib/iu;

    invoke-static {v0}, Lccc71/pmw/lib/iu;->a(Lccc71/pmw/lib/iu;)Lccc71/pmw/lib/pmw_monitor;

    move-result-object v0

    iget-boolean v1, p0, Lccc71/pmw/lib/iv;->b:Z

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->c(Lccc71/pmw/lib/pmw_monitor;Z)V

    .line 130
    return-void
.end method
