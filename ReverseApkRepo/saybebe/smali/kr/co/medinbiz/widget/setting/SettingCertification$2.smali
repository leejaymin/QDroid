.class Lkr/co/medinbiz/widget/setting/SettingCertification$2;
.super Ljava/lang/Thread;
.source "SettingCertification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/setting/SettingCertification;->phoneSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingCertification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$4(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->phone_edit:Landroid/widget/EditText;
    invoke-static {v2}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$2(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 62
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lkr/co/medinbiz/helper/HttpManager;->phoneSend(Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v0

    .line 63
    .local v0, roots:Lkr/co/medinbiz/dto/Roots;
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$5(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$5(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$5(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingCertification;

    #getter for: Lkr/co/medinbiz/widget/setting/SettingCertification;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/setting/SettingCertification;->access$5(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
