.class final Lccc71/pmw/lib/js;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/js;->a:Lccc71/pmw/lib/pmw_process;

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1556
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1558
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1560
    iget-object v1, p0, Lccc71/pmw/lib/js;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->h(Lccc71/pmw/lib/pmw_process;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1562
    iget-object v1, p0, Lccc71/pmw/lib/js;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1563
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1570
    :goto_0
    return-void

    .line 1567
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/js;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/g;->dB:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1568
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
