.class public Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;
.super Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;


# instance fields
.field private 洹:Ltb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setOnSeekBarChangeListener(Ltb;)V
    .locals 0

    iput-object p1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->洹:Ltb;

    return-void
.end method

.method 癤욱븳援()V
    .locals 1

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->洹:Ltb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->洹:Ltb;

    invoke-interface {v0, p0}, Ltb;->癤욱븳援(Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;)V

    :cond_0
    return-void
.end method

.method 癤욱븳援(FZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(FZ)V

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->洹:Ltb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->洹:Ltb;

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Ltb;->癤욱븳援(Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;IZ)V

    :cond_0
    return-void
.end method

.method 궗()V
    .locals 1

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->洹:Ltb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->洹:Ltb;

    invoke-interface {v0, p0}, Ltb;->궗(Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;)V

    :cond_0
    return-void
.end method
