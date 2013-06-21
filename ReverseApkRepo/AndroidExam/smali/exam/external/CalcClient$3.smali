.class Lexam/external/CalcClient$3;
.super Ljava/lang/Object;
.source "CalcClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/external/CalcClient;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/external/CalcClient;


# direct methods
.method constructor <init>(Lexam/external/CalcClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/external/CalcClient$3;->this$0:Lexam/external/CalcClient;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, prime:Z
    :try_start_0
    iget-object v2, p0, Lexam/external/CalcClient$3;->this$0:Lexam/external/CalcClient;

    iget-object v2, v2, Lexam/external/CalcClient;->mCalc:Lexam/service/ICalc;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Lexam/service/ICalc;->isPrime(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    :goto_0
    iget-object v2, p0, Lexam/external/CalcClient$3;->this$0:Lexam/external/CalcClient;

    iget-object v2, v2, Lexam/external/CalcClient;->mResult:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "7\uc758 \uc18c\uc218 \uc5ec\ubd80 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
