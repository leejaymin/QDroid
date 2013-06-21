.class final Lccc71/bmw/lib/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_icon_package_list;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_icon_package_list;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bj;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    .line 181
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

    .line 186
    iget-object v0, p0, Lccc71/bmw/lib/bj;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_icon_package_list;->a(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/bmw/lib/bj;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_icon_package_list;->a(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 188
    iget-object v0, p0, Lccc71/bmw/lib/bj;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_icon_package_list;->a(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/bj;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v0, p1}, Lccc71/bmw/lib/bmw_icon_package_list;->a(Lccc71/bmw/lib/bmw_icon_package_list;Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lccc71/bmw/lib/bj;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_icon_package_list;->a(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/view/View;

    move-result-object v0

    const v1, 0x40ffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 192
    return v2
.end method
