.class final Lccc71/pmw/lib/pk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_tweaks;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_tweaks;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pk;->a:Lccc71/pmw/lib/pmw_tweaks;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lccc71/pmw/lib/pk;->a:Lccc71/pmw/lib/pmw_tweaks;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_tweaks;->a(Lccc71/pmw/lib/pmw_tweaks;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Landroid/widget/TabWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 200
    const-class v2, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 204
    iget-object v2, p0, Lccc71/pmw/lib/pk;->a:Lccc71/pmw/lib/pmw_tweaks;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_tweaks;->a(Lccc71/pmw/lib/pmw_tweaks;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 209
    :cond_0
    return-void
.end method
