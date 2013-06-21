.class final Lccc71/pmw/a/ao;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/a/ah;


# direct methods
.method constructor <init>(Lccc71/pmw/a/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/a/ao;->a:Lccc71/pmw/a/ah;

    .line 2736
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2741
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2743
    iget-object v0, p0, Lccc71/pmw/a/ao;->a:Lccc71/pmw/a/ah;

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->B()V

    .line 2744
    return-void
.end method
