.class final Lccc71/pmw/lib/oh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/oh;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 568
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/TextView;

    .line 569
    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Lccc71/pmw/lib/pb;

    .line 571
    if-eqz p2, :cond_0

    .line 573
    sget v2, Lccc71/pmw/lib/g;->dI:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 574
    iget-object v1, p0, Lccc71/pmw/lib/oh;->a:Lccc71/pmw/lib/pmw_sysctl;

    const-string v2, "1"

    invoke-static {v1, p1, v0, v2}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;Lccc71/pmw/lib/pb;Ljava/lang/String;)V

    .line 581
    :goto_0
    return-void

    .line 578
    :cond_0
    sget v2, Lccc71/pmw/lib/g;->dE:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 579
    iget-object v1, p0, Lccc71/pmw/lib/oh;->a:Lccc71/pmw/lib/pmw_sysctl;

    const-string v2, "0"

    invoke-static {v1, p1, v0, v2}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;Lccc71/pmw/lib/pb;Ljava/lang/String;)V

    goto :goto_0
.end method
