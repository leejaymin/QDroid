.class public Lcom/b2bstudio/digger/gamer;
.super Landroid/view/SurfaceView;
.source "gamer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b2bstudio/digger/gamer$loop;
    }
.end annotation


# instance fields
.field public ht:I

.field public mContext:Landroid/content/Context;

.field private thread:Lcom/b2bstudio/digger/gamer$loop;

.field public wt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    invoke-virtual {p0}, Lcom/b2bstudio/digger/gamer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 189
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 191
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/b2bstudio/digger/top;->highScore:Landroid/content/SharedPreferences;

    .line 192
    invoke-static {}, Lcom/b2bstudio/digger/top;->loadHigh()V

    .line 193
    invoke-virtual {p0, p0}, Lcom/b2bstudio/digger/gamer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    new-instance v1, Lcom/b2bstudio/digger/gamer$loop;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/b2bstudio/digger/gamer$loop;-><init>(Lcom/b2bstudio/digger/gamer;Landroid/view/SurfaceHolder;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    .line 195
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/gamer;->setFocusable(Z)V

    .line 196
    return-void
.end method


# virtual methods
.method public getThread()Lcom/b2bstudio/digger/gamer$loop;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v0, p1, p2}, Lcom/b2bstudio/digger/gamer$loop;->doKeyDown(ILandroid/view/KeyEvent;)Z

    .line 209
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v0, p1, p2}, Lcom/b2bstudio/digger/gamer$loop;->doKeyUp(ILandroid/view/KeyEvent;)Z

    .line 215
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v8, 0x13

    const/16 v4, 0x17

    const/16 v7, 0x56

    const/16 v6, 0x2b

    const/4 v5, 0x0

    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 249
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 250
    .local v2, y:I
    const/4 v0, 0x0

    .line 251
    .local v0, p:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 295
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 255
    :pswitch_0
    if-nez v0, :cond_1

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->wt:I

    sub-int/2addr v3, v7

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->wt:I

    sub-int/2addr v3, v6

    if-gt v1, v3, :cond_1

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->ht:I

    sub-int/2addr v3, v7

    if-lt v2, v3, :cond_1

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->ht:I

    sub-int/2addr v3, v6

    if-gt v2, v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyDown(ILandroid/view/KeyEvent;)Z

    .line 257
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyUp(ILandroid/view/KeyEvent;)Z

    .line 258
    const/4 v0, 0x1

    .line 261
    :cond_1
    iget v3, p0, Lcom/b2bstudio/digger/gamer;->wt:I

    sub-int/2addr v3, v7

    if-ge v1, v3, :cond_2

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->ht:I

    sub-int/2addr v3, v7

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->ht:I

    sub-int/2addr v3, v6

    if-ge v2, v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    const/16 v4, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyDown(ILandroid/view/KeyEvent;)Z

    .line 263
    const/4 v0, 0x1

    .line 266
    :cond_2
    if-nez v0, :cond_3

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->wt:I

    sub-int/2addr v3, v6

    if-le v1, v3, :cond_3

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->ht:I

    sub-int/2addr v3, v7

    if-le v2, v3, :cond_3

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->ht:I

    sub-int/2addr v3, v6

    if-ge v2, v3, :cond_3

    .line 267
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    const/16 v4, 0x16

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyDown(ILandroid/view/KeyEvent;)Z

    .line 268
    const/4 v0, 0x1

    .line 271
    :cond_3
    if-nez v0, :cond_4

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->ht:I

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_4

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->wt:I

    sub-int/2addr v3, v7

    if-le v1, v3, :cond_4

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->wt:I

    sub-int/2addr v3, v6

    if-ge v1, v3, :cond_4

    .line 272
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v3, v8, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyDown(ILandroid/view/KeyEvent;)Z

    .line 273
    const/4 v0, 0x2

    .line 276
    :cond_4
    if-nez v0, :cond_0

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->ht:I

    sub-int/2addr v3, v6

    if-le v2, v3, :cond_0

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->wt:I

    sub-int/2addr v3, v7

    if-le v1, v3, :cond_0

    iget v3, p0, Lcom/b2bstudio/digger/gamer;->wt:I

    sub-int/2addr v3, v6

    if-ge v1, v3, :cond_0

    .line 277
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyDown(ILandroid/view/KeyEvent;)Z

    .line 278
    const/4 v0, 0x3

    .line 281
    goto/16 :goto_0

    .line 286
    :pswitch_1
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyUp(ILandroid/view/KeyEvent;)Z

    .line 287
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    const/16 v4, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyUp(ILandroid/view/KeyEvent;)Z

    .line 288
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    const/16 v4, 0x16

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyUp(ILandroid/view/KeyEvent;)Z

    .line 289
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v3, v8, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyUp(ILandroid/view/KeyEvent;)Z

    .line 290
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/gamer$loop;->doKeyUp(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 220
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/gamer$loop;->pause()V

    .line 221
    :cond_0
    return-void
.end method

.method public removeThread()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/gamer$loop;->stop()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    .line 201
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v0, p3, p4}, Lcom/b2bstudio/digger/gamer$loop;->setSurfaceSize(II)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/gamer$loop;->setRunning(Z)V

    .line 231
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/gamer$loop;->start()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 235
    const/4 v0, 0x1

    .line 236
    .local v0, retry:Z
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/gamer$loop;->setRunning(Z)V

    .line 237
    :goto_0
    if-nez v0, :cond_0

    .line 244
    return-void

    .line 239
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer;->thread:Lcom/b2bstudio/digger/gamer$loop;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/gamer$loop;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    goto :goto_0
.end method
