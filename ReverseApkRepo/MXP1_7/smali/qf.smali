.class Lqf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lpv;


# direct methods
.method constructor <init>(Lpv;)V
    .locals 0

    iput-object p1, p0, Lqf;->癤욱븳援:Lpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lqf;->癤욱븳援:Lpv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpv;->癤욱븳援:Z

    iget-object v0, p0, Lqf;->癤욱븳援:Lpv;

    invoke-static {v0}, Lpv;->ㅼ꽑嫄(Lpv;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqf;->癤욱븳援:Lpv;

    invoke-static {v0}, Lpv;->ㅼ꽑嫄(Lpv;)Loh;

    move-result-object v0

    iget-object v1, p0, Lqf;->癤욱븳援:Lpv;

    invoke-static {v1}, Lpv;->弱밧(Lpv;)Log;

    move-result-object v1

    iget-object v2, p0, Lqf;->癤욱븳援:Lpv;

    invoke-static {v2}, Lpv;->붿슧(Lpv;)Lqh;

    move-result-object v2

    invoke-virtual {v2}, Lqh;->궗()Lqg;

    move-result-object v2

    iget-object v2, v2, Lqg;->궗:Ljava/lang/String;

    iget-object v3, p0, Lqf;->癤욱븳援:Lpv;

    invoke-static {v3}, Lpv;->쇰뒗(Lpv;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Loh;->癤욱븳援(Log;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
