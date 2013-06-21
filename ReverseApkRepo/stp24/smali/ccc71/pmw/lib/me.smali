.class final Lccc71/pmw/lib/me;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Lccc71/pmw/a/at;

.field private final synthetic c:Landroid/os/Handler;

.field private final synthetic d:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Lccc71/pmw/a/at;Landroid/os/Handler;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/me;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/me;->b:Lccc71/pmw/a/at;

    iput-object p3, p0, Lccc71/pmw/lib/me;->c:Landroid/os/Handler;

    iput-object p4, p0, Lccc71/pmw/lib/me;->d:Landroid/preference/ListPreference;

    .line 2638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2643
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2645
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2647
    const-string v1, "process_monitor_widget"

    const-string v2, "New SysCtl boot flag ON (script)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    iget-object v1, p0, Lccc71/pmw/lib/me;->b:Lccc71/pmw/a/at;

    iget-object v2, p0, Lccc71/pmw/lib/me;->a:Lccc71/pmw/lib/pmw_settings;

    iget-object v3, p0, Lccc71/pmw/lib/me;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lccc71/pmw/a/at;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2655
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/me;->d:Landroid/preference/ListPreference;

    iget-object v2, p0, Lccc71/pmw/lib/me;->d:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2657
    const/4 v0, 0x1

    return v0

    .line 2652
    :cond_0
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New SysCtl boot flag (no script): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    iget-object v1, p0, Lccc71/pmw/lib/me;->b:Lccc71/pmw/a/at;

    iget-object v2, p0, Lccc71/pmw/lib/me;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lccc71/pmw/a/at;->b(Landroid/os/Handler;)V

    goto :goto_0
.end method
