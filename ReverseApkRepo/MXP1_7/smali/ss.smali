.class public Lss;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

.field private final synthetic 궗:Z


# direct methods
.method public constructor <init>(Lcom/nbpcorp/mobilead/sdk/m;Z)V
    .locals 0

    iput-object p1, p0, Lss;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    iput-boolean p2, p0, Lss;->궗:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lss;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    iget-boolean v1, p0, Lss;->궗:Z

    invoke-static {v0, v1}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/m;Z)V

    return-void
.end method
