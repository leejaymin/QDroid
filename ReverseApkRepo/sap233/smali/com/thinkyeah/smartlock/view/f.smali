.class public final Lcom/thinkyeah/smartlock/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/thinkyeah/smartlock/view/d;

.field private d:Lcom/thinkyeah/smartlock/view/d;

.field private e:Lcom/thinkyeah/smartlock/view/d;

.field private f:Lcom/thinkyeah/smartlock/view/d;

.field private g:Lcom/thinkyeah/smartlock/view/d;

.field private h:Landroid/content/Context;

.field private i:Landroid/view/View;

.field private j:Landroid/inputmethodservice/KeyboardView;

.field private k:[J

.field private l:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 5

    const v4, 0x7f0b005f

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/thinkyeah/smartlock/view/f;->a:I

    iput v0, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    iput-object p1, p0, Lcom/thinkyeah/smartlock/view/f;->h:Landroid/content/Context;

    iput-object p3, p0, Lcom/thinkyeah/smartlock/view/f;->i:Landroid/view/View;

    iput-object p2, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    new-instance v0, Lcom/thinkyeah/smartlock/view/d;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/f;->h:Landroid/content/Context;

    const/high16 v2, 0x7f05

    invoke-direct {v0, v1, v2}, Lcom/thinkyeah/smartlock/view/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->g:Lcom/thinkyeah/smartlock/view/d;

    new-instance v0, Lcom/thinkyeah/smartlock/view/d;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/f;->h:Landroid/content/Context;

    const v2, 0x7f050002

    invoke-direct {v0, v1, v2, v4}, Lcom/thinkyeah/smartlock/view/d;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->c:Lcom/thinkyeah/smartlock/view/d;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->c:Lcom/thinkyeah/smartlock/view/d;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/d;->a()V

    new-instance v0, Lcom/thinkyeah/smartlock/view/d;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/f;->h:Landroid/content/Context;

    const v2, 0x7f050003

    invoke-direct {v0, v1, v2, v4}, Lcom/thinkyeah/smartlock/view/d;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->d:Lcom/thinkyeah/smartlock/view/d;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->d:Lcom/thinkyeah/smartlock/view/d;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/d;->a()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->d:Lcom/thinkyeah/smartlock/view/d;

    invoke-virtual {v0, v3}, Lcom/thinkyeah/smartlock/view/d;->setShifted(Z)Z

    new-instance v0, Lcom/thinkyeah/smartlock/view/d;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/f;->h:Landroid/content/Context;

    const v2, 0x7f050004

    invoke-direct {v0, v1, v2}, Lcom/thinkyeah/smartlock/view/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->e:Lcom/thinkyeah/smartlock/view/d;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->e:Lcom/thinkyeah/smartlock/view/d;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/d;->a()V

    new-instance v0, Lcom/thinkyeah/smartlock/view/d;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/f;->h:Landroid/content/Context;

    const v2, 0x7f050005

    invoke-direct {v0, v1, v2}, Lcom/thinkyeah/smartlock/view/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->f:Lcom/thinkyeah/smartlock/view/d;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->f:Lcom/thinkyeah/smartlock/view/d;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/d;->a()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->f:Lcom/thinkyeah/smartlock/view/d;

    invoke-virtual {v0, v3}, Lcom/thinkyeah/smartlock/view/d;->setShifted(Z)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->l:Landroid/os/Vibrator;

    return-void
.end method

.method private a()V
    .locals 7

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->c:Lcom/thinkyeah/smartlock/view/d;

    if-eq v5, v0, :cond_4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->d:Lcom/thinkyeah/smartlock/view/d;

    if-eq v5, v0, :cond_4

    move v0, v1

    :goto_1
    iget v6, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    if-nez v6, :cond_7

    if-eqz v0, :cond_5

    move v3, v2

    :goto_2
    iput v3, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->d:Lcom/thinkyeah/smartlock/view/d;

    :goto_3
    move-object v3, v0

    :cond_2
    :goto_4
    if-eqz v3, :cond_0

    if-eq v3, v5, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    :cond_3
    iget v0, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    if-ne v0, v4, :cond_b

    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Lcom/thinkyeah/smartlock/view/d;->a(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    iget v3, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    if-eqz v3, :cond_c

    :goto_6
    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->f:Lcom/thinkyeah/smartlock/view/d;

    goto :goto_3

    :cond_7
    iget v6, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    if-ne v6, v2, :cond_9

    iput v4, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->d:Lcom/thinkyeah/smartlock/view/d;

    :goto_7
    move-object v3, v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->f:Lcom/thinkyeah/smartlock/view/d;

    goto :goto_7

    :cond_9
    iget v6, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    if-ne v6, v4, :cond_2

    iput v1, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->c:Lcom/thinkyeah/smartlock/view/d;

    :goto_8
    move-object v3, v0

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->e:Lcom/thinkyeah/smartlock/view/d;

    goto :goto_8

    :cond_b
    move v0, v1

    goto :goto_5

    :cond_c
    move v2, v1

    goto :goto_6
.end method

.method private c(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [C

    const/4 v4, 0x0

    int-to-char v5, p1

    aput-char v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [C

    const/4 v4, 0x0

    int-to-char v5, p1

    aput-char v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    array-length v3, v1

    move v0, v2

    :goto_1
    if-lt v0, v3, :cond_2

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x4

    invoke-static {v2, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    iget-object v4, p0, Lcom/thinkyeah/smartlock/view/f;->i:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/thinkyeah/smartlock/view/f;->a:I

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    iget-object v3, p0, Lcom/thinkyeah/smartlock/view/f;->c:Lcom/thinkyeah/smartlock/view/d;

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iput v1, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/f;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/f;->g:Lcom/thinkyeah/smartlock/view/d;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iput v1, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(I)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    iput-object v2, p0, Lcom/thinkyeah/smartlock/view/f;->k:[J

    :cond_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    const-string v1, "PasswordEntryKeyboardHelper"

    const-string v3, "Vibrate pattern missing"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    array-length v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->k:[J

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/f;->k:[J

    aget v3, v1, v0

    int-to-long v3, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final onKey(I[I)V
    .locals 13

    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v12, p0, Lcom/thinkyeah/smartlock/view/f;->i:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v12, p0, Lcom/thinkyeah/smartlock/view/f;->i:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/view/f;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/f;->c:Lcom/thinkyeah/smartlock/view/d;

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/f;->d:Lcom/thinkyeah/smartlock/view/d;

    if-ne v1, v2, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->e:Lcom/thinkyeah/smartlock/view/d;

    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/f;->e:Lcom/thinkyeah/smartlock/view/d;

    if-eq v1, v2, :cond_6

    iget-object v2, p0, Lcom/thinkyeah/smartlock/view/f;->f:Lcom/thinkyeah/smartlock/view/d;

    if-ne v1, v2, :cond_4

    :cond_6
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->c:Lcom/thinkyeah/smartlock/view/d;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->j:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x20

    if-eq p1, v0, :cond_8

    const/16 v0, 0xa

    if-eq p1, v0, :cond_8

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/view/f;->c(I)V

    iget v0, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/thinkyeah/smartlock/view/f;->b:I

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/view/f;->a()V

    goto :goto_0
.end method

.method public final onPress(I)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->k:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/f;->l:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/view/f;->k:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    return-void
.end method

.method public final onRelease(I)V
    .locals 0

    return-void
.end method

.method public final onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final swipeDown()V
    .locals 0

    return-void
.end method

.method public final swipeLeft()V
    .locals 0

    return-void
.end method

.method public final swipeRight()V
    .locals 0

    return-void
.end method

.method public final swipeUp()V
    .locals 0

    return-void
.end method
