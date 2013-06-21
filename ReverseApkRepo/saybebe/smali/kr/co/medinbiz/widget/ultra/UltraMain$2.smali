.class Lkr/co/medinbiz/widget/ultra/UltraMain$2;
.super Ljava/lang/Object;
.source "UltraMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/UltraMain;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$2;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$2;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$2;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/HttpManager;->memberList()Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    #setter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$10(Lkr/co/medinbiz/widget/ultra/UltraMain;Lkr/co/medinbiz/dto/MemberList;)V

    .line 62
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$2;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$11(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$2;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$11(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method
