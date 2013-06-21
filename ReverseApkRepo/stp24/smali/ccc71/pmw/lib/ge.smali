.class final Lccc71/pmw/lib/ge;
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
    iput-object p1, p0, Lccc71/pmw/lib/ge;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/ge;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_icon_package_list;->b(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    const/4 v1, 0x0

    .line 273
    :try_start_1
    iget-object v2, p0, Lccc71/pmw/lib/ge;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_icon_package_list;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 274
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "ccc71.pmw.icons.pmw_preferences"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 280
    :goto_0
    if-eqz v0, :cond_0

    .line 282
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 283
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    iget-object v0, p0, Lccc71/pmw/lib/ge;->a:Lccc71/pmw/lib/pmw_icon_package_list;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_icon_package_list;->startActivity(Landroid/content/Intent;)V

    .line 296
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 289
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v1, "Cannot launch configuration for icon package"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 292
    :catch_1
    move-exception v0

    .line 294
    const-string v1, "process_monitor_widget"

    const-string v2, "Failed to launch configuration for icon package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
