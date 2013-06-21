.class public Lso;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;


# direct methods
.method public constructor <init>(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lso;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lso;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/m;->꾨뱾(Lcom/nbpcorp/mobilead/sdk/m;)Lry;

    move-result-object v0

    iget-object v1, p0, Lso;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v1}, Lcom/nbpcorp/mobilead/sdk/m;->먮(Lcom/nbpcorp/mobilead/sdk/m;)I

    move-result v1

    invoke-interface {v0, v1}, Lry;->癤욱븳援(I)V

    return-void
.end method
