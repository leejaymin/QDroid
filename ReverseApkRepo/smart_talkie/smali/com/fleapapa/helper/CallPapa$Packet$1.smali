.class Lcom/fleapapa/helper/CallPapa$Packet$1;
.super Ljava/lang/Thread;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallPapa$Packet;->req_notify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallPapa$Packet;

.field private final synthetic val$fcid:I


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallPapa$Packet;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Packet$1;->this$1:Lcom/fleapapa/helper/CallPapa$Packet;

    iput p3, p0, Lcom/fleapapa/helper/CallPapa$Packet$1;->val$fcid:I

    .line 2056
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Packet$1;->this$1:Lcom/fleapapa/helper/CallPapa$Packet;

    #getter for: Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;
    invoke-static {v0}, Lcom/fleapapa/helper/CallPapa$Packet;->access$0(Lcom/fleapapa/helper/CallPapa$Packet;)Lcom/fleapapa/helper/CallPapa;

    move-result-object v0

    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Packet$1;->val$fcid:I

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallPapa;->om_getter(I)V

    return-void
.end method
