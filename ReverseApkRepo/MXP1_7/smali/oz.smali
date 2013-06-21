.class Loz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Loy;


# direct methods
.method constructor <init>(Loy;)V
    .locals 0

    iput-object p1, p0, Loz;->癤욱븳援:Loy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Loz;->癤욱븳援:Loy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Loy;->癤욱븳援:Z

    const v0, 0x3e4ccccd

    int-to-float v1, p2

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Loz;->癤욱븳援:Loy;

    invoke-static {v1}, Loy;->癤욱븳援(Loy;)Loh;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Loz;->癤욱븳援:Loy;

    invoke-static {v1}, Loy;->癤욱븳援(Loy;)Loh;

    move-result-object v1

    iget-object v2, p0, Loz;->癤욱븳援:Loy;

    invoke-static {v2}, Loy;->궗(Loy;)Log;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Loh;->癤욱븳援(Log;F)V

    :cond_0
    iget-object v1, p0, Loz;->癤욱븳援:Loy;

    invoke-static {v1}, Loy;->먯꽌(Loy;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
