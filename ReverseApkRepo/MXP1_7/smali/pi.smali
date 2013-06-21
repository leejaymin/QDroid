.class Lpi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lpb;


# direct methods
.method constructor <init>(Lpb;)V
    .locals 0

    iput-object p1, p0, Lpi;->癤욱븳援:Lpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lpi;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->洹(Lpb;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lpi;->癤욱븳援:Lpb;

    iput-boolean v2, v0, Lpb;->癤욱븳援:Z

    iget-object v0, p0, Lpi;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->몃Ъ(Lpb;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpi;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->궗(Lpb;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpi;->癤욱븳援:Lpb;

    invoke-static {v0}, Lpb;->궗(Lpb;)Loh;

    move-result-object v0

    iget-object v1, p0, Lpi;->癤욱븳援:Lpb;

    invoke-static {v1}, Lpb;->먯꽌(Lpb;)Log;

    move-result-object v1

    iget-object v2, p0, Lpi;->癤욱븳援:Lpb;

    invoke-static {v2}, Lpb;->쇰뒗(Lpb;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Loh;->궗(Log;F)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
