.class Lexam/Widget/SoundEditWidget2;
.super Landroid/widget/EditText;
.source "SoundEdit2.java"


# instance fields
.field mClick1:I

.field mClick2:I

.field mPool:Landroid/media/SoundPool;

.field mSound:I

.field mSpeed:F

.field mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v1, p0, Lexam/Widget/SoundEditWidget2;->mPool:Landroid/media/SoundPool;

    .line 23
    iput v0, p0, Lexam/Widget/SoundEditWidget2;->mVolume:F

    .line 24
    iput v0, p0, Lexam/Widget/SoundEditWidget2;->mSpeed:F

    .line 28
    invoke-virtual {p0, p1, v1}, Lexam/Widget/SoundEditWidget2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v1, 0x3f80

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lexam/Widget/SoundEditWidget2;->mPool:Landroid/media/SoundPool;

    .line 23
    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mVolume:F

    .line 24
    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mSpeed:F

    .line 33
    invoke-virtual {p0, p1, p2}, Lexam/Widget/SoundEditWidget2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, 0x3f80

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lexam/Widget/SoundEditWidget2;->mPool:Landroid/media/SoundPool;

    .line 23
    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mVolume:F

    .line 24
    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mSpeed:F

    .line 38
    invoke-virtual {p0, p1, p2}, Lexam/Widget/SoundEditWidget2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x1

    .line 42
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lexam/Widget/SoundEditWidget2;->mPool:Landroid/media/SoundPool;

    .line 43
    iget-object v1, p0, Lexam/Widget/SoundEditWidget2;->mPool:Landroid/media/SoundPool;

    const/high16 v2, 0x7f05

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mClick1:I

    .line 44
    iget-object v1, p0, Lexam/Widget/SoundEditWidget2;->mPool:Landroid/media/SoundPool;

    const v2, 0x7f050001

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mClick2:I

    .line 45
    iget v1, p0, Lexam/Widget/SoundEditWidget2;->mClick1:I

    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mSound:I

    .line 47
    if-eqz p2, :cond_0

    .line 48
    sget-object v1, Lexam/AndroidExam/R$styleable;->SoundEditWidget2:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mVolume:F

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mSpeed:F

    .line 51
    iget v1, p0, Lexam/Widget/SoundEditWidget2;->mClick1:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lexam/Widget/SoundEditWidget2;->mSound:I

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .end local v0           #ar:Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v0, p0, Lexam/Widget/SoundEditWidget2;->mPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lexam/Widget/SoundEditWidget2;->mPool:Landroid/media/SoundPool;

    iget v1, p0, Lexam/Widget/SoundEditWidget2;->mSound:I

    iget v2, p0, Lexam/Widget/SoundEditWidget2;->mVolume:F

    iget v3, p0, Lexam/Widget/SoundEditWidget2;->mVolume:F

    iget v6, p0, Lexam/Widget/SoundEditWidget2;->mSpeed:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 60
    :cond_0
    return-void
.end method
