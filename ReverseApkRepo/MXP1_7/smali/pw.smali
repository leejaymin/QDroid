.class Lpw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lpv;


# direct methods
.method constructor <init>(Lpv;)V
    .locals 0

    iput-object p1, p0, Lpw;->癤욱븳援:Lpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lpw;->癤욱븳援:Lpv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpv;->癤욱븳援:Z

    iget-object v0, p0, Lpw;->癤욱븳援:Lpv;

    invoke-static {v0}, Lpv;->ㅼ꽑嫄(Lpv;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpw;->癤욱븳援:Lpv;

    invoke-static {v0}, Lpv;->ㅼ꽑嫄(Lpv;)Loh;

    move-result-object v0

    iget-object v1, p0, Lpw;->癤욱븳援:Lpv;

    invoke-static {v1}, Lpv;->弱밧(Lpv;)Log;

    move-result-object v1

    add-int/lit8 v2, p2, 0x10

    invoke-interface {v0, v1, v2}, Loh;->ㅼ꽑嫄(Log;I)V

    :cond_0
    iget-object v0, p0, Lpw;->癤욱븳援:Lpv;

    invoke-static {v0}, Lpv;->대쫫(Lpv;)Landroid/widget/TextView;

    move-result-object v0

    add-int/lit8 v1, p2, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
