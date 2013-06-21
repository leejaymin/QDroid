.class public Lcom/chillingo/crystal/utils/Size;
.super Ljava/lang/Object;


# instance fields
.field private _h:I

.field private _w:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/chillingo/crystal/utils/Size;->_w:I

    iput v0, p0, Lcom/chillingo/crystal/utils/Size;->_h:I

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/utils/Size;->setWidth(I)V

    invoke-virtual {p0, p2}, Lcom/chillingo/crystal/utils/Size;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public height()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/utils/Size;->_h:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/utils/Size;->_h:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/utils/Size;->_w:I

    return-void
.end method

.method public width()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/utils/Size;->_w:I

    return v0
.end method
