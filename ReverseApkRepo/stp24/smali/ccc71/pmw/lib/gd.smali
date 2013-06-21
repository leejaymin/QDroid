.class final Lccc71/pmw/lib/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_icon_package_list;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_icon_package_list;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gd;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lccc71/pmw/lib/gd;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->d(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Lccc71/pmw/lib/gd;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->b(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lccc71/pmw/lib/gd;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v2, p0, Lccc71/pmw/lib/gd;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Ljava/lang/String;)V

    .line 257
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removed package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/gd;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lccc71/pmw/lib/gd;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v1, p0, Lccc71/pmw/lib/gd;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    return-void
.end method
