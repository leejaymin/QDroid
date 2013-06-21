.class Lcom/fleapapa/helper/OfflineMsgs$1;
.super Ljava/lang/Object;
.source "OfflineMsgs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/OfflineMsgs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/OfflineMsgs;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/OfflineMsgs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/OfflineMsgs$1;->this$0:Lcom/fleapapa/helper/OfflineMsgs;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 43
    iget-wide v0, p1, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->stime:J

    iget-wide v2, p2, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->stime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->stime:J

    iget-wide v2, p2, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->stime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    check-cast p2, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    invoke-virtual {p0, p1, p2}, Lcom/fleapapa/helper/OfflineMsgs$1;->compare(Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;)I

    move-result v0

    return v0
.end method
