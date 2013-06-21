.class final Lccc71/pmw/lib/ly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Landroid/preference/ListPreference;

.field private final synthetic c:Lccc71/pmw/a/ah;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/ListPreference;Lccc71/pmw/a/ah;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ly;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    iput-object p3, p0, Lccc71/pmw/lib/ly;->c:Lccc71/pmw/a/ah;

    .line 2425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2430
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2432
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New disable OC flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    if-eqz v0, :cond_1

    .line 2436
    iget-object v0, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    sget v1, Lccc71/pmw/lib/g;->ce:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2437
    iget-object v0, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2439
    iget-object v0, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    iget-object v1, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2440
    iget-object v0, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2442
    iget-object v0, p0, Lccc71/pmw/lib/ly;->c:Lccc71/pmw/a/ah;

    iget-object v1, p0, Lccc71/pmw/lib/ly;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ah;->h(Landroid/content/Context;)V

    .line 2445
    :cond_0
    new-instance v0, Lccc71/pmw/lib/lz;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/lz;-><init>(Lccc71/pmw/lib/ly;)V

    .line 2459
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 2460
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2491
    :goto_0
    return v4

    .line 2464
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    sget v1, Lccc71/pmw/lib/g;->fr:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2465
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2467
    iget-object v0, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2468
    iget-object v0, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2471
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/ly;->b:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2472
    iget-object v0, p0, Lccc71/pmw/lib/ly;->c:Lccc71/pmw/a/ah;

    iget-object v1, p0, Lccc71/pmw/lib/ly;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ah;->f(Landroid/content/Context;)V

    .line 2474
    :cond_3
    new-instance v0, Lccc71/pmw/lib/ma;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ma;-><init>(Lccc71/pmw/lib/ly;)V

    .line 2488
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 2489
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
