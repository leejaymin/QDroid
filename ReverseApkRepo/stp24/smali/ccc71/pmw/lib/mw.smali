.class final Lccc71/pmw/lib/mw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Lccc71/utils/r;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/mw;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/mw;->b:Lccc71/utils/r;

    .line 3237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    .line 3242
    const-string v0, "process_monitor_widget"

    const-string v1, "Open system dialog now!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    new-instance v0, Lccc71/utils/n;

    iget-object v1, p0, Lccc71/pmw/lib/mw;->a:Lccc71/pmw/lib/pmw_settings;

    iget-object v2, p0, Lccc71/pmw/lib/mw;->b:Lccc71/utils/r;

    iget-object v3, p0, Lccc71/pmw/lib/mw;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lccc71/utils/n;-><init>(Landroid/content/Context;Lccc71/utils/r;I)V

    .line 3244
    invoke-virtual {v0}, Lccc71/utils/n;->show()V

    .line 3245
    const/4 v0, 0x1

    return v0
.end method
