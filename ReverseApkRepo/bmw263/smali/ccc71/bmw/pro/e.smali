.class final Lccc71/bmw/pro/e;
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
    iput-object p1, p0, Lccc71/bmw/pro/e;->a:Lccc71/bmw/pro/bmw_settings;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 261
    check-cast p2, Ljava/lang/String;

    .line 262
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 264
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New widget scale: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lccc71/bmw/pro/e;->a:Lccc71/bmw/pro/bmw_settings;

    invoke-static {}, Lccc71/bmw/pro/bmw_settings;->c()I

    move-result v2

    invoke-static {v1, v2, v0}, Lccc71/bmw/pro/bmw_settings;->m(Landroid/content/Context;II)V

    .line 266
    const/4 v0, 0x1

    return v0
.end method