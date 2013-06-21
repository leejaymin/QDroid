.class Lcom/fleapapa/helper/CallPapa$Clip;
.super Ljava/lang/Object;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallPapa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Clip"
.end annotation


# instance fields
.field burst:Lcom/fleapapa/helper/CallPapa$Burst;

.field bytes:[B

.field nbyte:I

.field nsample:I

.field final synthetic this$0:Lcom/fleapapa/helper/CallPapa;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Burst;[BII)V
    .locals 0
    .parameter
    .parameter "burst"
    .parameter "bytes"
    .parameter "nbyte"
    .parameter "nsample"

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Clip;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 1634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1635
    iput-object p2, p0, Lcom/fleapapa/helper/CallPapa$Clip;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1636
    iput-object p3, p0, Lcom/fleapapa/helper/CallPapa$Clip;->bytes:[B

    .line 1637
    iput p4, p0, Lcom/fleapapa/helper/CallPapa$Clip;->nbyte:I

    return-void
.end method
