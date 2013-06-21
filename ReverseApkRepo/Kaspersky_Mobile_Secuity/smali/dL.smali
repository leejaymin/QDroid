.class public final LdL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSMain;


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSMain;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, LdL;->a:Lcom/kms/gui/KMSMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 573
    iget-object v0, p0, LdL;->a:Lcom/kms/gui/KMSMain;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kms/gui/KMSMain;->a(Lcom/kms/gui/KMSMain;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/kms/kmsshared/KMSApplication;->a(ZLfC;)I

    move-result v0

    .line 578
    if-eq v0, v2, :cond_2

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_0

    .line 582
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LdL;->a:Lcom/kms/gui/KMSMain;

    const-class v2, Lcom/kms/updater/gui/UpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    iget-object v1, p0, LdL;->a:Lcom/kms/gui/KMSMain;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
