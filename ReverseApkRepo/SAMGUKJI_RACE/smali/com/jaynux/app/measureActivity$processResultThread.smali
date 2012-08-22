.class Lcom/jaynux/app/measureActivity$processResultThread;
.super Ljava/lang/Thread;
.source "measureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/measureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "processResultThread"
.end annotation


# instance fields
.field cycle:I

.field mChanceBooster:I

.field mChanceFingerDistance:I

.field mChanceSpeed:I

.field mChanceStep:I

.field mValue:I

.field final synthetic this$0:Lcom/jaynux/app/measureActivity;


# direct methods
.method constructor <init>(Lcom/jaynux/app/measureActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 715
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$processResultThread;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 716
    iput v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mValue:I

    .line 717
    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {p1}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    aget v0, v0, v2

    iput v0, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mChanceSpeed:I

    .line 718
    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {p1}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mChanceBooster:I

    .line 719
    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {p1}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mChanceStep:I

    .line 720
    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {p1}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mChanceFingerDistance:I

    .line 721
    iput v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->cycle:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 723
    :goto_0
    iget v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mValue:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 749
    return-void

    .line 726
    :cond_0
    iget v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mValue:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4024

    add-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mValue:I

    .line 727
    iget v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->cycle:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->cycle:I

    .line 728
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->this$0:Lcom/jaynux/app/measureActivity;

    iget v3, p0, Lcom/jaynux/app/measureActivity$processResultThread;->cycle:I

    iput v3, v2, Lcom/jaynux/app/measureActivity;->mCycle:I

    .line 730
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mChanceSpeed:I

    aput v4, v2, v3

    .line 731
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mChanceBooster:I

    aput v4, v2, v3

    .line 732
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    const/4 v3, 0x2

    iget v4, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mChanceStep:I

    aput v4, v2, v3

    .line 733
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    const/4 v3, 0x3

    iget v4, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mChanceFingerDistance:I

    aput v4, v2, v3

    .line 735
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 736
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 737
    iget v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->mValue:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 738
    iget v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->cycle:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 740
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$processResultThread;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 743
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 746
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
