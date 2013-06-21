.class Lcom/fleapapa/helper/CallPapa$Call$2;
.super Ljava/lang/Thread;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallPapa$Call;->startPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallPapa$Call;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallPapa$Call;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Call$2;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    .line 1203
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call$2;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->threadPlayer()V

    .line 1206
    return-void
.end method
