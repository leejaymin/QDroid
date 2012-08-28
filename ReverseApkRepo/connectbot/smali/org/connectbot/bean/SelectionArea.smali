.class public Lorg/connectbot/bean/SelectionArea;
.super Ljava/lang/Object;
.source "SelectionArea.java"


# instance fields
.field private bottom:I

.field private left:I

.field private maxColumns:I

.field private maxRows:I

.field private right:I

.field private selectingOrigin:Z

.field private top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->reset()V

    .line 39
    return-void
.end method

.method private checkBounds(II)I
    .locals 0
    .parameter "value"
    .parameter "max"

    .prologue
    .line 56
    if-gez p1, :cond_1

    .line 57
    const/4 p2, 0x0

    .line 61
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 58
    .restart local p2
    :cond_1
    if-gt p1, p2, :cond_0

    move p2, p1

    .line 61
    goto :goto_0
.end method

.method private setBottom(I)V
    .locals 1
    .parameter "bottom"

    .prologue
    .line 102
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->maxRows:I

    invoke-direct {p0, p1, v0}, Lorg/connectbot/bean/SelectionArea;->checkBounds(II)I

    move-result v0

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->bottom:I

    .line 103
    return-void
.end method

.method private setLeft(I)V
    .locals 1
    .parameter "left"

    .prologue
    .line 131
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->maxColumns:I

    invoke-direct {p0, p1, v0}, Lorg/connectbot/bean/SelectionArea;->checkBounds(II)I

    move-result v0

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->right:I

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->left:I

    .line 132
    return-void
.end method

.method private setRight(I)V
    .locals 1
    .parameter "right"

    .prologue
    .line 139
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->maxColumns:I

    invoke-direct {p0, p1, v0}, Lorg/connectbot/bean/SelectionArea;->checkBounds(II)I

    move-result v0

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->right:I

    .line 140
    return-void
.end method

.method private setTop(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 94
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->maxRows:I

    invoke-direct {p0, p1, v0}, Lorg/connectbot/bean/SelectionArea;->checkBounds(II)I

    move-result v0

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->bottom:I

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->top:I

    .line 95
    return-void
.end method


# virtual methods
.method public copyFrom(Lde/mud/terminal/VDUBuffer;)Ljava/lang/String;
    .locals 9
    .parameter "vb"

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    mul-int v3, v6, v7

    .line 149
    .local v3, size:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 151
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->getTop()I

    move-result v5

    .local v5, y:I
    :goto_0
    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->getBottom()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 154
    .local v2, lastNonSpace:I
    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->getLeft()I

    move-result v4

    .local v4, x:I
    :goto_1
    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->getRight()I

    move-result v6

    if-le v4, v6, :cond_3

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v2, :cond_1

    .line 170
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 172
    :cond_1
    iget v6, p0, Lorg/connectbot/bean/SelectionArea;->bottom:I

    if-eq v5, v6, :cond_2

    .line 173
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {p1, v4, v5}, Lde/mud/terminal/VDUBuffer;->getChar(II)C

    move-result v1

    .line 158
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isDefined(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 159
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x9

    if-eq v1, v6, :cond_5

    .line 160
    :cond_4
    const/16 v1, 0x20

    .line 162
    :cond_5
    const/16 v6, 0x20

    if-eq v1, v6, :cond_6

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 165
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public decrementColumn()V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/connectbot/bean/SelectionArea;->selectingOrigin:Z

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->left:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/connectbot/bean/SelectionArea;->setLeft(I)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->right:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/connectbot/bean/SelectionArea;->setRight(I)V

    goto :goto_0
.end method

.method public decrementRow()V
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/connectbot/bean/SelectionArea;->selectingOrigin:Z

    if-eqz v0, :cond_0

    .line 74
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->top:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/connectbot/bean/SelectionArea;->setTop(I)V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->bottom:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/connectbot/bean/SelectionArea;->setBottom(I)V

    goto :goto_0
.end method

.method public finishSelectingOrigin()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/connectbot/bean/SelectionArea;->selectingOrigin:Z

    .line 70
    return-void
.end method

.method public getBottom()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->top:I

    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->left:I

    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->left:I

    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->top:I

    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public incrementColumn()V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/connectbot/bean/SelectionArea;->selectingOrigin:Z

    if-eqz v0, :cond_0

    .line 118
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->left:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/connectbot/bean/SelectionArea;->setLeft(I)V

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->right:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/connectbot/bean/SelectionArea;->setRight(I)V

    goto :goto_0
.end method

.method public incrementRow()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/connectbot/bean/SelectionArea;->selectingOrigin:Z

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->top:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/connectbot/bean/SelectionArea;->setTop(I)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget v0, p0, Lorg/connectbot/bean/SelectionArea;->bottom:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/connectbot/bean/SelectionArea;->setBottom(I)V

    goto :goto_0
.end method

.method public isSelectingOrigin()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/connectbot/bean/SelectionArea;->selectingOrigin:Z

    return v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->right:I

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->bottom:I

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->left:I

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->top:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/connectbot/bean/SelectionArea;->selectingOrigin:Z

    .line 44
    return-void
.end method

.method public setBounds(II)V
    .locals 1
    .parameter "columns"
    .parameter "rows"

    .prologue
    .line 51
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->maxColumns:I

    .line 52
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/connectbot/bean/SelectionArea;->maxRows:I

    .line 53
    return-void
.end method

.method public setColumn(I)V
    .locals 1
    .parameter "column"

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/connectbot/bean/SelectionArea;->selectingOrigin:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lorg/connectbot/bean/SelectionArea;->setLeft(I)V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lorg/connectbot/bean/SelectionArea;->setRight(I)V

    goto :goto_0
.end method

.method public setRow(I)V
    .locals 1
    .parameter "row"

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/connectbot/bean/SelectionArea;->selectingOrigin:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lorg/connectbot/bean/SelectionArea;->setTop(I)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lorg/connectbot/bean/SelectionArea;->setBottom(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "SelectionArea[top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ", maxColumns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->maxColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ", maxRows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v1, p0, Lorg/connectbot/bean/SelectionArea;->maxRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, ", isSelectingOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Lorg/connectbot/bean/SelectionArea;->isSelectingOrigin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
