.class final Lccc71/pmw/a/am;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/a/ah;

.field private final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lccc71/pmw/a/ah;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/a/am;->a:Lccc71/pmw/a/ah;

    iput-object p2, p0, Lccc71/pmw/a/am;->b:Ljava/lang/StringBuilder;

    .line 2635
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2640
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2642
    iget-object v0, p0, Lccc71/pmw/a/am;->a:Lccc71/pmw/a/ah;

    iget-object v1, p0, Lccc71/pmw/a/am;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/a/ah;->a(Lccc71/pmw/a/ah;Ljava/lang/String;)V

    .line 2643
    return-void
.end method
