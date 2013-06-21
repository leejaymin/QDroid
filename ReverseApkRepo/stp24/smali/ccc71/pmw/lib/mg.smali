.class final Lccc71/pmw/lib/mg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Landroid/os/Handler;

.field private final synthetic c:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Landroid/os/Handler;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/mg;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/mg;->b:Landroid/os/Handler;

    iput-object p3, p0, Lccc71/pmw/lib/mg;->c:Landroid/preference/ListPreference;

    .line 2661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2666
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2668
    new-instance v1, Lccc71/pmw/a/as;

    invoke-direct {v1}, Lccc71/pmw/a/as;-><init>()V

    .line 2669
    new-instance v2, Lccc71/pmw/a/aq;

    invoke-direct {v2}, Lccc71/pmw/a/aq;-><init>()V

    .line 2670
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2672
    const-string v3, "process_monitor_widget"

    const-string v4, "New SD boot flag ON (script)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iget-object v3, p0, Lccc71/pmw/lib/mg;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1}, Lccc71/pmw/a/as;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lccc71/pmw/lib/mg;->b:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5}, Lccc71/pmw/a/as;->a(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 2674
    iget-object v1, p0, Lccc71/pmw/lib/mg;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v2}, Lccc71/pmw/a/aq;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccc71/pmw/lib/mg;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Lccc71/pmw/a/aq;->a(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 2682
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/mg;->c:Landroid/preference/ListPreference;

    iget-object v2, p0, Lccc71/pmw/lib/mg;->c:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2684
    const/4 v0, 0x1

    return v0

    .line 2678
    :cond_0
    const-string v3, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "New SD boot flag (no script): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    iget-object v3, p0, Lccc71/pmw/lib/mg;->b:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Lccc71/pmw/a/as;->a(Landroid/os/Handler;)V

    .line 2680
    iget-object v1, p0, Lccc71/pmw/lib/mg;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Lccc71/pmw/a/aq;->a(Landroid/os/Handler;)V

    goto :goto_0
.end method
