.class final Lccc71/bmw/lib/cf;
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
    iput-object p1, p0, Lccc71/bmw/lib/cf;->a:Lccc71/bmw/lib/bmw_settings;

    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 1643
    iget-object v0, p0, Lccc71/bmw/lib/cf;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->a(Lccc71/bmw/lib/bmw_settings;)V

    .line 1645
    iget-object v0, p0, Lccc71/bmw/lib/cf;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_settings;->finish()V

    .line 1646
    const/4 v0, 0x1

    return v0
.end method
