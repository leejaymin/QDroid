.class Lcom/feelingk/iap/net/IAPBase$CallItemAuth;
.super Ljava/lang/Object;
.source "IAPBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/net/IAPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallItemAuth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private pID:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "telecom"
    .parameter "productID"

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->pID:Ljava/lang/String;

    .line 1101
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->pTelecom:I

    .line 1108
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->pTelecom:I

    .line 1109
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->pID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1113
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1114
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1140
    :goto_0
    return-object v0

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->pTelecom:I

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->pID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1117
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1121
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1123
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1124
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_2

    .line 1125
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_2

    .line 1126
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_3

    .line 1129
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v3, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1130
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1135
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1133
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 1138
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x455

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v4}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1140
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method