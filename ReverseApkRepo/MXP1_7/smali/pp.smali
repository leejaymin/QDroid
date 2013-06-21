.class Lpp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic 癤욱븳援:Lpo;


# direct methods
.method constructor <init>(Lpo;)V
    .locals 0

    iput-object p1, p0, Lpp;->癤욱븳援:Lpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lpp;->癤욱븳援:Lpo;

    invoke-static {v0, p3}, Lpo;->癤욱븳援(Lpo;I)I

    move-result v0

    iget-object v1, p0, Lpp;->癤욱븳援:Lpo;

    iget-boolean v1, v1, Lpo;->癤욱븳援:Z

    if-nez v1, :cond_1

    sget v1, Lms;->몃Ъ:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lpp;->癤욱븳援:Lpo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lpo;->癤욱븳援:Z

    iget-object v1, p0, Lpp;->癤욱븳援:Lpo;

    invoke-static {v1}, Lpo;->癤욱븳援(Lpo;)Loh;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpp;->癤욱븳援:Lpo;

    invoke-static {v1}, Lpo;->癤욱븳援(Lpo;)Loh;

    move-result-object v1

    iget-object v2, p0, Lpp;->癤욱븳援:Lpo;

    invoke-static {v2}, Lpo;->궗(Lpo;)Log;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Loh;->洹(Log;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
