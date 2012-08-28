.class public abstract Lcom/jcraft/jcterm/Emulator;
.super Ljava/lang/Object;
.source "Emulator.java"


# instance fields
.field private b1:[B

.field private b2:[B

.field buf:[B

.field buflen:I

.field bufs:I

.field protected char_height:I

.field protected char_width:I

.field in:Ljava/io/InputStream;

.field private region_y1:I

.field private region_y2:I

.field protected tab:I

.field term:Lcom/jcraft/jcterm/Term;

.field protected term_height:I

.field protected term_width:I

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>(Lcom/jcraft/jcterm/Term;Ljava/io/InputStream;)V
    .locals 2
    .parameter "term"
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    .line 30
    iput-object v0, p0, Lcom/jcraft/jcterm/Emulator;->in:Ljava/io/InputStream;

    .line 80
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jcterm/Emulator;->buf:[B

    .line 81
    iput v1, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    .line 82
    iput v1, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    .line 141
    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    .line 142
    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->term_height:I

    .line 144
    iput v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 145
    iput v1, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    .line 153
    const/16 v0, 0x8

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->tab:I

    .line 342
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jcterm/Emulator;->b2:[B

    .line 343
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jcterm/Emulator;->b1:[B

    .line 33
    iput-object p1, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    .line 34
    iput-object p2, p0, Lcom/jcraft/jcterm/Emulator;->in:Ljava/io/InputStream;

    .line 35
    return-void
.end method

.method private check_region()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 396
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 398
    iput v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 399
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    .line 403
    :cond_0
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v2, v3

    if-le v0, v2, :cond_1

    .line 404
    :goto_0
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    .line 407
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 408
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    .line 409
    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    neg-int v6, v5

    move v5, v1

    .line 408
    invoke-interface/range {v0 .. v6}, Lcom/jcraft/jcterm/Term;->scroll_area(IIIIII)V

    .line 410
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jcterm/Term;->clear_area(IIII)V

    .line 411
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v3, v4

    invoke-interface {v0, v1, v1, v2, v3}, Lcom/jcraft/jcterm/Term;->redraw(IIII)V

    .line 412
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 413
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 415
    :cond_1
    return-void

    .line 405
    :cond_2
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    goto :goto_0
.end method


# virtual methods
.method protected bell()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->beep()V

    .line 302
    return-void
.end method

.method protected carriage_return()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 318
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 319
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 320
    return-void
.end method

.method protected change_scroll_region(II)V
    .locals 0
    .parameter "y1"
    .parameter "y2"

    .prologue
    .line 234
    iput p1, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    .line 235
    iput p2, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    .line 236
    return-void
.end method

.method protected clr_bol()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 276
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 277
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/jcraft/jcterm/Term;->clear_area(IIII)V

    .line 278
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/jcraft/jcterm/Term;->redraw(IIII)V

    .line 279
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 280
    return-void
.end method

.method protected clr_eol()V
    .locals 5

    .prologue
    .line 269
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 270
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jcterm/Term;->clear_area(IIII)V

    .line 271
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jcterm/Term;->redraw(IIII)V

    .line 272
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 273
    return-void
.end method

.method protected clr_eos()V
    .locals 6

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 284
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->term_height:I

    .line 285
    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v4, v5

    .line 284
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jcterm/Term;->clear_area(IIII)V

    .line 286
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->term_height:I

    .line 287
    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    add-int/2addr v4, v5

    .line 286
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jcterm/Term;->redraw(IIII)V

    .line 288
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 289
    return-void
.end method

.method protected cursor_address(II)V
    .locals 3
    .parameter "r"
    .parameter "c"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 240
    const/4 v0, 0x1

    sub-int v0, p2, v0

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 241
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    .line 243
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 244
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 245
    return-void
.end method

.method protected cursor_down()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 335
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    .line 336
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 337
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 339
    invoke-direct {p0}, Lcom/jcraft/jcterm/Emulator;->check_region()V

    .line 340
    return-void
.end method

.method protected cursor_left()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 324
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 325
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    if-gez v0, :cond_0

    .line 326
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    .line 327
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 330
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 331
    return-void
.end method

.method protected draw_text()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-direct {p0}, Lcom/jcraft/jcterm/Emulator;->check_region()V

    .line 354
    iget v8, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 355
    .local v8, rx:I
    iget v9, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    .line 357
    .local v9, ry:I
    invoke-virtual {p0}, Lcom/jcraft/jcterm/Emulator;->getChar()B

    move-result v6

    .line 358
    .local v6, b:B
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 360
    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v11, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v5, v11

    iget v11, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v4, v5, v11}, Lcom/jcraft/jcterm/Term;->clear_area(IIII)V

    .line 362
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->b2:[B

    aput-byte v6, v0, v2

    .line 363
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->b2:[B

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jcterm/Emulator;->getChar()B

    move-result v4

    aput-byte v4, v0, v1

    .line 364
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/jcraft/jcterm/Emulator;->b2:[B

    const/4 v5, 0x2

    const-string v11, "EUC-JP"

    invoke-direct {v1, v4, v2, v5, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2, v4}, Lcom/jcraft/jcterm/Term;->drawString(Ljava/lang/String;II)V

    .line 365
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 366
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 367
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/lit8 v10, v0, 0x2

    .line 368
    .local v10, w:I
    iget v7, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    .line 390
    .local v7, h:I
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int v1, v9, v1

    invoke-interface {v0, v8, v1, v10, v7}, Lcom/jcraft/jcterm/Term;->redraw(IIII)V

    .line 391
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 392
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 393
    return-void

    .line 371
    .end local v10           #w:I
    .end local v7           #h:I
    :cond_0
    invoke-virtual {p0, v6}, Lcom/jcraft/jcterm/Emulator;->pushChar(B)V

    .line 372
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    div-int/2addr v1, v4

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jcterm/Emulator;->getASCII(I)I

    move-result v3

    .line 373
    .local v3, foo:I
    if-eqz v3, :cond_1

    .line 376
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/jcraft/jcterm/Term;->clear_area(IIII)V

    .line 377
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget-object v1, p0, Lcom/jcraft/jcterm/Emulator;->buf:[B

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jcterm/Term;->drawBytes([BIIII)V

    .line 386
    :goto_1
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 387
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int v10, v0, v3

    .line 388
    .restart local v10       #w:I
    iget v7, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    .restart local v7       #h:I
    goto :goto_0

    .line 380
    .end local v10           #w:I
    .end local v7           #h:I
    :cond_1
    const/4 v3, 0x1

    .line 381
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v11, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v11, v3

    add-int/2addr v5, v11

    iget v11, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v4, v5, v11}, Lcom/jcraft/jcterm/Term;->clear_area(IIII)V

    .line 382
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->b1:[B

    invoke-virtual {p0}, Lcom/jcraft/jcterm/Emulator;->getChar()B

    move-result v1

    aput-byte v1, v0, v2

    .line 383
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget-object v1, p0, Lcom/jcraft/jcterm/Emulator;->b1:[B

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jcterm/Term;->drawBytes([BIIII)V

    goto :goto_1
.end method

.method protected ena_acs()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method protected enter_alt_charset_mode()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method protected enter_bold_mode()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->setBold()V

    .line 223
    return-void
.end method

.method protected enter_reverse_mode()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->setReverse()V

    .line 231
    return-void
.end method

.method protected enter_underline_mode()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->setUnderline()V

    .line 227
    return-void
.end method

.method protected exit_alt_charset_mode()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method protected exit_attribute_mode()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->resetAllAttributes()V

    .line 211
    return-void
.end method

.method protected exit_standout_mode()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->resetAllAttributes()V

    .line 215
    return-void
.end method

.method protected exit_underline_mode()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method fillBuf()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 96
    iput v5, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    iput v5, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    .line 97
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/jcraft/jcterm/Emulator;->buf:[B

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    iget-object v3, p0, Lcom/jcraft/jcterm/Emulator;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    .line 106
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    if-gtz v0, :cond_0

    .line 107
    iput v5, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "fillBuf"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method getASCII(I)I
    .locals 6
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 120
    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/jcraft/jcterm/Emulator;->fillBuf()V

    .line 123
    :cond_0
    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    if-le p1, v2, :cond_1

    .line 124
    iget p1, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    .line 125
    :cond_1
    move v0, p1

    .line 127
    .local v0, foo:I
    :goto_0
    if-gtz p1, :cond_2

    .line 138
    :goto_1
    sub-int v2, v0, p1

    return v2

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jcterm/Emulator;->buf:[B

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    aget-byte v1, v2, v3

    .line 129
    .local v1, tmp:B
    const/16 v2, 0x20

    if-gt v2, v1, :cond_3

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_3

    .line 130
    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    .line 131
    add-int/lit8 p1, p1, -0x1

    .line 132
    goto :goto_0

    .line 134
    :cond_3
    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    goto :goto_1
.end method

.method getChar()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/jcraft/jcterm/Emulator;->fillBuf()V

    .line 88
    :cond_0
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    .line 92
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->buf:[B

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public abstract getCodeDOWN()[B
.end method

.method public abstract getCodeENTER()[B
.end method

.method public abstract getCodeF1()[B
.end method

.method public abstract getCodeF10()[B
.end method

.method public abstract getCodeF2()[B
.end method

.method public abstract getCodeF3()[B
.end method

.method public abstract getCodeF4()[B
.end method

.method public abstract getCodeF5()[B
.end method

.method public abstract getCodeF6()[B
.end method

.method public abstract getCodeF7()[B
.end method

.method public abstract getCodeF8()[B
.end method

.method public abstract getCodeF9()[B
.end method

.method public abstract getCodeLEFT()[B
.end method

.method public abstract getCodeRIGHT()[B
.end method

.method public abstract getCodeTAB()[B
.end method

.method public abstract getCodeUP()[B
.end method

.method protected parm_down_cursor(I)V
    .locals 3
    .parameter "lines"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 249
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    .line 250
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 251
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 252
    return-void
.end method

.method protected parm_left_cursor(I)V
    .locals 3
    .parameter "chars"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 256
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 257
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 258
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 259
    return-void
.end method

.method protected parm_right_cursor(I)V
    .locals 3
    .parameter "chars"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 263
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 264
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 265
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 266
    return-void
.end method

.method protected parm_up_cursor(I)V
    .locals 3
    .parameter "lines"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 295
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    .line 296
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 297
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 298
    return-void
.end method

.method pushChar(B)V
    .locals 3
    .parameter "foo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->buflen:I

    .line 115
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->buf:[B

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jcterm/Emulator;->bufs:I

    aput-byte p1, v0, v1

    .line 116
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    .line 73
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->getRowCount()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->term_height:I

    .line 74
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->getCharWidth()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    .line 75
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->getCharHeight()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    .line 77
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->term_height:I

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    .line 78
    return-void
.end method

.method protected reset_2string()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method protected save_cursor()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method protected scroll_forward()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 170
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    sub-int/2addr v2, v7

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    .line 171
    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    neg-int v6, v5

    move v5, v1

    .line 170
    invoke-interface/range {v0 .. v6}, Lcom/jcraft/jcterm/Term;->scroll_area(IIIIII)V

    .line 172
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v2, v3

    .line 173
    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v4, v5

    .line 172
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jcterm/Term;->clear_area(IIII)V

    .line 174
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    sub-int/2addr v2, v7

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    .line 175
    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 176
    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v4, v5

    .line 174
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jcterm/Term;->redraw(IIII)V

    .line 177
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 178
    return-void
.end method

.method protected scroll_reverse()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 158
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v3, v4

    .line 159
    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->region_y2:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->region_y1:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v4, v5

    iget v6, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    move v5, v1

    .line 158
    invoke-interface/range {v0 .. v6}, Lcom/jcraft/jcterm/Term;->scroll_area(IIIIII)V

    .line 160
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/jcraft/jcterm/Term;->clear_area(IIII)V

    .line 161
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/jcraft/jcterm/Emulator;->term_height:I

    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    mul-int/2addr v3, v4

    .line 162
    iget v4, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    sub-int/2addr v3, v4

    .line 161
    invoke-interface {v0, v1, v1, v2, v3}, Lcom/jcraft/jcterm/Term;->redraw(IIII)V

    .line 164
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 165
    return-void
.end method

.method public abstract start()V
.end method

.method protected tab()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 306
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->tab:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->tab:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 307
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->term_width:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->char_width:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    .line 309
    iget v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->char_height:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    iget v1, p0, Lcom/jcraft/jcterm/Emulator;->x:I

    iget v2, p0, Lcom/jcraft/jcterm/Emulator;->y:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jcterm/Term;->setCursor(II)V

    .line 312
    iget-object v0, p0, Lcom/jcraft/jcterm/Emulator;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v0}, Lcom/jcraft/jcterm/Term;->draw_cursor()V

    .line 313
    return-void
.end method
