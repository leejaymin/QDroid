.class Lox;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Los;


# direct methods
.method constructor <init>(Los;)V
    .locals 0

    iput-object p1, p0, Lox;->癤욱븳援:Los;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lox;->癤욱븳援:Los;

    invoke-static {v0, p2}, Los;->癤욱븳援(Los;I)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lox;->癤욱븳援:Los;

    const/4 v1, 0x1

    iput-boolean v1, v0, Los;->癤욱븳援:Z

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
