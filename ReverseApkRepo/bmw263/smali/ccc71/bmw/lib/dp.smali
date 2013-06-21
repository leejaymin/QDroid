.class final Lccc71/bmw/lib/dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dp;->a:Lccc71/bmw/lib/bmw_status;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1073
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lccc71/bmw/lib/dp;->a:Lccc71/bmw/lib/bmw_status;

    const-class v2, Lccc71/bmw/lib/bmw_batteries;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1074
    iget-object v1, p0, Lccc71/bmw/lib/dp;->a:Lccc71/bmw/lib/bmw_status;

    invoke-virtual {v1, v0}, Lccc71/bmw/lib/bmw_status;->startActivity(Landroid/content/Intent;)V

    .line 1075
    return-void
.end method
