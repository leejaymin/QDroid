.class final Lccc71/pmw/lib/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Lccc71/pmw/a/ah;

.field private final synthetic c:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Lccc71/pmw/a/ah;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/mb;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/mb;->b:Lccc71/pmw/a/ah;

    iput-object p3, p0, Lccc71/pmw/lib/mb;->c:Landroid/preference/ListPreference;

    .line 2569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2574
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2576
    if-ne v0, v3, :cond_0

    .line 2578
    const-string v1, "process_monitor_widget"

    const-string v2, "ALL CPU boot flag ON (no script)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v1, p0, Lccc71/pmw/lib/mb;->b:Lccc71/pmw/a/ah;

    iget-object v2, p0, Lccc71/pmw/lib/mb;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1, v2}, Lccc71/pmw/a/ah;->g(Landroid/content/Context;)V

    .line 2580
    iget-object v1, p0, Lccc71/pmw/lib/mb;->b:Lccc71/pmw/a/ah;

    invoke-virtual {v1, v3}, Lccc71/pmw/a/ah;->b(Z)V

    .line 2594
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/mb;->c:Landroid/preference/ListPreference;

    iget-object v2, p0, Lccc71/pmw/lib/mb;->c:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2596
    return v3

    .line 2582
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2584
    const-string v1, "process_monitor_widget"

    const-string v2, "ALL CPU boot flag ON (script)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    iget-object v1, p0, Lccc71/pmw/lib/mb;->b:Lccc71/pmw/a/ah;

    invoke-virtual {v1, v3}, Lccc71/pmw/a/ah;->b(Z)V

    .line 2586
    iget-object v1, p0, Lccc71/pmw/lib/mb;->b:Lccc71/pmw/a/ah;

    iget-object v2, p0, Lccc71/pmw/lib/mb;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1, v2}, Lccc71/pmw/a/ah;->i(Landroid/content/Context;)V

    goto :goto_0

    .line 2590
    :cond_1
    const-string v1, "process_monitor_widget"

    const-string v2, "ALL CPU boot flag OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    iget-object v1, p0, Lccc71/pmw/lib/mb;->b:Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->x()V

    .line 2592
    iget-object v1, p0, Lccc71/pmw/lib/mb;->b:Lccc71/pmw/a/ah;

    iget-object v2, p0, Lccc71/pmw/lib/mb;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1, v2}, Lccc71/pmw/a/ah;->g(Landroid/content/Context;)V

    goto :goto_0
.end method
