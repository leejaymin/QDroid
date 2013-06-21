.class Lexam/service/CalcClient$2;
.super Ljava/lang/Object;
.source "CalcClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/service/CalcClient;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/CalcClient;


# direct methods
.method constructor <init>(Lexam/service/CalcClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/CalcClient$2;->this$0:Lexam/service/CalcClient;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, LCM:I
    :try_start_0
    iget-object v2, p0, Lexam/service/CalcClient$2;->this$0:Lexam/service/CalcClient;

    iget-object v2, v2, Lexam/service/CalcClient;->mCalc:Lexam/service/ICalc;

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-interface {v2, v3, v4}, Lexam/service/ICalc;->getLCM(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 28
    :goto_0
    iget-object v2, p0, Lexam/service/CalcClient$2;->this$0:Lexam/service/CalcClient;

    iget-object v2, v2, Lexam/service/CalcClient;->mResult:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "6\uacfc 8\uc758 \ucd5c\uc18c \uacf5\ubc30\uc218 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
