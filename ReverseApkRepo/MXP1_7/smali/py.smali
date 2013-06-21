.class Lpy;
.super Ljava/lang/Object;

# interfaces
.implements Lc;


# instance fields
.field final synthetic 癤욱븳援:Lpx;


# direct methods
.method constructor <init>(Lpx;)V
    .locals 0

    iput-object p1, p0, Lpy;->癤욱븳援:Lpx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(I)V
    .locals 2

    iget-object v0, p0, Lpy;->癤욱븳援:Lpx;

    invoke-static {v0}, Lpx;->癤욱븳援(Lpx;)Lpv;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpv;->癤욱븳援:Z

    iget-object v0, p0, Lpy;->癤욱븳援:Lpx;

    invoke-static {v0}, Lpx;->癤욱븳援(Lpx;)Lpv;

    move-result-object v0

    invoke-static {v0}, Lpv;->洹(Lpv;)Lafzkl/development/mColorPicker/views/ColorPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    iget-object v0, p0, Lpy;->癤욱븳援:Lpx;

    invoke-static {v0}, Lpx;->癤욱븳援(Lpx;)Lpv;

    move-result-object v0

    invoke-static {v0}, Lpv;->ㅼ꽑嫄(Lpv;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpy;->癤욱븳援:Lpx;

    invoke-static {v0}, Lpx;->癤욱븳援(Lpx;)Lpv;

    move-result-object v0

    invoke-static {v0}, Lpv;->ㅼ꽑嫄(Lpv;)Loh;

    move-result-object v0

    iget-object v1, p0, Lpy;->癤욱븳援:Lpx;

    invoke-static {v1}, Lpx;->癤욱븳援(Lpx;)Lpv;

    move-result-object v1

    invoke-static {v1}, Lpv;->弱밧(Lpv;)Log;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Loh;->대쫫(Log;I)V

    :cond_0
    return-void
.end method
