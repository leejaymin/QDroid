.class Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Lcom/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method private constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1895
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jellybus/fx/Activity_Main;Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1895
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;-><init>(Lcom/jellybus/fx/Activity_Main;)V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 2

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1904
    :goto_0
    return-void

    .line 1903
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->handler_start:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public applicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    const v2, 0x7f050068

    invoke-virtual {v1, v2}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$42(Lcom/jellybus/fx/Activity_Main;Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    const/4 v1, 0x0

    #calls: Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$4(Lcom/jellybus/fx/Activity_Main;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1910
    return-void
.end method

.method public dontAllow()V
    .locals 3

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    :goto_0
    return-void

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    const v2, 0x7f050067

    invoke-virtual {v1, v2}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Main;->armMsg:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$42(Lcom/jellybus/fx/Activity_Main;Ljava/lang/String;)V

    .line 1918
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckerCallback;->this$0:Lcom/jellybus/fx/Activity_Main;

    const/4 v1, 0x0

    #calls: Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$4(Lcom/jellybus/fx/Activity_Main;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
