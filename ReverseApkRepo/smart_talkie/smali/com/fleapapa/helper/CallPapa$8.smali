.class Lcom/fleapapa/helper/CallPapa$8;
.super Ljava/lang/Object;
.source "CallPapa.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallPapa;->om_getter(I)V
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
.field final synthetic this$0:Lcom/fleapapa/helper/CallPapa;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallPapa;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$8;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 2401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2403
    iget v0, p1, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->bix:I

    iget v1, p2, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->bix:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    check-cast p2, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    invoke-virtual {p0, p1, p2}, Lcom/fleapapa/helper/CallPapa$8;->compare(Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;)I

    move-result v0

    return v0
.end method
