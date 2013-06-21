.class public Lexam/Widget/SeekBarTest;
.super Landroid/app/Activity;
.source "SeekBarTest.java"


# instance fields
.field mSeekBar:Landroid/widget/SeekBar;

.field mVolume:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f030081

    invoke-virtual {p0, v0}, Lexam/Widget/SeekBarTest;->setContentView(I)V

    .line 15
    const v0, 0x7f0c0098

    invoke-virtual {p0, v0}, Lexam/Widget/SeekBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lexam/Widget/SeekBarTest;->mSeekBar:Landroid/widget/SeekBar;

    .line 16
    const v0, 0x7f0c0099

    invoke-virtual {p0, v0}, Lexam/Widget/SeekBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lexam/Widget/SeekBarTest;->mVolume:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lexam/Widget/SeekBarTest;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lexam/Widget/SeekBarTest$1;

    invoke-direct {v1, p0}, Lexam/Widget/SeekBarTest$1;-><init>(Lexam/Widget/SeekBarTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 30
    return-void
.end method
