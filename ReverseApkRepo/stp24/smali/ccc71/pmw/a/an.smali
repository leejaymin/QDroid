.class final Lccc71/pmw/a/an;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/a/ah;

.field private final synthetic b:Ljava/lang/StringBuilder;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccc71/pmw/a/ah;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/a/an;->a:Lccc71/pmw/a/ah;

    iput-object p2, p0, Lccc71/pmw/a/an;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lccc71/pmw/a/an;->c:Ljava/lang/String;

    .line 2684
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2689
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2691
    iget-object v0, p0, Lccc71/pmw/a/an;->a:Lccc71/pmw/a/ah;

    iget-object v1, p0, Lccc71/pmw/a/an;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/a/an;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lccc71/pmw/a/ah;->b(Lccc71/pmw/a/ah;Ljava/lang/String;)V

    .line 2692
    return-void
.end method
