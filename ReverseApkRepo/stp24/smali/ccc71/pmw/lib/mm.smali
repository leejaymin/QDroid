.class final Lccc71/pmw/lib/mm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Z

.field private final synthetic c:Lccc71/pmw/a/ah;

.field private final synthetic d:Z

.field private final synthetic e:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;ZLccc71/pmw/a/ah;ZLandroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/mm;->a:Lccc71/pmw/lib/pmw_settings;

    iput-boolean p2, p0, Lccc71/pmw/lib/mm;->b:Z

    iput-object p3, p0, Lccc71/pmw/lib/mm;->c:Lccc71/pmw/a/ah;

    iput-boolean p4, p0, Lccc71/pmw/lib/mm;->d:Z

    iput-object p5, p0, Lccc71/pmw/lib/mm;->e:Landroid/preference/ListPreference;

    .line 2951
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

    .line 2956
    check-cast p2, Ljava/lang/String;

    .line 2958
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2960
    iget-boolean v0, p0, Lccc71/pmw/lib/mm;->b:Z

    if-eqz v0, :cond_1

    .line 2962
    iget-object v0, p0, Lccc71/pmw/lib/mm;->c:Lccc71/pmw/a/ah;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lccc71/pmw/a/ah;->a(I)V

    .line 2980
    :cond_0
    :goto_0
    return v4

    .line 2966
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/mm;->c:Lccc71/pmw/a/ah;

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->h()I

    move-result v0

    .line 2967
    iget-object v1, p0, Lccc71/pmw/lib/mm;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;I)V

    .line 2969
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stored CPU max: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    iget-boolean v0, p0, Lccc71/pmw/lib/mm;->d:Z

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lccc71/pmw/lib/mm;->e:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 2978
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/mm;->e:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method
