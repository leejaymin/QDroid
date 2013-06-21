.class final Lccc71/bmw/lib/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/cn;->a:Lccc71/bmw/lib/bmw_settings;

    .line 1982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1987
    iget-object v0, p0, Lccc71/bmw/lib/cn;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1991
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1992
    iget-object v1, p0, Lccc71/bmw/lib/cn;->a:Lccc71/bmw/lib/bmw_settings;

    const-string v2, "ccc71.bmw.bmw_export_ads"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1993
    iget-object v1, p0, Lccc71/bmw/lib/cn;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {v1, v0}, Lccc71/bmw/lib/bmw_settings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    :goto_0
    const/4 v0, 0x0

    .line 2002
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
