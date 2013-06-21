.class Lcom/rookiestudio/customize/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/customize/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/customize/NumberPicker;


# direct methods
.method constructor <init>(Lcom/rookiestudio/customize/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    #getter for: Lcom/rookiestudio/customize/NumberPicker;->mIncrement:Z
    invoke-static {v0}, Lcom/rookiestudio/customize/NumberPicker;->access$0(Lcom/rookiestudio/customize/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    iget v1, v1, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    iget v2, v2, Lcom/rookiestudio/customize/NumberPicker;->mStep:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/rookiestudio/customize/NumberPicker;->changeCurrent(I)V

    .line 83
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    #getter for: Lcom/rookiestudio/customize/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/rookiestudio/customize/NumberPicker;->access$1(Lcom/rookiestudio/customize/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    #getter for: Lcom/rookiestudio/customize/NumberPicker;->mSpeed:J
    invoke-static {v1}, Lcom/rookiestudio/customize/NumberPicker;->access$2(Lcom/rookiestudio/customize/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    #getter for: Lcom/rookiestudio/customize/NumberPicker;->mDecrement:Z
    invoke-static {v0}, Lcom/rookiestudio/customize/NumberPicker;->access$3(Lcom/rookiestudio/customize/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    iget v1, v1, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    iget v2, v2, Lcom/rookiestudio/customize/NumberPicker;->mStep:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/rookiestudio/customize/NumberPicker;->changeCurrent(I)V

    .line 86
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    #getter for: Lcom/rookiestudio/customize/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/rookiestudio/customize/NumberPicker;->access$1(Lcom/rookiestudio/customize/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker$3;->this$0:Lcom/rookiestudio/customize/NumberPicker;

    #getter for: Lcom/rookiestudio/customize/NumberPicker;->mSpeed:J
    invoke-static {v1}, Lcom/rookiestudio/customize/NumberPicker;->access$2(Lcom/rookiestudio/customize/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
