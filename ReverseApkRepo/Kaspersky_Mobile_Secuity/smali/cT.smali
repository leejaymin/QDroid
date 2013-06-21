.class public final LcT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvScanResultActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/gui/AvScanResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, LcT;->a:Lcom/kms/antivirus/gui/AvScanResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgg;

    .line 43
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lgg;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lgg;->a(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {v0}, Lgg;->a()V

    .line 47
    :cond_0
    iget-object v0, p0, LcT;->a:Lcom/kms/antivirus/gui/AvScanResultActivity;

    invoke-virtual {v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->finish()V

    .line 48
    return-void
.end method
