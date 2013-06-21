.class final Lccc71/bmw/lib/bd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bc;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bd;->a:Lccc71/bmw/lib/bc;

    .line 381
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 385
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lccc71/bmw/lib/bd;->a:Lccc71/bmw/lib/bc;

    invoke-static {v0}, Lccc71/bmw/lib/bc;->a(Lccc71/bmw/lib/bc;)Lccc71/bmw/lib/bmw_history;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bd;->a:Lccc71/bmw/lib/bc;

    invoke-static {v1}, Lccc71/bmw/lib/bc;->a(Lccc71/bmw/lib/bc;)Lccc71/bmw/lib/bmw_history;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/g;->cJ:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_history;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 395
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/bd;->a:Lccc71/bmw/lib/bc;

    invoke-static {v0}, Lccc71/bmw/lib/bc;->a(Lccc71/bmw/lib/bc;)Lccc71/bmw/lib/bmw_history;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bd;->a:Lccc71/bmw/lib/bc;

    invoke-static {v1}, Lccc71/bmw/lib/bc;->a(Lccc71/bmw/lib/bc;)Lccc71/bmw/lib/bmw_history;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/g;->cG:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_history;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
