.class final Lccc71/pmw/a/ak;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/a/ah;


# direct methods
.method constructor <init>(Lccc71/pmw/a/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/a/ak;->a:Lccc71/pmw/a/ah;

    .line 1796
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 1801
    iget-object v0, p0, Lccc71/pmw/a/ak;->a:Lccc71/pmw/a/ah;

    invoke-static {v0}, Lccc71/pmw/a/ah;->a(Lccc71/pmw/a/ah;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1803
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lccc71/pmw/a/ah;->C()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    iget-object v0, p0, Lccc71/pmw/a/ak;->a:Lccc71/pmw/a/ah;

    invoke-static {v0}, Lccc71/pmw/a/ah;->a(Lccc71/pmw/a/ah;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/a/ak;->a:Lccc71/pmw/a/ah;

    invoke-static {v1}, Lccc71/pmw/a/ah;->a(Lccc71/pmw/a/ah;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->dK:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1807
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1811
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1812
    return-void
.end method
