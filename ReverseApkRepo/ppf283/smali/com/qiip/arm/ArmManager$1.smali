.class Lcom/qiip/arm/ArmManager$1;
.super Landroid/os/Handler;
.source "ArmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiip/arm/ArmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/ArmManager;


# direct methods
.method constructor <init>(Lcom/qiip/arm/ArmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiip/arm/ArmManager$1;->this$0:Lcom/qiip/arm/ArmManager;

    .line 173
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/qiip/arm/ArmManager$1;->this$0:Lcom/qiip/arm/ArmManager;

    iget v0, v0, Lcom/qiip/arm/ArmManager;->nRet:I

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/qiip/arm/ArmManager$1;->this$0:Lcom/qiip/arm/ArmManager;

    iput v1, v0, Lcom/qiip/arm/ArmManager;->nNetState:I

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/qiip/arm/ArmManager$1;->this$0:Lcom/qiip/arm/ArmManager;

    #calls: Lcom/qiip/arm/ArmManager;->ReturnService()V
    invoke-static {v0}, Lcom/qiip/arm/ArmManager;->access$0(Lcom/qiip/arm/ArmManager;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/qiip/arm/ArmManager$1;->this$0:Lcom/qiip/arm/ArmManager;

    const/16 v1, 0x14

    iput v1, v0, Lcom/qiip/arm/ArmManager;->nNetState:I

    goto :goto_1

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
