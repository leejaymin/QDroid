.class Lelectrum2/drums/electrum$21;
.super Landroid/os/Handler;
.source "electrum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/electrum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/electrum;


# direct methods
.method constructor <init>(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/electrum$21;->this$0:Lelectrum2/drums/electrum;

    .line 6316
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 6321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 6345
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 6346
    return-void

    .line 6324
    :pswitch_0
    iget-object v0, p0, Lelectrum2/drums/electrum$21;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    .line 6325
    const/4 v2, -0x2

    .line 6324
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 6327
    iget-object v0, p0, Lelectrum2/drums/electrum$21;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, p0, Lelectrum2/drums/electrum$21;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->selectedpattern:I

    iput v1, v0, Lelectrum2/drums/electrum;->currentpattern:I

    .line 6329
    iget-object v0, p0, Lelectrum2/drums/electrum$21;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V
    invoke-static {v0}, Lelectrum2/drums/electrum;->access$2(Lelectrum2/drums/electrum;)V

    .line 6331
    iget-object v0, p0, Lelectrum2/drums/electrum$21;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->patternHandler:Landroid/os/Handler;

    iget-object v1, p0, Lelectrum2/drums/electrum$21;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->UpdatePattern:Ljava/lang/Runnable;
    invoke-static {v1}, Lelectrum2/drums/electrum;->access$10(Lelectrum2/drums/electrum;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6321
    nop

    :pswitch_data_0
    .packed-switch 0x3039
        :pswitch_0
    .end packed-switch
.end method
