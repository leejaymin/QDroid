.class Lqe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lpv;


# direct methods
.method constructor <init>(Lpv;)V
    .locals 0

    iput-object p1, p0, Lqe;->癤욱븳援:Lpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lqe;->癤욱븳援:Lpv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpv;->癤욱븳援:Z

    const v0, 0x3d4ccccd

    int-to-float v1, p2

    const v2, 0x3c23d70a

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lqe;->癤욱븳援:Lpv;

    invoke-static {v1}, Lpv;->뚮Ц(Lpv;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    const v3, 0x3dcccccd

    div-float/2addr v0, v3

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

    iget-object v0, p0, Lqe;->癤욱븳援:Lpv;

    invoke-static {v0}, Lpv;->몃Ъ(Lpv;)V

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
