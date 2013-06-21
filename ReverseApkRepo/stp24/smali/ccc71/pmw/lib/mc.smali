.class final Lccc71/pmw/lib/mc;
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
    iput-object p1, p0, Lccc71/pmw/lib/mc;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/mc;->b:Lccc71/pmw/a/ah;

    iput-object p3, p0, Lccc71/pmw/lib/mc;->c:Landroid/preference/ListPreference;

    .line 2600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2605
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2607
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2609
    const-string v1, "process_monitor_widget"

    const-string v2, "New CPU boot flag ON (script)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    iget-object v1, p0, Lccc71/pmw/lib/mc;->b:Lccc71/pmw/a/ah;

    iget-object v2, p0, Lccc71/pmw/lib/mc;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1, v2}, Lccc71/pmw/a/ah;->h(Landroid/content/Context;)V

    .line 2617
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/mc;->c:Landroid/preference/ListPreference;

    iget-object v2, p0, Lccc71/pmw/lib/mc;->c:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2619
    const/4 v0, 0x1

    return v0

    .line 2614
    :cond_0
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New CPU boot flag (no script): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    iget-object v1, p0, Lccc71/pmw/lib/mc;->b:Lccc71/pmw/a/ah;

    iget-object v2, p0, Lccc71/pmw/lib/mc;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v1, v2}, Lccc71/pmw/a/ah;->f(Landroid/content/Context;)V

    goto :goto_0
.end method
