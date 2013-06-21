.class Lcom/jellybus/fx/Activity_Main$20;
.super Landroid/os/CountDownTimer;
.source "Activity_Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Main;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;JJ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$20;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 1504
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$20;->this$0:Lcom/jellybus/fx/Activity_Main;

    const/4 v1, 0x0

    #setter for: Lcom/jellybus/fx/Activity_Main;->isBackPressed:Z
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$50(Lcom/jellybus/fx/Activity_Main;Z)V

    .line 1513
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 1508
    return-void
.end method
