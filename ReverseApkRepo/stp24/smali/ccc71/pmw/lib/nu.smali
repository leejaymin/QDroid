.class final Lccc71/pmw/lib/nu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/nu;->a:Lccc71/pmw/lib/pmw_settings;

    .line 3729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 3734
    const-string v0, "process_monitor_widget"

    const-string v1, "Open help page now!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    const-string v0, "http://www.3c71.com/android/?q=node/21#main-content-area"

    .line 3737
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3738
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3739
    iget-object v0, p0, Lccc71/pmw/lib/nu;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_settings;->startActivity(Landroid/content/Intent;)V

    .line 3741
    iget-object v0, p0, Lccc71/pmw/lib/nu;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_settings;->finish()V

    .line 3742
    const/4 v0, 0x1

    return v0
.end method
