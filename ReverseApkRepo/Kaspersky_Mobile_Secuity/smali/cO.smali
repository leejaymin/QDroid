.class public final LcO;
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
    .line 265
    iput-object p1, p0, LcO;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    iput p2, p0, LcO;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, LcO;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->d(Lcom/kms/antivirus/gui/AvScanFilesActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, LcO;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a(Lcom/kms/antivirus/gui/AvScanFilesActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, LcO;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 272
    :cond_0
    return-void
.end method
