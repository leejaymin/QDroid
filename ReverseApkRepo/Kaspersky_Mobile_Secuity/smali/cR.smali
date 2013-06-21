.class public final LcR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvScanParamsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LcR;-><init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x3

    .line 280
    if-ltz p2, :cond_0

    iget-object v0, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-virtual {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 284
    iget-object v0, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0, p2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanParamsActivity;I)I

    .line 287
    iget-object v3, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    iget-object v0, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v7, v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(IZ)V

    .line 288
    iget-object v0, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    const/4 v3, 0x5

    iget-object v4, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v4}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v4

    if-eq v4, v6, :cond_3

    :goto_2
    invoke-virtual {v0, v3, v1}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(IZ)V

    .line 289
    iget-object v0, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(Lcom/kms/antivirus/gui/AvScanParamsActivity;)Lga;

    move-result-object v0

    iget-object v1, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v1}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lga;->a(ILjava/lang/Object;)V

    .line 290
    iget-object v0, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c(Lcom/kms/antivirus/gui/AvScanParamsActivity;)V

    .line 291
    iget-object v0, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    iget-object v1, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    iget-object v2, p0, LcR;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c()[[I

    move-result-object v3

    aget-object v3, v3, v5

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanParamsActivity;ILjava/lang/String;)V

    .line 292
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 287
    goto :goto_1

    :cond_3
    move v1, v2

    .line 288
    goto :goto_2
.end method
