.class final Lccc71/pmw/lib/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_startup_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_startup_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/oc;->a:Lccc71/pmw/lib/pmw_startup_apps;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 324
    iget-object v1, p0, Lccc71/pmw/lib/oc;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_startup_apps;->a(Lccc71/pmw/lib/pmw_startup_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/of;

    .line 326
    if-eqz p2, :cond_0

    .line 328
    iget-object v1, p0, Lccc71/pmw/lib/oc;->a:Lccc71/pmw/lib/pmw_startup_apps;

    iget-object v2, v0, Lccc71/pmw/lib/of;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Lccc71/pmw/lib/of;->c:Ljava/lang/String;

    iget-object v3, p0, Lccc71/pmw/lib/oc;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_startup_apps;->b(Lccc71/pmw/lib/pmw_startup_apps;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/os/Handler;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/oc;->a:Lccc71/pmw/lib/pmw_startup_apps;

    iget-object v2, v0, Lccc71/pmw/lib/of;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Lccc71/pmw/lib/of;->c:Ljava/lang/String;

    iget-object v3, p0, Lccc71/pmw/lib/oc;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_startup_apps;->b(Lccc71/pmw/lib/pmw_startup_apps;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method
