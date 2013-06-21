.class Loq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Loj;


# direct methods
.method constructor <init>(Loj;)V
    .locals 0

    iput-object p1, p0, Loq;->癤욱븳援:Loj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Loq;->癤욱븳援:Loj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Loj;->癤욱븳援:Z

    iget-object v0, p0, Loq;->癤욱븳援:Loj;

    invoke-static {v0}, Loj;->쇰뒗(Loj;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Loq;->癤욱븳援:Loj;

    mul-int/lit16 v2, p2, 0x1f4

    add-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Loj;->癤욱븳援(Loj;I)Ljava/lang/String;

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
