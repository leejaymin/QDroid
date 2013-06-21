.class Lpg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic 癤욱븳援:Lpb;


# direct methods
.method constructor <init>(Lpb;)V
    .locals 0

    iput-object p1, p0, Lpg;->癤욱븳援:Lpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lpg;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->ㅼ꽑嫄(Lpb;)[I

    move-result-object v0

    aget v0, v0, p3

    iget-object v1, p0, Lpg;->癤욱븳援:Lpb;

    iget-boolean v1, v1, Lpb;->癤욱븳援:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lpg;->癤욱븳援:Lpb;

    invoke-static {v1}, Lpb;->弱밧(Lpb;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lpg;->癤욱븳援:Lpb;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lpb;->癤욱븳援:Z

    iget-object v1, p0, Lpg;->癤욱븳援:Lpb;

    invoke-static {v1}, Lpb;->궗(Lpb;)Loh;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpg;->癤욱븳援:Lpb;

    invoke-static {v1}, Lpb;->궗(Lpb;)Loh;

    move-result-object v1

    iget-object v2, p0, Lpg;->癤욱븳援:Lpb;

    invoke-static {v2}, Lpb;->먯꽌(Lpb;)Log;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Loh;->궗(Log;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
