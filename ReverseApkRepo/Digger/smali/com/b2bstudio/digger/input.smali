.class Lcom/b2bstudio/digger/input;
.super Ljava/lang/Object;
.source "input.java"


# instance fields
.field akeypressed:I

.field dig:Lcom/b2bstudio/digger/main;

.field downpressed:Z

.field dynamicdir:I

.field escape:Z

.field f10pressed:Z

.field f1pressed:Z

.field firepflag:Z

.field firepressed:Z

.field jdownthresh:I

.field jleftthresh:I

.field joyanax:I

.field joyanay:I

.field joybut1:Z

.field joybut2:Z

.field joyflag:Z

.field joyx:I

.field joyy:I

.field jrightthresh:I

.field jupthresh:I

.field keydir:I

.field keypressed:I

.field leftpressed:Z

.field minuspressed:Z

.field pluspressed:Z

.field rightpressed:Z

.field staticdir:I

.field uppressed:Z


# direct methods
.method constructor <init>(Lcom/b2bstudio/digger/main;)V
    .locals 2
    .parameter "d"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->leftpressed:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->rightpressed:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->uppressed:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->downpressed:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->f1pressed:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->firepressed:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->escape:Z

    .line 10
    iput v0, p0, Lcom/b2bstudio/digger/input;->keypressed:I

    .line 13
    iput v1, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    iput v1, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->joyx:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->joyy:I

    .line 15
    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->joybut1:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->joybut2:Z

    .line 17
    iput v0, p0, Lcom/b2bstudio/digger/input;->keydir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->jleftthresh:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->jupthresh:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->jrightthresh:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->jdownthresh:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->joyanax:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->joyanay:I

    .line 18
    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->firepflag:Z

    .line 20
    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->joyflag:Z

    .line 24
    iput-object p1, p0, Lcom/b2bstudio/digger/input;->dig:Lcom/b2bstudio/digger/main;

    .line 25
    return-void
.end method


# virtual methods
.method Key_downpressed()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->downpressed:Z

    .line 56
    const/4 v0, 0x6

    iput v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 57
    return-void
.end method

.method Key_downreleased()V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->downpressed:Z

    .line 60
    iget v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->setdirec()V

    .line 62
    :cond_0
    return-void
.end method

.method Key_f1pressed()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->firepressed:Z

    .line 65
    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->f1pressed:Z

    .line 66
    return-void
.end method

.method Key_f1released()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->f1pressed:Z

    .line 69
    return-void
.end method

.method Key_leftpressed()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->leftpressed:Z

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 73
    return-void
.end method

.method Key_leftreleased()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->leftpressed:Z

    .line 76
    iget v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->setdirec()V

    .line 78
    :cond_0
    return-void
.end method

.method Key_rightpressed()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->rightpressed:Z

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 82
    return-void
.end method

.method Key_rightreleased()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->rightpressed:Z

    .line 85
    iget v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->setdirec()V

    .line 87
    :cond_0
    return-void
.end method

.method Key_uppressed()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->uppressed:Z

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 91
    return-void
.end method

.method Key_upreleased()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->uppressed:Z

    .line 94
    iget v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->setdirec()V

    .line 96
    :cond_0
    return-void
.end method

.method checkkeyb()V
    .locals 3

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/b2bstudio/digger/input;->pluspressed:Z

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/b2bstudio/digger/input;->dig:Lcom/b2bstudio/digger/main;

    iget v0, v0, Lcom/b2bstudio/digger/main;->frametime:I

    sget v1, Lcom/b2bstudio/digger/main;->MIN_RATE:I

    if-le v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/b2bstudio/digger/input;->dig:Lcom/b2bstudio/digger/main;

    iget v1, v0, Lcom/b2bstudio/digger/main;->frametime:I

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/b2bstudio/digger/main;->frametime:I

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/b2bstudio/digger/input;->minuspressed:Z

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/b2bstudio/digger/input;->dig:Lcom/b2bstudio/digger/main;

    iget v0, v0, Lcom/b2bstudio/digger/main;->frametime:I

    sget v1, Lcom/b2bstudio/digger/main;->MAX_RATE:I

    if-ge v0, v1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/b2bstudio/digger/input;->dig:Lcom/b2bstudio/digger/main;

    iget v1, v0, Lcom/b2bstudio/digger/main;->frametime:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/b2bstudio/digger/main;->frametime:I

    .line 35
    :cond_1
    iget-boolean v0, p0, Lcom/b2bstudio/digger/input;->f10pressed:Z

    if-eqz v0, :cond_2

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->escape:Z

    .line 37
    :cond_2
    return-void
.end method

.method detectjoy()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->joyflag:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    .line 41
    return-void
.end method

.method getasciikey(I)I
    .locals 1
    .parameter "make"

    .prologue
    .line 43
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    move v0, p1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getddirec()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    return v0
.end method

.method getdir()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/b2bstudio/digger/input;->keydir:I

    .line 50
    .local v0, bp2:I
    return v0
.end method

.method getdirec()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    return v0
.end method

.method initkeyb()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method processkey(I)V
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    iput p1, p0, Lcom/b2bstudio/digger/input;->keypressed:I

    .line 99
    iput p1, p0, Lcom/b2bstudio/digger/input;->akeypressed:I

    .line 100
    sparse-switch p1, :sswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 101
    :sswitch_0
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_leftpressed()V

    goto :goto_0

    .line 102
    :sswitch_1
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_leftreleased()V

    goto :goto_0

    .line 103
    :sswitch_2
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_rightpressed()V

    goto :goto_0

    .line 104
    :sswitch_3
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_rightreleased()V

    goto :goto_0

    .line 105
    :sswitch_4
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_uppressed()V

    goto :goto_0

    .line 106
    :sswitch_5
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_upreleased()V

    goto :goto_0

    .line 107
    :sswitch_6
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_downpressed()V

    goto :goto_0

    .line 108
    :sswitch_7
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_downreleased()V

    goto :goto_0

    .line 109
    :sswitch_8
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_f1pressed()V

    goto :goto_0

    .line 110
    :sswitch_9
    invoke-virtual {p0}, Lcom/b2bstudio/digger/input;->Key_f1released()V

    goto :goto_0

    .line 111
    :sswitch_a
    iput-boolean v1, p0, Lcom/b2bstudio/digger/input;->f10pressed:Z

    goto :goto_0

    .line 112
    :sswitch_b
    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->f10pressed:Z

    goto :goto_0

    .line 113
    :sswitch_c
    iput-boolean v1, p0, Lcom/b2bstudio/digger/input;->pluspressed:Z

    goto :goto_0

    .line 114
    :sswitch_d
    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->pluspressed:Z

    goto :goto_0

    .line 115
    :sswitch_e
    iput-boolean v1, p0, Lcom/b2bstudio/digger/input;->minuspressed:Z

    goto :goto_0

    .line 116
    :sswitch_f
    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->minuspressed:Z

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_c
        0x2d -> :sswitch_e
        0x3b -> :sswitch_8
        0x48 -> :sswitch_4
        0x4b -> :sswitch_0
        0x4d -> :sswitch_2
        0x50 -> :sswitch_6
        0x78 -> :sswitch_a
        0xab -> :sswitch_d
        0xad -> :sswitch_f
        0xbb -> :sswitch_9
        0xc8 -> :sswitch_5
        0xcb -> :sswitch_1
        0xcd -> :sswitch_3
        0xd0 -> :sswitch_7
        0xf8 -> :sswitch_b
    .end sparse-switch
.end method

.method readdir()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 120
    iget v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->keydir:I

    .line 121
    iget v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    if-eq v0, v1, :cond_0

    .line 122
    iget v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->keydir:I

    .line 123
    :cond_0
    iput v1, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    .line 124
    iget-boolean v0, p0, Lcom/b2bstudio/digger/input;->f1pressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/b2bstudio/digger/input;->firepressed:Z

    if-eqz v0, :cond_2

    .line 125
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/digger/input;->firepflag:Z

    .line 128
    :goto_0
    iput-boolean v2, p0, Lcom/b2bstudio/digger/input;->firepressed:Z

    .line 129
    return-void

    .line 127
    :cond_2
    iput-boolean v2, p0, Lcom/b2bstudio/digger/input;->firepflag:Z

    goto :goto_0
.end method

.method readjoy()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method setdirec()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 143
    iget-boolean v0, p0, Lcom/b2bstudio/digger/input;->uppressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/b2bstudio/digger/input;->downpressed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    iput v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/b2bstudio/digger/input;->leftpressed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 146
    :cond_2
    iget-boolean v0, p0, Lcom/b2bstudio/digger/input;->rightpressed:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/b2bstudio/digger/input;->staticdir:I

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 147
    :cond_3
    return-void
.end method

.method setnodirec()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/b2bstudio/digger/input;->dynamicdir:I

    .line 134
    return-void
.end method

.method teststart()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, startf:Z
    iget v1, p0, Lcom/b2bstudio/digger/input;->keypressed:I

    if-eqz v1, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 152
    iput-boolean v2, p0, Lcom/b2bstudio/digger/input;->joyflag:Z

    .line 153
    iput v2, p0, Lcom/b2bstudio/digger/input;->keypressed:I

    .line 155
    :cond_0
    if-nez v0, :cond_1

    move v1, v2

    .line 157
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
