.class public final LcS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvScanParamsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LcS;-><init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/gui/AvScanParamsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    .line 336
    iget-object v0, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->e(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->f(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 344
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0, p2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c(Lcom/kms/antivirus/gui/AvScanParamsActivity;I)I

    .line 339
    iget-object v0, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0, p3}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->d(Lcom/kms/antivirus/gui/AvScanParamsActivity;I)I

    .line 340
    iget-object v0, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->e(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v1}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->f(Lcom/kms/antivirus/gui/AvScanParamsActivity;)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 341
    iget-object v2, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->b(Lcom/kms/antivirus/gui/AvScanParamsActivity;)Lga;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lga;->a(ILjava/lang/Object;)V

    .line 342
    iget-object v0, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c(Lcom/kms/antivirus/gui/AvScanParamsActivity;)V

    .line 343
    iget-object v0, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    iget-object v1, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    iget-object v2, p0, LcS;->a:Lcom/kms/antivirus/gui/AvScanParamsActivity;

    invoke-static {}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c()[[I

    move-result-object v3

    aget-object v3, v3, v5

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/kms/antivirus/gui/AvScanParamsActivity;->c(Lcom/kms/antivirus/gui/AvScanParamsActivity;ILjava/lang/String;)V

    goto :goto_0
.end method
