.class Lcom/fleapapa/helper/CallPapa$6;
.super Ljava/lang/Thread;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallPapa;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallPapa;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$6;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 234
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$6;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa;->recorder()V

    return-void
.end method
