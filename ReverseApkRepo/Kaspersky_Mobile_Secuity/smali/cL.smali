.class public final LcL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/kms/antivirus/gui/AvScanFilesActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, LcL;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    iput p2, p0, LcL;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, LcL;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a(Lcom/kms/antivirus/gui/AvScanFilesActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, LcL;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 231
    iget-object v0, p0, LcL;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->b(Lcom/kms/antivirus/gui/AvScanFilesActivity;Z)Z

    .line 232
    return-void
.end method
