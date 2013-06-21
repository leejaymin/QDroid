.class final Lccc71/pmw/lib/fr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_event_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_event_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fr;->a:Lccc71/pmw/lib/pmw_event_apps;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/fw;

    .line 533
    iget v1, v0, Lccc71/pmw/lib/fw;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 535
    iget-object v1, p0, Lccc71/pmw/lib/fr;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->d(Lccc71/pmw/lib/pmw_event_apps;)[Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lccc71/pmw/lib/fw;->b:I

    aget-object v0, v1, v0

    .line 537
    iget-object v1, p0, Lccc71/pmw/lib/fr;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/fr;->a:Lccc71/pmw/lib/pmw_event_apps;

    sget v1, Lccc71/pmw/lib/g;->dB:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
