.class final Lccc71/bmw/lib/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/cv;->a:Lccc71/bmw/lib/bmw_settings;

    .line 2289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 2294
    const-string v0, "http://www.3c71.com/android/?q=node/5#main-content-area"

    .line 2295
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2296
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2297
    iget-object v0, p0, Lccc71/bmw/lib/cv;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_settings;->startActivity(Landroid/content/Intent;)V

    .line 2299
    iget-object v0, p0, Lccc71/bmw/lib/cv;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_settings;->finish()V

    .line 2300
    const/4 v0, 0x1

    return v0
.end method
