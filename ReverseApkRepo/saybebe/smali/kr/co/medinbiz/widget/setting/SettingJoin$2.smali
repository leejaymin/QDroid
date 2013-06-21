.class Lkr/co/medinbiz/widget/setting/SettingJoin$2;
.super Ljava/lang/Thread;
.source "SettingJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/setting/SettingJoin;->join()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingJoin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    .line 109
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lkr/co/medinbiz/dto/MemberJoin;

    invoke-direct {v0}, Lkr/co/medinbiz/dto/MemberJoin;-><init>()V

    .line 113
    .local v0, join:Lkr/co/medinbiz/dto/MemberJoin;
    const-string v2, "1"

    iput-object v2, v0, Lkr/co/medinbiz/dto/MemberJoin;->agree1:Ljava/lang/String;

    .line 114
    const-string v2, "1"

    iput-object v2, v0, Lkr/co/medinbiz/dto/MemberJoin;->agree2:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->join_info3:Landroid/widget/CheckBox;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$1(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    :goto_0
    iput-object v2, v0, Lkr/co/medinbiz/dto/MemberJoin;->agree3:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->name:Landroid/widget/EditText;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$2(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lkr/co/medinbiz/dto/MemberJoin;->name:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->number1:Landroid/widget/EditText;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$3(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lkr/co/medinbiz/dto/MemberJoin;->jumin1:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->number2:Landroid/widget/EditText;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$4(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lkr/co/medinbiz/dto/MemberJoin;->jumin2:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->phone:Landroid/widget/TextView;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$5(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lkr/co/medinbiz/dto/MemberJoin;->hp:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->email:Landroid/widget/EditText;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$6(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lkr/co/medinbiz/dto/MemberJoin;->email:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$7(Lkr/co/medinbiz/widget/setting/SettingJoin;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lkr/co/medinbiz/helper/HttpManager;->memberJoin(Lkr/co/medinbiz/dto/MemberJoin;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v1

    .line 124
    .local v1, roots:Lkr/co/medinbiz/dto/Roots;
    if-eqz v1, :cond_5

    .line 125
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$8(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    :cond_0
    :goto_1
    return-void

    .line 116
    .end local v1           #roots:Lkr/co/medinbiz/dto/Roots;
    :cond_1
    const-string v2, "0"

    goto :goto_0

    .line 127
    .restart local v1       #roots:Lkr/co/medinbiz/dto/Roots;
    :cond_2
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NO2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$8(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NO3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$8(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ERR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$8(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 135
    :cond_5
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingJoin;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingJoin;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingJoin;->access$8(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
