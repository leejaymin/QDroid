.class Lcom/fleapapa/helper/CallMan$22;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->invite(Landroid/content/Context;Landroid/os/Handler;Lcom/fleapapa/helper/CallPapa$Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$call:Lcom/fleapapa/helper/CallPapa$Call;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallPapa$Call;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$22;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iput-object p2, p0, Lcom/fleapapa/helper/CallMan$22;->val$context:Landroid/content/Context;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 776
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$22;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    return-void

    .line 776
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$UE;

    .line 777
    .local v0, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget-object v2, p0, Lcom/fleapapa/helper/CallMan$22;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    iget v3, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 778
    iget-object v2, p0, Lcom/fleapapa/helper/CallMan$22;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan$22;->val$context:Landroid/content/Context;

    const v4, 0x7f0600e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
