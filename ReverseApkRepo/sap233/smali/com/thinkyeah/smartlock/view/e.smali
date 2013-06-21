.class final Lcom/thinkyeah/smartlock/view/e;
.super Landroid/inputmethodservice/Keyboard$Key;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/e;->b:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/e;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/e;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/thinkyeah/smartlock/view/e;->popupResId:I

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/e;->b:Z

    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/e;->a:Z

    return-void
.end method

.method public final isInside(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x5

    iget-boolean v1, p0, Lcom/thinkyeah/smartlock/view/e;->b:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/e;->codes:[I

    aget v0, v1, v0

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_4

    :cond_1
    iget v1, p0, Lcom/thinkyeah/smartlock/view/e;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    if-ne v0, v3, :cond_2

    iget v1, p0, Lcom/thinkyeah/smartlock/view/e;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    :cond_2
    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/thinkyeah/smartlock/view/e;->width:I

    div-int/lit8 v0, v0, 0x6

    sub-int/2addr p1, v0

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    sget v0, Lcom/thinkyeah/smartlock/view/d;->a:I

    add-int/2addr p2, v0

    goto :goto_1
.end method

.method public final onReleased(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/e;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/e;->pressed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/view/e;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
