.class final Lccc71/pmw/lib/ms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/mr;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/mr;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ms;->a:Lccc71/pmw/lib/mr;

    .line 3086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3091
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3092
    const-string v1, "market://search?q=ccc71.bmw.pro"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3093
    iget-object v1, p0, Lccc71/pmw/lib/ms;->a:Lccc71/pmw/lib/mr;

    invoke-static {v1}, Lccc71/pmw/lib/mr;->a(Lccc71/pmw/lib/mr;)Lccc71/pmw/lib/pmw_settings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_settings;->startActivity(Landroid/content/Intent;)V

    .line 3095
    iget-object v0, p0, Lccc71/pmw/lib/ms;->a:Lccc71/pmw/lib/mr;

    invoke-static {v0}, Lccc71/pmw/lib/mr;->a(Lccc71/pmw/lib/mr;)Lccc71/pmw/lib/pmw_settings;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_settings;->finish()V

    .line 3096
    return-void
.end method
