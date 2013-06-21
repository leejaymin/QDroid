.class Lot;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Los;


# direct methods
.method constructor <init>(Los;)V
    .locals 0

    iput-object p1, p0, Lot;->癤욱븳援:Los;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lot;->癤욱븳援:Los;

    const/4 v1, 0x1

    iput-boolean v1, v0, Los;->癤욱븳援:Z

    iget-object v0, p0, Lot;->癤욱븳援:Los;

    invoke-static {v0}, Los;->癤욱븳援(Los;)Landroid/widget/TextView;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

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
