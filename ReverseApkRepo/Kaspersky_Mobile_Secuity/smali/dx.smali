.class public final Ldx;
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
    .line 650
    iput-object p1, p0, Ldx;->a:Lcom/kms/gui/KMSMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Ldx;->a:Lcom/kms/gui/KMSMain;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ldx;->a:Lcom/kms/gui/KMSMain;

    const-class v3, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kms/gui/KMSMain;->startActivity(Landroid/content/Intent;)V

    .line 655
    return-void
.end method
