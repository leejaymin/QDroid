.class public final LcE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvAdditionalActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/gui/AvAdditionalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, LcE;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 375
    invoke-static {}, Lfp;->f()I

    move-result v0

    .line 376
    iget-object v2, p0, LcE;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 377
    invoke-static {}, LdT;->e()V

    .line 378
    iget-object v0, p0, LcE;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    iget-object v2, p0, LcE;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    iget-object v3, p0, LcE;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    const v4, 0x7f080049

    invoke-virtual {v3, v4}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(Lcom/kms/antivirus/gui/AvAdditionalActivity;ILjava/lang/String;)V

    .line 380
    iget-object v0, p0, LcE;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    invoke-static {v0}, Leu;->a(Landroid/content/Context;)Z

    .line 381
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
