.class public final LdC;
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
    .line 692
    iput-object p1, p0, LdC;->a:Lcom/kms/gui/KMSMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 696
    iget-object v0, p0, LdC;->a:Lcom/kms/gui/KMSMain;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/kms/gui/KMSMain;->a(Lcom/kms/gui/KMSMain;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LdC;->a:Lcom/kms/gui/KMSMain;

    const-class v2, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    iget-object v1, p0, LdC;->a:Lcom/kms/gui/KMSMain;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
