.class Lru;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lrt;


# direct methods
.method constructor <init>(Lrt;)V
    .locals 0

    iput-object p1, p0, Lru;->癤욱븳援:Lrt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lru;->癤욱븳援:Lrt;

    invoke-static {v0}, Lrt;->癤욱븳援(Lrt;)Lcom/nbpcorp/mobilead/sdk/m;

    move-result-object v0

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄(Lcom/nbpcorp/mobilead/sdk/m;)V

    return-void
.end method
