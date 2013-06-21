.class Lok;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic 癤욱븳援:Loj;


# direct methods
.method constructor <init>(Loj;)V
    .locals 0

    iput-object p1, p0, Lok;->癤욱븳援:Loj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lok;->癤욱븳援:Loj;

    invoke-static {v0}, Loj;->궗(Loj;)[I

    move-result-object v0

    aget v0, v0, p3

    iget-object v1, p0, Lok;->癤욱븳援:Loj;

    iget-boolean v1, v1, Loj;->癤욱븳援:Z

    if-nez v1, :cond_1

    sget v1, Lms;->寃껋씠:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lok;->癤욱븳援:Loj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Loj;->癤욱븳援:Z

    iget-object v0, p0, Lok;->癤욱븳援:Loj;

    invoke-static {v0}, Loj;->먯꽌(Loj;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lok;->癤욱븳援:Loj;

    invoke-static {v0}, Loj;->먯꽌(Loj;)Loh;

    move-result-object v0

    iget-object v1, p0, Lok;->癤욱븳援:Loj;

    invoke-static {v1}, Loj;->ㅼ꽑嫄(Loj;)Log;

    move-result-object v1

    iget-object v2, p0, Lok;->癤욱븳援:Loj;

    invoke-static {v2}, Loj;->궗(Loj;)[I

    move-result-object v2

    aget v2, v2, p3

    invoke-interface {v0, v1, v2}, Loh;->먯꽌(Log;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
