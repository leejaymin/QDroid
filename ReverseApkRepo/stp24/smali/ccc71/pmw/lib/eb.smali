.class final Lccc71/pmw/lib/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_cpu;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_cpu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/eb;->a:Lccc71/pmw/lib/pmw_cpu;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/eb;->a:Lccc71/pmw/lib/pmw_cpu;

    const-class v2, Lccc71/pmw/lib/pmw_settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    const-string v1, "ccc71.pmw.boot_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lccc71/pmw/lib/eb;->a:Lccc71/pmw/lib/pmw_cpu;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_cpu;->startActivity(Landroid/content/Intent;)V

    .line 445
    return-void
.end method
