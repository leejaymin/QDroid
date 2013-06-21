.class Lpr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lpo;


# direct methods
.method constructor <init>(Lpo;)V
    .locals 0

    iput-object p1, p0, Lpr;->癤욱븳援:Lpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lpr;->癤욱븳援:Lpo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpo;->癤욱븳援:Z

    iget-object v0, p0, Lpr;->癤욱븳援:Lpo;

    invoke-static {v0}, Lpo;->癤욱븳援(Lpo;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpr;->癤욱븳援:Lpo;

    invoke-static {v0}, Lpo;->癤욱븳援(Lpo;)Loh;

    move-result-object v1

    iget-object v0, p0, Lpr;->癤욱븳援:Lpo;

    invoke-static {v0}, Lpo;->궗(Lpo;)Log;

    move-result-object v2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lpr;->癤욱븳援:Lpo;

    invoke-static {v0}, Lpo;->ㅼ꽑嫄(Lpo;)Lafzkl/development/mColorPicker/views/ColorPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getColor()I

    move-result v0

    :goto_0
    invoke-interface {v1, v2, v0}, Loh;->쇰뒗(Log;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
