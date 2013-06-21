.class final Lccc71/bmw/lib/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_icon_package_list;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_icon_package_list;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bl;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lccc71/bmw/lib/bl;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_icon_package_list;->h(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lccc71/bmw/lib/bl;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_icon_package_list;->b(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lccc71/bmw/lib/bl;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    iget-object v2, p0, Lccc71/bmw/lib/bl;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_icon_package_list;->c(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccc71/bmw/lib/bmw_icon_package_list;->a(Lccc71/bmw/lib/bmw_icon_package_list;Ljava/lang/String;)V

    .line 245
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removed package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lccc71/bmw/lib/bl;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_icon_package_list;->c(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lccc71/bmw/lib/bl;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    iget-object v1, p0, Lccc71/bmw/lib/bl;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_icon_package_list;->c(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    return-void
.end method
