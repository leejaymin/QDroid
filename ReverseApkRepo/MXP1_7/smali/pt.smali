.class Lpt;
.super Ljava/lang/Object;

# interfaces
.implements Lc;


# instance fields
.field final synthetic 癤욱븳援:Lps;


# direct methods
.method constructor <init>(Lps;)V
    .locals 0

    iput-object p1, p0, Lpt;->癤욱븳援:Lps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lpt;->癤욱븳援:Lps;

    invoke-static {v0}, Lps;->癤욱븳援(Lps;)Lpo;

    move-result-object v0

    iput-boolean v1, v0, Lpo;->癤욱븳援:Z

    iget-object v0, p0, Lpt;->癤욱븳援:Lps;

    invoke-static {v0}, Lps;->癤욱븳援(Lps;)Lpo;

    move-result-object v0

    invoke-static {v0}, Lpo;->쇰뒗(Lpo;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpt;->癤욱븳援:Lps;

    invoke-static {v0}, Lps;->癤욱븳援(Lps;)Lpo;

    move-result-object v0

    invoke-static {v0}, Lpo;->ㅼ꽑嫄(Lpo;)Lafzkl/development/mColorPicker/views/ColorPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    iget-object v0, p0, Lpt;->癤욱븳援:Lps;

    invoke-static {v0}, Lps;->癤욱븳援(Lps;)Lpo;

    move-result-object v0

    invoke-static {v0}, Lpo;->癤욱븳援(Lpo;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpt;->癤욱븳援:Lps;

    invoke-static {v0}, Lps;->癤욱븳援(Lps;)Lpo;

    move-result-object v0

    invoke-static {v0}, Lpo;->癤욱븳援(Lpo;)Loh;

    move-result-object v0

    iget-object v1, p0, Lpt;->癤욱븳援:Lps;

    invoke-static {v1}, Lps;->癤욱븳援(Lps;)Lpo;

    move-result-object v1

    invoke-static {v1}, Lpo;->궗(Lpo;)Log;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Loh;->쇰뒗(Log;I)V

    :cond_0
    return-void
.end method
