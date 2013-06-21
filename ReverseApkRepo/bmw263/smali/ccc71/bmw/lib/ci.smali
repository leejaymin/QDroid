.class final Lccc71/bmw/lib/ci;
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
    iput-object p1, p0, Lccc71/bmw/lib/ci;->a:Lccc71/bmw/lib/bmw_settings;

    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1720
    iget-object v1, p0, Lccc71/bmw/lib/ci;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v1}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1724
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1725
    iget-object v2, p0, Lccc71/bmw/lib/ci;->a:Lccc71/bmw/lib/bmw_settings;

    const-string v3, "ccc71.bmw.bmw_export_ads"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1726
    iget-object v2, p0, Lccc71/bmw/lib/ci;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {v2, v1}, Lccc71/bmw/lib/bmw_settings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1753
    :goto_0
    return v0

    .line 1735
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .line 1736
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1738
    iget-object v1, p0, Lccc71/bmw/lib/ci;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1739
    if-eqz v1, :cond_2

    .line 1741
    iget-object v2, p0, Lccc71/bmw/lib/ci;->a:Lccc71/bmw/lib/bmw_settings;

    sget v3, Lccc71/bmw/lib/g;->c:I

    invoke-virtual {v2, v3}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1742
    iget-object v3, p0, Lccc71/bmw/lib/ci;->a:Lccc71/bmw/lib/bmw_settings;

    sget v4, Lccc71/bmw/lib/g;->b:I

    invoke-virtual {v3, v4}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1743
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1745
    :cond_1
    iget-object v1, p0, Lccc71/bmw/lib/ci;->a:Lccc71/bmw/lib/bmw_settings;

    iget-object v2, p0, Lccc71/bmw/lib/ci;->a:Lccc71/bmw/lib/bmw_settings;

    sget v3, Lccc71/bmw/lib/g;->bd:I

    invoke-virtual {v2, v3}, Lccc71/bmw/lib/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1746
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1753
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
