.class final Lccc71/pmw/lib/mh;
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
    iput-object p1, p0, Lccc71/pmw/lib/mh;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/mh;->b:Landroid/os/Handler;

    iput-object p3, p0, Lccc71/pmw/lib/mh;->c:Landroid/preference/ListPreference;

    .line 2688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2693
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2694
    new-instance v1, Lccc71/pmw/a/c;

    invoke-direct {v1}, Lccc71/pmw/a/c;-><init>()V

    .line 2696
    if-nez v0, :cond_1

    .line 2698
    const-string v2, "process_monitor_widget"

    const-string v3, "New app boost flag OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    :cond_0
    iget-object v2, p0, Lccc71/pmw/lib/mh;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lccc71/pmw/a/c;->b(Landroid/os/Handler;)V

    .line 2714
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/mh;->c:Landroid/preference/ListPreference;

    iget-object v2, p0, Lccc71/pmw/lib/mh;->c:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2716
    const/4 v0, 0x1

    return v0

    .line 2703
    :cond_1
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New app boost flag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    iget-object v2, p0, Lccc71/pmw/lib/mh;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lccc71/pmw/a/c;->a(Landroid/os/Handler;)V

    .line 2705
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2707
    iget-object v2, p0, Lccc71/pmw/lib/mh;->a:Lccc71/pmw/lib/pmw_settings;

    iget-object v3, p0, Lccc71/pmw/lib/mh;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lccc71/pmw/a/c;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0
.end method
