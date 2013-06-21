.class final Lccc71/pmw/lib/ht;
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
    iput-object p1, p0, Lccc71/pmw/lib/ht;->a:Lccc71/pmw/lib/pmw_main;

    iput-object p2, p0, Lccc71/pmw/lib/ht;->b:Landroid/app/Dialog;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/ht;->a:Lccc71/pmw/lib/pmw_main;

    const-class v2, Lccc71/pmw/lib/pmw_settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 674
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 675
    const-string v1, "ccc71.pmw.current_widget_id"

    iget-object v2, p0, Lccc71/pmw/lib/ht;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_main;->b(Lccc71/pmw/lib/pmw_main;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    iget-object v1, p0, Lccc71/pmw/lib/ht;->a:Lccc71/pmw/lib/pmw_main;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_main;->startActivity(Landroid/content/Intent;)V

    .line 678
    iget-object v0, p0, Lccc71/pmw/lib/ht;->a:Lccc71/pmw/lib/pmw_main;

    iget-object v1, p0, Lccc71/pmw/lib/ht;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_main;->a(Landroid/app/Dialog;)V

    .line 679
    return-void
.end method
