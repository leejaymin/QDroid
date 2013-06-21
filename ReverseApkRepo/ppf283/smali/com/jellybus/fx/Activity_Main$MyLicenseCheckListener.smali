.class Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Lcom/samsung/zirconia/LicenseCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLicenseCheckListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 2005
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public licenseCheckedAsInvalid()V
    .locals 2

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;->this$0:Lcom/jellybus/fx/Activity_Main;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->zirconia:Lcom/samsung/zirconia/Zirconia;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$44(Lcom/jellybus/fx/Activity_Main;)Lcom/samsung/zirconia/Zirconia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/zirconia/Zirconia;->getError()I

    move-result v1

    #calls: Lcom/jellybus/fx/Activity_Main;->setMessageSamsung(I)V
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$45(Lcom/jellybus/fx/Activity_Main;I)V

    .line 2017
    return-void
.end method

.method public licenseCheckedAsValid()V
    .locals 2

    .prologue
    .line 2010
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$43(Z)V

    .line 2011
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$MyLicenseCheckListener;->this$0:Lcom/jellybus/fx/Activity_Main;

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->zirconia_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2012
    return-void
.end method
