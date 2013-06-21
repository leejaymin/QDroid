.class final Lccc71/pmw/lib/nq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/nq;->a:Lccc71/pmw/lib/pmw_settings;

    .line 3530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    .line 3535
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3536
    iget-object v1, p0, Lccc71/pmw/lib/nq;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_settings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/nq;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_settings;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_icon_package_list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3537
    iget-object v1, p0, Lccc71/pmw/lib/nq;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_settings;->startActivity(Landroid/content/Intent;)V

    .line 3538
    const/4 v0, 0x1

    return v0
.end method
