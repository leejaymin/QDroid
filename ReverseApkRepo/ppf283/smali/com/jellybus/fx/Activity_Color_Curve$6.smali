.class Lcom/jellybus/fx/Activity_Color_Curve$6;
.super Landroid/os/Handler;
.source "Activity_Color_Curve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Curve;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Curve$6;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    .line 276
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$6;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setJNIPreviewForLive()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$25(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 280
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$6;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView;->setFinalPoint()V

    .line 281
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$6;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setCurveEffectForLive()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$26(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 282
    return-void
.end method
