.class final Lccc71/pmw/lib/hp;
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
    iput-object p1, p0, Lccc71/pmw/lib/hp;->a:Lccc71/pmw/lib/pmw_main;

    iput-object p2, p0, Lccc71/pmw/lib/hp;->b:Landroid/app/Dialog;

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 601
    iget-object v1, p0, Lccc71/pmw/lib/hp;->a:Lccc71/pmw/lib/pmw_main;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_main;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/hp;->a:Lccc71/pmw/lib/pmw_main;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_main;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_tweaks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 603
    const-string v1, "ccc71.pmw.current_widget_id"

    iget-object v2, p0, Lccc71/pmw/lib/hp;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_main;->b(Lccc71/pmw/lib/pmw_main;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lccc71/pmw/a/ar;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    const-string v1, "ccc71.pmw.tweak_id"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/hp;->a:Lccc71/pmw/lib/pmw_main;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_main;->startActivity(Landroid/content/Intent;)V

    .line 610
    iget-object v0, p0, Lccc71/pmw/lib/hp;->a:Lccc71/pmw/lib/pmw_main;

    iget-object v1, p0, Lccc71/pmw/lib/hp;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_main;->a(Landroid/app/Dialog;)V

    .line 611
    return-void

    .line 607
    :cond_0
    const-string v1, "ccc71.pmw.tweak_id"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method