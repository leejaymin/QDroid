.class Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;
.super Ljava/lang/Thread;
.source "SettingMemberRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->reLogin()V
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    .line 106
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 109
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$4(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v2

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v3}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v3

    invoke-virtual {v3}, Lkr/co/medinbiz/helper/PreferencesManager;->getPW()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v4}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v4

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lkr/co/medinbiz/helper/HttpManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v0

    .line 110
    .local v0, roots:Lkr/co/medinbiz/dto/Roots;
    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsAutoLogin(Z)V

    .line 113
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsLogin(Z)V

    .line 114
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v1

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getMember()Lkr/co/medinbiz/dto/Member;

    move-result-object v2

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Member;->getBabydue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setBabydue(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v1

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getMember()Lkr/co/medinbiz/dto/Member;

    move-result-object v2

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Member;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setName(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v1

    const-string v2, "saybebe"

    invoke-virtual {v1, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setLoginType(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 124
    :cond_3
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->this$0:Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
