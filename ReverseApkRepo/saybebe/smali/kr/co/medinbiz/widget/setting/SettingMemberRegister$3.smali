.class Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;
.super Ljava/lang/Thread;
.source "SettingMemberRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->certification()V
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$4(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->phone_edit:Landroid/widget/EditText;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$2(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 83
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->result_edit:Landroid/widget/EditText;
    invoke-static {v3}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$6(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v1, v2, v3}, Lkr/co/medinbiz/helper/HttpManager;->phoneCheck(Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v0

    .line 84
    .local v0, roots:Lkr/co/medinbiz/dto/Roots;
    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 93
    :cond_3
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
