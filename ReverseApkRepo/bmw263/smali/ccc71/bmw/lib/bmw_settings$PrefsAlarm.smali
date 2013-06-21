.class public Lccc71/bmw/lib/bmw_settings$PrefsAlarm;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2520
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 2525
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2528
    const-string v0, "args"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Arguments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings$PrefsAlarm;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    sget v0, Lccc71/bmw/lib/h;->b:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings$PrefsAlarm;->addPreferencesFromResource(I)V

    .line 2533
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    if-eqz v0, :cond_0

    .line 2534
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings$PrefsAlarm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->e(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V

    .line 2535
    :cond_0
    return-void
.end method
