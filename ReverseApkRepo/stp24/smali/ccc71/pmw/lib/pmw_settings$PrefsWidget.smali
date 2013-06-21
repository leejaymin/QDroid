.class public Lccc71/pmw/lib/pmw_settings$PrefsWidget;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3986
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 3991
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3993
    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->a()Lccc71/pmw/lib/pmw_settings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3995
    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->a()Lccc71/pmw/lib/pmw_settings;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->a()Lccc71/pmw/lib/pmw_settings;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Lccc71/pmw/lib/pmw_settings;Landroid/content/SharedPreferences;)V

    .line 3997
    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->a()Lccc71/pmw/lib/pmw_settings;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 3998
    if-eqz v0, :cond_0

    .line 4000
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v2, Lccc71/pmw/lib/e;->by:I

    if-ne v1, v2, :cond_2

    .line 4002
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preparing prefs for standard widgetID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    sget v1, Lccc71/pmw/lib/i;->q:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_settings$PrefsWidget;->addPreferencesFromResource(I)V

    .line 4017
    :cond_0
    :goto_0
    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->a()Lccc71/pmw/lib/pmw_settings;

    move-result-object v1

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings$PrefsWidget;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccc71/pmw/lib/pmw_settings;->a(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 4019
    :cond_1
    return-void

    .line 4005
    :cond_2
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v2, Lccc71/pmw/lib/e;->bz:I

    if-ne v1, v2, :cond_3

    .line 4007
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preparing prefs for wide widgetID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    sget v1, Lccc71/pmw/lib/i;->r:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_settings$PrefsWidget;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 4010
    :cond_3
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    sget v2, Lccc71/pmw/lib/e;->bC:I

    if-ne v1, v2, :cond_0

    .line 4012
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preparing prefs for graph widgetID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    sget v1, Lccc71/pmw/lib/i;->s:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_settings$PrefsWidget;->addPreferencesFromResource(I)V

    goto :goto_0
.end method
