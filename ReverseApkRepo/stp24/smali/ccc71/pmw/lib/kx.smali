.class final Lccc71/pmw/lib/kx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sd;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kx;->a:Lccc71/pmw/lib/pmw_sd;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 404
    const v0, 0x404040ff

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 406
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 408
    iget-object v0, p0, Lccc71/pmw/lib/kx;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 410
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccc71/pmw/lib/kx;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lccc71/pmw/lib/kx;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;Ljava/lang/String;)V

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    iget-object v1, p0, Lccc71/pmw/lib/kx;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccc71/pmw/lib/kx;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/u;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lccc71/pmw/lib/kx;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/u;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 422
    iget-object v1, p0, Lccc71/pmw/lib/kx;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sd;->b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/u;->d:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 424
    iget-object v1, p0, Lccc71/pmw/lib/kx;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_sd;->a(Lccc71/pmw/lib/pmw_sd;Ljava/lang/String;)V

    goto :goto_0
.end method
