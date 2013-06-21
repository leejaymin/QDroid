.class final Lccc71/pmw/lib/ml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Lccc71/pmw/a/ah;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Lccc71/pmw/a/ah;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ml;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/ml;->b:Lccc71/pmw/a/ah;

    iput-boolean p3, p0, Lccc71/pmw/lib/ml;->c:Z

    .line 2897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2902
    check-cast p2, Ljava/lang/String;

    .line 2904
    iget-object v0, p0, Lccc71/pmw/lib/ml;->b:Lccc71/pmw/a/ah;

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->g()Ljava/lang/String;

    move-result-object v0

    .line 2905
    iget-object v1, p0, Lccc71/pmw/lib/ml;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2906
    if-eqz p2, :cond_1

    .line 2908
    iget-boolean v0, p0, Lccc71/pmw/lib/ml;->c:Z

    if-eqz v0, :cond_0

    .line 2910
    iget-object v0, p0, Lccc71/pmw/lib/ml;->b:Lccc71/pmw/a/ah;

    invoke-static {p2}, Lccc71/pmw/a/ah;->b(Ljava/lang/String;)V

    .line 2920
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2915
    :cond_1
    iget-boolean v1, p0, Lccc71/pmw/lib/ml;->c:Z

    if-eqz v1, :cond_0

    .line 2917
    iget-object v1, p0, Lccc71/pmw/lib/ml;->b:Lccc71/pmw/a/ah;

    invoke-static {v0}, Lccc71/pmw/a/ah;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
