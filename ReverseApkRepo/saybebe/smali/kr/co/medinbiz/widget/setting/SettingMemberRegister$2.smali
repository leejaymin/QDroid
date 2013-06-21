.class Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;
.super Ljava/lang/Thread;
.source "SettingMemberRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->phoneSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$4(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->phone_edit:Landroid/widget/EditText;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$2(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 54
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lkr/co/medinbiz/helper/HttpManager;->phoneSend(Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v0

    .line 55
    .local v0, roots:Lkr/co/medinbiz/dto/Roots;
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
