.class Lkr/co/medinbiz/LibraryIntro$2;
.super Ljava/lang/Object;
.source "LibraryIntro.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/LibraryIntro;->loginStart(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/LibraryIntro;

.field private final synthetic val$http:Lkr/co/medinbiz/helper/HttpManager;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/LibraryIntro;Lkr/co/medinbiz/helper/HttpManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    iput-object p2, p0, Lkr/co/medinbiz/LibraryIntro$2;->val$http:Lkr/co/medinbiz/helper/HttpManager;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 62
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->deviceModel:Ljava/lang/String;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$2(Lkr/co/medinbiz/LibraryIntro;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, models:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 64
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "check model!!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkr/co/medinbiz/widget/ultra/util/PropertyChecker;->isSaveSMS(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lkr/co/medinbiz/helper/AppData;->isSamsung:Z

    .line 68
    :cond_0
    new-instance v1, Lkr/co/medinbiz/helper/LoginManager;

    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lkr/co/medinbiz/LibraryIntro;->access$3(Lkr/co/medinbiz/LibraryIntro;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lkr/co/medinbiz/helper/LoginManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 69
    .local v1, login:Lkr/co/medinbiz/helper/LoginManager;
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$4(Lkr/co/medinbiz/LibraryIntro;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v5

    invoke-virtual {v5}, Lkr/co/medinbiz/helper/PreferencesManager;->getLoginType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "saybebe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 70
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->val$http:Lkr/co/medinbiz/helper/HttpManager;

    iget-object v6, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v6}, Lkr/co/medinbiz/LibraryIntro;->access$4(Lkr/co/medinbiz/LibraryIntro;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v6

    invoke-virtual {v6}, Lkr/co/medinbiz/helper/PreferencesManager;->getID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v7}, Lkr/co/medinbiz/LibraryIntro;->access$4(Lkr/co/medinbiz/LibraryIntro;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v7

    invoke-virtual {v7}, Lkr/co/medinbiz/helper/PreferencesManager;->getPW()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v8}, Lkr/co/medinbiz/LibraryIntro;->access$4(Lkr/co/medinbiz/LibraryIntro;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v8

    invoke-virtual {v8}, Lkr/co/medinbiz/helper/PreferencesManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lkr/co/medinbiz/helper/HttpManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v4

    .line 71
    .local v4, roots:Lkr/co/medinbiz/dto/Roots;
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$4(Lkr/co/medinbiz/LibraryIntro;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v5

    invoke-virtual {v5}, Lkr/co/medinbiz/helper/PreferencesManager;->getID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v6}, Lkr/co/medinbiz/LibraryIntro;->access$4(Lkr/co/medinbiz/LibraryIntro;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v6

    invoke-virtual {v6}, Lkr/co/medinbiz/helper/PreferencesManager;->getPW()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lkr/co/medinbiz/helper/LoginManager;->memberLogin(Lkr/co/medinbiz/dto/Roots;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, result:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 73
    const-string v5, "OK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-virtual {v1}, Lkr/co/medinbiz/helper/LoginManager;->noticeData()V

    .line 107
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #roots:Lkr/co/medinbiz/dto/Roots;
    :cond_1
    :goto_0
    return-void

    .line 75
    .restart local v3       #result:Ljava/lang/String;
    .restart local v4       #roots:Lkr/co/medinbiz/dto/Roots;
    :cond_2
    const-string v5, "NO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$3(Lkr/co/medinbiz/LibraryIntro;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 77
    :cond_3
    const-string v5, "ERR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$3(Lkr/co/medinbiz/LibraryIntro;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 81
    :cond_4
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$3(Lkr/co/medinbiz/LibraryIntro;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 83
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #roots:Lkr/co/medinbiz/dto/Roots;
    :cond_5
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$4(Lkr/co/medinbiz/LibraryIntro;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v5

    invoke-virtual {v5}, Lkr/co/medinbiz/helper/PreferencesManager;->getLoginType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "invite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 84
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->val$http:Lkr/co/medinbiz/helper/HttpManager;

    iget-object v6, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v6}, Lkr/co/medinbiz/LibraryIntro;->access$4(Lkr/co/medinbiz/LibraryIntro;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v6

    invoke-virtual {v6}, Lkr/co/medinbiz/helper/PreferencesManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkr/co/medinbiz/helper/HttpManager;->loginHP(Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v4

    .line 85
    .restart local v4       #roots:Lkr/co/medinbiz/dto/Roots;
    invoke-virtual {v1, v4}, Lkr/co/medinbiz/helper/LoginManager;->phoneLogin(Lkr/co/medinbiz/dto/Roots;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .restart local v3       #result:Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 87
    const-string v5, "OK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 88
    invoke-virtual {v1}, Lkr/co/medinbiz/helper/LoginManager;->noticeData()V

    goto :goto_0

    .line 89
    :cond_6
    const-string v5, "NO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 90
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$3(Lkr/co/medinbiz/LibraryIntro;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 91
    :cond_7
    const-string v5, "ERR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$3(Lkr/co/medinbiz/LibraryIntro;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 95
    :cond_8
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$3(Lkr/co/medinbiz/LibraryIntro;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 99
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #roots:Lkr/co/medinbiz/dto/Roots;
    :cond_9
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    iget-object v5, p0, Lkr/co/medinbiz/LibraryIntro$2;->this$0:Lkr/co/medinbiz/LibraryIntro;

    #getter for: Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lkr/co/medinbiz/LibraryIntro;->access$3(Lkr/co/medinbiz/LibraryIntro;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
