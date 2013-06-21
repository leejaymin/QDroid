.class final Lccc71/pmw/lib/pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pa;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pa;->a:Lccc71/pmw/lib/pmw_sysctl;

    const-class v2, Lccc71/pmw/lib/pmw_settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    const-string v1, "ccc71.pmw.boot_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 558
    iget-object v1, p0, Lccc71/pmw/lib/pa;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_sysctl;->startActivity(Landroid/content/Intent;)V

    .line 559
    return-void
.end method
