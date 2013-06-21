.class final Lccc71/pmw/lib/md;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/md;->a:Lccc71/pmw/lib/pmw_settings;

    .line 2623
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 2628
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 2630
    iget-object v0, p0, Lccc71/pmw/lib/md;->a:Lccc71/pmw/lib/pmw_settings;

    iget-object v1, p0, Lccc71/pmw/lib/md;->a:Lccc71/pmw/lib/pmw_settings;

    sget v2, Lccc71/pmw/lib/g;->dK:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2631
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2634
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2635
    return-void
.end method
