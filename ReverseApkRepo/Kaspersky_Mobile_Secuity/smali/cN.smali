.class public final LcN;
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
    .line 253
    iput-object p1, p0, LcN;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    iput p2, p0, LcN;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, LcN;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->c(Lcom/kms/antivirus/gui/AvScanFilesActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, LcN;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method
