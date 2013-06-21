.class Lgj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lgi;


# direct methods
.method constructor <init>(Lgi;)V
    .locals 0

    iput-object p1, p0, Lgj;->癤욱븳援:Lgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lgj;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgj;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    iget-object v1, p0, Lgj;->癤욱븳援:Lgi;

    invoke-interface {v0, v1}, Lgk;->궗(Lgd;)V

    :cond_0
    return-void
.end method
