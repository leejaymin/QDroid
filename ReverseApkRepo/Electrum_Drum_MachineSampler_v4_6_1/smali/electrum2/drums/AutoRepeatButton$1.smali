.class Lelectrum2/drums/AutoRepeatButton$1;
.super Ljava/util/TimerTask;
.source "AutoRepeatButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/AutoRepeatButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/AutoRepeatButton;


# direct methods
.method constructor <init>(Lelectrum2/drums/AutoRepeatButton;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/AutoRepeatButton$1;->this$0:Lelectrum2/drums/AutoRepeatButton;

    .line 38
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lelectrum2/drums/AutoRepeatButton$1;->this$0:Lelectrum2/drums/AutoRepeatButton;

    invoke-virtual {v0}, Lelectrum2/drums/AutoRepeatButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lelectrum2/drums/AutoRepeatButton$1;->this$0:Lelectrum2/drums/AutoRepeatButton;

    invoke-virtual {v0}, Lelectrum2/drums/AutoRepeatButton;->performClick()Z

    .line 46
    iget-object v0, p0, Lelectrum2/drums/AutoRepeatButton$1;->this$0:Lelectrum2/drums/AutoRepeatButton;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lelectrum2/drums/AutoRepeatButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    :cond_0
    return-void
.end method
