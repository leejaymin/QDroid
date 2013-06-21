.class final Lccc71/bmw/pro/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/pro/bmw_settings;


# direct methods
.method constructor <init>(Lccc71/bmw/pro/bmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/pro/i;->a:Lccc71/bmw/pro/bmw_settings;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 325
    check-cast p2, Ljava/lang/String;

    .line 326
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New widget data 3: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lccc71/bmw/pro/i;->a:Lccc71/bmw/pro/bmw_settings;

    invoke-static {}, Lccc71/bmw/pro/bmw_settings;->c()I

    move-result v1

    invoke-static {v0, v1, p2}, Lccc71/bmw/pro/bmw_settings;->d(Landroid/content/Context;ILjava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    return v0
.end method
