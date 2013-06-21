.class final Lccc71/bmw/lib/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/cd;->a:Lccc71/bmw/lib/bmw_settings;

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 1583
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lccc71/bmw/lib/cd;->a:Lccc71/bmw/lib/bmw_settings;

    const-class v2, Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1584
    iget-object v1, p0, Lccc71/bmw/lib/cd;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {v1, v0}, Lccc71/bmw/lib/bmw_settings;->startActivity(Landroid/content/Intent;)V

    .line 1585
    const/4 v0, 0x0

    return v0
.end method
