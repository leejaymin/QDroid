.class final Lccc71/pmw/lib/fe;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_easy_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fe;->a:Lccc71/pmw/lib/pmw_easy_apps;

    .line 636
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 641
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lccc71/pmw/lib/fe;->a:Lccc71/pmw/lib/pmw_easy_apps;

    iget-object v1, p0, Lccc71/pmw/lib/fe;->a:Lccc71/pmw/lib/pmw_easy_apps;

    sget v2, Lccc71/pmw/lib/g;->dK:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_easy_apps;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 651
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/fe;->a:Lccc71/pmw/lib/pmw_easy_apps;

    iget-object v1, p0, Lccc71/pmw/lib/fe;->a:Lccc71/pmw/lib/pmw_easy_apps;

    sget v2, Lccc71/pmw/lib/g;->dt:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_easy_apps;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
