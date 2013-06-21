.class public Lrp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;


# direct methods
.method public constructor <init>(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lrp;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援:Z

    if-eqz v0, :cond_0

    const-string v0, "NBPMOBILEAD"

    const-string v1, "onReceive(ERROR_NETWORK)-Ad Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lrp;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/m;->꾨뱾(Lcom/nbpcorp/mobilead/sdk/m;)Lry;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lry;->癤욱븳援(I)V

    return-void
.end method
