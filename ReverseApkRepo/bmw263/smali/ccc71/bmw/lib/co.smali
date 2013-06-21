.class final Lccc71/bmw/lib/co;
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
    iput-object p1, p0, Lccc71/bmw/lib/co;->a:Lccc71/bmw/lib/bmw_settings;

    .line 2036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2041
    check-cast p2, Ljava/lang/String;

    .line 2044
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2045
    iget-object v1, p0, Lccc71/bmw/lib/co;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_settings;->ag(Landroid/content/Context;)I

    move-result v1

    .line 2046
    if-eq v0, v1, :cond_0

    .line 2048
    sget v2, Lccc71/bmw/lib/bmw_watcher;->k:F

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 2049
    sput v0, Lccc71/bmw/lib/bmw_watcher;->k:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lccc71/bmw/lib/bmw_watcher;->k:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2054
    :catch_0
    move-exception v0

    const-string v0, "battery_widget_monitor"

    const-string v1, "Failed to get new value multiplier"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
