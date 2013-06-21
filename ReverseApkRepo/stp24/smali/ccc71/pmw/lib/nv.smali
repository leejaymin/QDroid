.class final Lccc71/pmw/lib/nv;
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
    iput-object p1, p0, Lccc71/pmw/lib/nv;->a:Lccc71/pmw/lib/pmw_settings;

    .line 3749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 3754
    iget-object v0, p0, Lccc71/pmw/lib/nv;->a:Lccc71/pmw/lib/pmw_settings;

    iget-object v1, p0, Lccc71/pmw/lib/nv;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_settings;->aM(Landroid/content/Context;)V

    .line 3756
    iget-object v0, p0, Lccc71/pmw/lib/nv;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_settings;->finish()V

    .line 3757
    const/4 v0, 0x1

    return v0
.end method
