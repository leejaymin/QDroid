.class public final LcQ;
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
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LcQ;-><init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    .line 310
    if-ltz p2, :cond_0

    iget-object v0, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-virtual {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 313
    iget-object v0, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0, p2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(Lcom/kms/antivirus/gui/AvScanParamsActivity;I)I

    .line 319
    iget-object v0, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(Lcom/kms/antivirus/gui/AvScanParamsActivity;)Lga;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lga;->a(ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c(Lcom/kms/antivirus/gui/AvScanParamsActivity;)V

    .line 321
    iget-object v0, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    iget-object v1, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    iget-object v2, p0, LcQ;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c()[[I

    move-result-object v3

    aget-object v3, v3, v5

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(Lcom/kms/antivirus/gui/AvScanParamsActivity;ILjava/lang/String;)V

    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
