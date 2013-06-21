.class final Lccc71/pmw/lib/gc;
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
    iput-object p1, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 229
    iget-object v0, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->b(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v2, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_icon_package_list;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 234
    iget-object v3, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    const/4 v4, 0x1

    invoke-static {v3, v2, v1, v4}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/content/pm/PackageManager;IZ)Landroid/view/View;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_icon_package_list;->d(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v2, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Lccc71/pmw/lib/pmw_icon_package_list;Ljava/lang/String;)V

    .line 241
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    iget-object v1, p0, Lccc71/pmw/lib/gc;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_icon_package_list;->c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
