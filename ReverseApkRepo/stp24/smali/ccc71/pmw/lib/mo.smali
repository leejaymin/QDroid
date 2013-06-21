.class final Lccc71/pmw/lib/mo;
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
    iput-object p1, p0, Lccc71/pmw/lib/mo;->a:Lccc71/pmw/lib/pmw_settings;

    .line 3021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 3026
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3027
    iget-object v1, p0, Lccc71/pmw/lib/mo;->a:Lccc71/pmw/lib/pmw_settings;

    const-string v2, "ccc71.pmw.pmw_import_ads"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 3028
    iget-object v1, p0, Lccc71/pmw/lib/mo;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_settings;->startActivity(Landroid/content/Intent;)V

    .line 3029
    const/4 v0, 0x1

    return v0
.end method
