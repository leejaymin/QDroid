.class Lcom/virtuallyabstract/eve/Eve$UpdateTime;
.super Ljava/lang/Object;
.source "Eve.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virtuallyabstract/eve/Eve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTime"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/virtuallyabstract/eve/Eve;


# direct methods
.method private constructor <init>(Lcom/virtuallyabstract/eve/Eve;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/virtuallyabstract/eve/Eve$UpdateTime;->this$0:Lcom/virtuallyabstract/eve/Eve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/virtuallyabstract/eve/Eve;Lcom/virtuallyabstract/eve/Eve$UpdateTime;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/virtuallyabstract/eve/Eve$UpdateTime;-><init>(Lcom/virtuallyabstract/eve/Eve;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 559
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve$UpdateTime;->this$0:Lcom/virtuallyabstract/eve/Eve;

    #getter for: Lcom/virtuallyabstract/eve/Eve;->skillTime:J
    invoke-static {v2}, Lcom/virtuallyabstract/eve/Eve;->access$1(Lcom/virtuallyabstract/eve/Eve;)J

    move-result-wide v3

    sub-long/2addr v3, v6

    #setter for: Lcom/virtuallyabstract/eve/Eve;->skillTime:J
    invoke-static {v2, v3, v4}, Lcom/virtuallyabstract/eve/Eve;->access$2(Lcom/virtuallyabstract/eve/Eve;J)V

    .line 561
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve$UpdateTime;->this$0:Lcom/virtuallyabstract/eve/Eve;

    #getter for: Lcom/virtuallyabstract/eve/Eve;->skillTime:J
    invoke-static {v2}, Lcom/virtuallyabstract/eve/Eve;->access$1(Lcom/virtuallyabstract/eve/Eve;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 562
    const-string v0, ""

    .line 565
    .local v0, caption:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve$UpdateTime;->this$0:Lcom/virtuallyabstract/eve/Eve;

    const v3, 0x7f050012

    invoke-virtual {v2, v3}, Lcom/virtuallyabstract/eve/Eve;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 566
    .local v1, txtTime:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve$UpdateTime;->this$0:Lcom/virtuallyabstract/eve/Eve;

    #getter for: Lcom/virtuallyabstract/eve/Eve;->skillTimer:Landroid/os/Handler;
    invoke-static {v2}, Lcom/virtuallyabstract/eve/Eve;->access$4(Lcom/virtuallyabstract/eve/Eve;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/virtuallyabstract/eve/Eve$UpdateTime;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/Eve$UpdateTime;->this$0:Lcom/virtuallyabstract/eve/Eve;

    invoke-direct {v3, v4}, Lcom/virtuallyabstract/eve/Eve$UpdateTime;-><init>(Lcom/virtuallyabstract/eve/Eve;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    return-void

    .line 564
    .end local v0           #caption:Ljava/lang/String;
    .end local v1           #txtTime:Landroid/widget/TextView;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remaining: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve$UpdateTime;->this$0:Lcom/virtuallyabstract/eve/Eve;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/Eve$UpdateTime;->this$0:Lcom/virtuallyabstract/eve/Eve;

    #getter for: Lcom/virtuallyabstract/eve/Eve;->skillTime:J
    invoke-static {v4}, Lcom/virtuallyabstract/eve/Eve;->access$1(Lcom/virtuallyabstract/eve/Eve;)J

    move-result-wide v4

    #calls: Lcom/virtuallyabstract/eve/Eve;->longToStringTime(J)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/virtuallyabstract/eve/Eve;->access$3(Lcom/virtuallyabstract/eve/Eve;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #caption:Ljava/lang/String;
    goto :goto_0
.end method
