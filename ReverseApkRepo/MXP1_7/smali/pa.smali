.class Lpa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Loy;


# direct methods
.method constructor <init>(Loy;)V
    .locals 0

    iput-object p1, p0, Lpa;->癤욱븳援:Loy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lpa;->癤욱븳援:Loy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Loy;->癤욱븳援:Z

    iget-object v0, p0, Lpa;->癤욱븳援:Loy;

    invoke-static {v0}, Loy;->癤욱븳援(Loy;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpa;->癤욱븳援:Loy;

    invoke-static {v0}, Loy;->癤욱븳援(Loy;)Loh;

    move-result-object v0

    iget-object v1, p0, Lpa;->癤욱븳援:Loy;

    invoke-static {v1}, Loy;->궗(Loy;)Log;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Loh;->弱밧(Log;Z)V

    :cond_0
    return-void
.end method
