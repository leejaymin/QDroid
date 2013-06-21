.class public final Lcom/thinkyeah/smartlock/view/d;
.super Landroid/inputmethodservice/Keyboard;


# static fields
.field static a:I


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/inputmethodservice/Keyboard$Key;

.field private i:Landroid/inputmethodservice/Keyboard$Key;

.field private j:Landroid/inputmethodservice/Keyboard$Key;

.field private k:Landroid/inputmethodservice/Keyboard$Key;

.field private l:Landroid/content/res/Resources;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/thinkyeah/smartlock/view/d;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    iput v4, p0, Lcom/thinkyeah/smartlock/view/d;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->l:Landroid/content/res/Resources;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/thinkyeah/smartlock/view/d;->b:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/thinkyeah/smartlock/view/d;->c:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/thinkyeah/smartlock/view/d;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/d;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/d;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/thinkyeah/smartlock/view/d;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/thinkyeah/smartlock/view/d;->g:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/thinkyeah/smartlock/view/d;->a:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/d;->getShiftKeyIndex()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/view/d;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    instance-of v0, v0, Lcom/thinkyeah/smartlock/view/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    check-cast v0, Lcom/thinkyeah/smartlock/view/e;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->f:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method final a(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/d;->c:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    iput v0, p0, Lcom/thinkyeah/smartlock/view/d;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/d;->c:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/thinkyeah/smartlock/view/d;->m:I

    goto :goto_0
.end method

.method protected final createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/thinkyeah/smartlock/view/e;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/thinkyeah/smartlock/view/e;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    iget-object v1, v0, Lcom/thinkyeah/smartlock/view/e;->codes:[I

    aget v1, v1, v6

    if-ltz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    :cond_0
    const-string v1, " "

    iput-object v1, v0, Lcom/thinkyeah/smartlock/view/e;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/e;->a()V

    :cond_1
    iget-object v1, v0, Lcom/thinkyeah/smartlock/view/e;->codes:[I

    aget v1, v1, v6

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->i:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    :sswitch_1
    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->j:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    :sswitch_2
    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->k:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public final isShifted()Z
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/thinkyeah/smartlock/view/d;->m:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_0
.end method

.method public final setShifted(Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v2, :cond_3

    if-nez p1, :cond_1

    iget v2, p0, Lcom/thinkyeah/smartlock/view/d;->m:I

    if-eqz v2, :cond_0

    :goto_0
    iput v1, p0, Lcom/thinkyeah/smartlock/view/d;->m:I

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v1, v2, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/d;->e:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/thinkyeah/smartlock/view/d;->m:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/thinkyeah/smartlock/view/d;->m:I

    if-nez v2, :cond_2

    move v2, v0

    :goto_2
    iput v0, p0, Lcom/thinkyeah/smartlock/view/d;->m:I

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/d;->h:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/d;->b:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move v0, v2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method
