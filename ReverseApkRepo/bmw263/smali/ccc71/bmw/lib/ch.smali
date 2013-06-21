.class final Lccc71/bmw/lib/ch;
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
    iput-object p1, p0, Lccc71/bmw/lib/ch;->a:Lccc71/bmw/lib/bmw_settings;

    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1694
    check-cast p2, Ljava/lang/String;

    .line 1697
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1699
    iget-object v1, p0, Lccc71/bmw/lib/ch;->a:Lccc71/bmw/lib/bmw_settings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/content/Context;I)V

    .line 1700
    iget-object v1, p0, Lccc71/bmw/lib/ch;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v1, v0}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/content/Context;I)V

    .line 1701
    const/4 v0, 0x0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1705
    :catch_0
    move-exception v0

    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to update capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
