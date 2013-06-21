.class final Lccc71/pmw/lib/mk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/mk;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/mk;->b:Landroid/preference/ListPreference;

    .line 2800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2805
    check-cast p2, Ljava/lang/String;

    .line 2808
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2810
    iget-object v1, p0, Lccc71/pmw/lib/mk;->a:Lccc71/pmw/lib/pmw_settings;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lccc71/pmw/lib/pmw_settings;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2817
    :goto_0
    return v0

    .line 2815
    :catch_0
    move-exception v1

    iget-object v1, p0, Lccc71/pmw/lib/mk;->b:Landroid/preference/ListPreference;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2816
    iget-object v1, p0, Lccc71/pmw/lib/mk;->a:Lccc71/pmw/lib/pmw_settings;

    iput-boolean v0, v1, Lccc71/pmw/lib/pmw_settings;->b:Z

    .line 2817
    const/4 v0, 0x0

    goto :goto_0
.end method
