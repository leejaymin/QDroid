.class public final LcI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antivirus/gui/AvScanCureParamsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LcI;-><init>(Lcom/kms/antivirus/gui/AvScanCureParamsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/gui/AvScanCureParamsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, LcI;->a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 92
    if-ltz p2, :cond_0

    .line 94
    iget-object v0, p0, LcI;->a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanCureParamsActivity;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, LcI;->a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    invoke-static {v0, p2}, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanCureParamsActivity;I)I

    .line 98
    iget-object v0, p0, LcI;->a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;->b(Lcom/kms/antivirus/gui/AvScanCureParamsActivity;)Lga;

    move-result-object v0

    iget-object v1, p0, LcI;->a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    invoke-static {v1}, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanCureParamsActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lga;->a(ILjava/lang/Object;)V

    .line 99
    iget-object v0, p0, LcI;->a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;->b(Lcom/kms/antivirus/gui/AvScanCureParamsActivity;)Lga;

    move-result-object v0

    invoke-virtual {v0}, Lga;->a()V

    .line 100
    iget-object v0, p0, LcI;->a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    iget-object v1, p0, LcI;->a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    iget-object v2, p0, LcI;->a:Lcom/kms/antivirus/gui/AvScanCureParamsActivity;

    invoke-static {}, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;->c()[[I

    move-result-object v3

    aget-object v3, v3, v4

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/kms/antivirus/gui/AvScanCureParamsActivity;->a(Lcom/kms/antivirus/gui/AvScanCureParamsActivity;ILjava/lang/String;)V

    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
