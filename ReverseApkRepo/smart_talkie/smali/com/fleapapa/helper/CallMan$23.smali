.class Lcom/fleapapa/helper/CallMan$23;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->delayRxReport(Lcom/fleapapa/helper/CallPapa$Burst;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;

.field private final synthetic val$burst:Lcom/fleapapa/helper/CallPapa$Burst;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Burst;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$23;->this$0:Lcom/fleapapa/helper/CallMan;

    iput-object p2, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 810
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-wide v3, v3, Lcom/fleapapa/helper/CallPapa$Burst;->tEndReco:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 811
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-wide v5, v5, Lcom/fleapapa/helper/CallPapa$Burst;->tEndReco:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 813
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 821
    :cond_1
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan$23;->this$0:Lcom/fleapapa/helper/CallMan;

    const/16 v4, 0x16

    invoke-virtual {v3, v4, v11}, Lcom/fleapapa/helper/CallMan;->addBursts(IZ)V

    .line 822
    return-void

    .line 813
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/CallPapa$UE;

    .line 814
    .local v2, ua:Lcom/fleapapa/helper/CallPapa$UE;
    iget v4, v2, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v5, Lcom/fleapapa/util/My;->uid:I

    if-eq v4, v5, :cond_0

    .line 815
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fleapapa/helper/CallMan$23;->this$0:Lcom/fleapapa/helper/CallMan;

    #getter for: Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;
    invoke-static {v6}, Lcom/fleapapa/helper/CallMan;->access$0(Lcom/fleapapa/helper/CallMan;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".delayRxReport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/fleapapa/helper/CallPapa$UE;->recv:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v4, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-byte v4, v4, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget v4, v4, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move v1, v4

    .line 817
    .local v1, total:I
    :goto_1
    if-lez v1, :cond_4

    iget v4, v2, Lcom/fleapapa/helper/CallPapa$UE;->recv:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v1

    move v0, v4

    .line 818
    .local v0, ratio:I
    :goto_2
    const/16 v4, 0x5a

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    const-string v6, ". "

    sget-object v7, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v8, 0x7f060017

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    aput-object v9, v8, v11

    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    goto/16 :goto_0

    .line 816
    .end local v0           #ratio:I
    .end local v1           #total:I
    :cond_3
    iget-object v4, p0, Lcom/fleapapa/helper/CallMan$23;->val$burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v4, v4, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    goto :goto_1

    .line 817
    .restart local v1       #total:I
    :cond_4
    const/16 v4, 0x64

    move v0, v4

    goto :goto_2
.end method
