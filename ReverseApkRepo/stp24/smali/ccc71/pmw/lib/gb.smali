.class final Lccc71/pmw/lib/gb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_icon_package_list;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_icon_package_list;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gb;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lccc71/pmw/lib/gb;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/gb;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 213
    iget-object v0, p0, Lccc71/pmw/lib/gb;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 215
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/gb;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0, p1}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lccc71/pmw/lib/gb;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/view/View;

    move-result-object v0

    const v1, 0x40ffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 217
    return v2
.end method
