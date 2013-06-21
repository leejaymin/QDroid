.class final Lccc71/pmw/lib/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_main;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_main;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/hh;->a:Lccc71/pmw/lib/pmw_main;

    iput-object p2, p0, Lccc71/pmw/lib/hh;->b:Landroid/app/Dialog;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 390
    iget-object v1, p0, Lccc71/pmw/lib/hh;->a:Lccc71/pmw/lib/pmw_main;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_main;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/hh;->a:Lccc71/pmw/lib/pmw_main;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_main;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_apps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    const-string v1, "ccc71.pmw.current_widget_id"

    iget-object v2, p0, Lccc71/pmw/lib/hh;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_main;->b(Lccc71/pmw/lib/pmw_main;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const-string v1, "ccc71.pmw.app_id"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    iget-object v1, p0, Lccc71/pmw/lib/hh;->a:Lccc71/pmw/lib/pmw_main;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_main;->startActivity(Landroid/content/Intent;)V

    .line 396
    iget-object v0, p0, Lccc71/pmw/lib/hh;->a:Lccc71/pmw/lib/pmw_main;

    iget-object v1, p0, Lccc71/pmw/lib/hh;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_main;->a(Landroid/app/Dialog;)V

    .line 397
    return-void
.end method
