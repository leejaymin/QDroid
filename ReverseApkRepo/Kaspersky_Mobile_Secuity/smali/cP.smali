.class public final LcP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvScanFilesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LcP;-><init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, LcP;->a:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 293
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 295
    iget-object v0, p0, LcP;->a:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->e(Lcom/kms/antivirus/gui/AvScanFilesActivity;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
