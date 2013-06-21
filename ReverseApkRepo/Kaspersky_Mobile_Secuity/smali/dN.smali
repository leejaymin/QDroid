.class public final LdN;
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
    .line 607
    iput-object p1, p0, LdN;->a:Lcom/kms/gui/KMSMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 611
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 612
    iget-boolean v0, v0, Lgf;->b:Z

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, LdN;->a:Lcom/kms/gui/KMSMain;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/kms/gui/KMSMain;->a(Lcom/kms/gui/KMSMain;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 617
    :cond_0
    invoke-static {}, Lcom/kms/gui/KMSMain;->d()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 618
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LdN;->a:Lcom/kms/gui/KMSMain;

    const-class v2, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    iget-object v1, p0, LdN;->a:Lcom/kms/gui/KMSMain;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/kms/gui/KMSMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
