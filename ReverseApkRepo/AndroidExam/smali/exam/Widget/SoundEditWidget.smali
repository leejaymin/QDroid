.class Lexam/Widget/SoundEditWidget;
.super Landroid/widget/EditText;
.source "SoundEdit.java"


# instance fields
.field mClick:I

.field mPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lexam/Widget/SoundEditWidget;->mPool:Landroid/media/SoundPool;

    .line 25
    invoke-virtual {p0, p1}, Lexam/Widget/SoundEditWidget;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lexam/Widget/SoundEditWidget;->mPool:Landroid/media/SoundPool;

    .line 30
    invoke-virtual {p0, p1}, Lexam/Widget/SoundEditWidget;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lexam/Widget/SoundEditWidget;->mPool:Landroid/media/SoundPool;

    .line 35
    invoke-virtual {p0, p1}, Lexam/Widget/SoundEditWidget;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 39
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lexam/Widget/SoundEditWidget;->mPool:Landroid/media/SoundPool;

    .line 40
    iget-object v0, p0, Lexam/Widget/SoundEditWidget;->mPool:Landroid/media/SoundPool;

    const/high16 v1, 0x7f05

    invoke-virtual {v0, p1, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lexam/Widget/SoundEditWidget;->mClick:I

    .line 41
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

    const/high16 v2, 0x3f80

    .line 44
    iget-object v0, p0, Lexam/Widget/SoundEditWidget;->mPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lexam/Widget/SoundEditWidget;->mPool:Landroid/media/SoundPool;

    iget v1, p0, Lexam/Widget/SoundEditWidget;->mClick:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 47
    :cond_0
    return-void
.end method
