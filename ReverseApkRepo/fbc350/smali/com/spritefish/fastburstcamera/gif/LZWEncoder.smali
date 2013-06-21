.class Lcom/spritefish/fastburstcamera/gif/LZWEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# static fields
.field static final BITS:I = 0xc

.field private static final EOF:I = -0x1

.field static final HSIZE:I = 0x138b


# instance fields
.field ClearCode:I

.field EOFCode:I

.field a_count:I

.field accum:[B

.field clear_flg:Z

.field codetab:[I

.field private curPixel:I

.field cur_accum:I

.field cur_bits:I

.field free_ent:I

.field g_init_bits:I

.field hsize:I

.field htab:[I

.field private imgH:I

.field private imgW:I

.field private initCodeSize:I

.field masks:[I

.field maxbits:I

.field maxcode:I

.field maxmaxcode:I

.field n_bits:I

.field private pixAry:[B

.field private remaining:I


# direct methods
.method constructor <init>(II[BI)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "pixels"
    .parameter "color_depth"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0x138b

    const/4 v1, 0x0

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    const/16 v0, 0xc

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxbits:I

    .line 1046
    const/16 v0, 0x1000

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxmaxcode:I

    .line 1048
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->htab:[I

    .line 1050
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->codetab:[I

    .line 1052
    iput v2, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->hsize:I

    .line 1054
    iput v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->free_ent:I

    .line 1058
    iput-boolean v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->clear_flg:Z

    .line 1093
    iput v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    .line 1095
    iput v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    .line 1097
    const/16 v0, 0x11

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v5, v0, v4

    const/4 v1, 0x7

    aput v1, v0, v5

    const/4 v1, 0x4

    const/16 v2, 0xf

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xff

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x1ff

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 1098
    const/16 v2, 0x3ff

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x7ff

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xfff

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1fff

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3fff

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x7fff

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0xffff

    aput v2, v0, v1

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->masks:[I

    .line 1104
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->accum:[B

    .line 1108
    iput p1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->imgW:I

    .line 1109
    iput p2, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->imgH:I

    .line 1110
    iput-object p3, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->pixAry:[B

    .line 1111
    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->initCodeSize:I

    .line 1112
    return-void
.end method

.method private nextPixel()I
    .locals 4

    .prologue
    .line 1238
    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->remaining:I

    if-nez v1, :cond_0

    .line 1239
    const/4 v1, -0x1

    .line 1245
    :goto_0
    return v1

    .line 1241
    :cond_0
    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->remaining:I

    .line 1243
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->pixAry:[B

    iget v2, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->curPixel:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->curPixel:I

    aget-byte v0, v1, v2

    .line 1245
    .local v0, pix:B
    and-int/lit16 v1, v0, 0xff

    goto :goto_0
.end method


# virtual methods
.method final MAXCODE(I)I
    .locals 1
    .parameter "n_bits"

    .prologue
    .line 1231
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method char_out(BLjava/io/OutputStream;)V
    .locals 3
    .parameter "c"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->a_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->a_count:I

    aput-byte p1, v0, v1

    .line 1118
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->a_count:I

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    .line 1119
    invoke-virtual {p0, p2}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 1120
    :cond_0
    return-void
.end method

.method cl_block(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->hsize:I

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cl_hash(I)V

    .line 1127
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->ClearCode:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->free_ent:I

    .line 1128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->clear_flg:Z

    .line 1130
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v0, p1}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 1131
    return-void
.end method

.method cl_hash(I)V
    .locals 3
    .parameter "hsize"

    .prologue
    .line 1135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 1137
    return-void

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->htab:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 1135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method compress(ILjava/io/OutputStream;)V
    .locals 10
    .parameter "init_bits"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1149
    iput p1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->g_init_bits:I

    .line 1152
    iput-boolean v9, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->clear_flg:Z

    .line 1153
    iget v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->g_init_bits:I

    iput v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->n_bits:I

    .line 1154
    iget v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v7}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->MAXCODE(I)I

    move-result v7

    iput v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxcode:I

    .line 1156
    const/4 v7, 0x1

    add-int/lit8 v8, p1, -0x1

    shl-int/2addr v7, v8

    iput v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->ClearCode:I

    .line 1157
    iget v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->ClearCode:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->EOFCode:I

    .line 1158
    iget v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->ClearCode:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->free_ent:I

    .line 1160
    iput v9, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->a_count:I

    .line 1162
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->nextPixel()I

    move-result v2

    .line 1164
    .local v2, ent:I
    const/4 v4, 0x0

    .line 1165
    .local v4, hshift:I
    iget v3, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->hsize:I

    .local v3, fcode:I
    :goto_0
    const/high16 v7, 0x1

    if-lt v3, v7, :cond_0

    .line 1167
    rsub-int/lit8 v4, v4, 0x8

    .line 1169
    iget v5, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->hsize:I

    .line 1170
    .local v5, hsize_reg:I
    invoke-virtual {p0, v5}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cl_hash(I)V

    .line 1172
    iget v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v7, p2}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 1174
    :goto_1
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->nextPixel()I

    move-result v0

    .local v0, c:I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    .line 1205
    invoke-virtual {p0, v2, p2}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 1206
    iget v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->EOFCode:I

    invoke-virtual {p0, v7, p2}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 1207
    return-void

    .line 1166
    .end local v0           #c:I
    .end local v5           #hsize_reg:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 1165
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1175
    .restart local v0       #c:I
    .restart local v5       #hsize_reg:I
    :cond_1
    iget v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxbits:I

    shl-int v7, v0, v7

    add-int v3, v7, v2

    .line 1176
    shl-int v7, v0, v4

    xor-int v6, v7, v2

    .line 1178
    .local v6, i:I
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ne v7, v3, :cond_2

    .line 1179
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->codetab:[I

    aget v2, v7, v6

    .line 1180
    goto :goto_1

    .line 1181
    :cond_2
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ltz v7, :cond_6

    .line 1183
    sub-int v1, v5, v6

    .line 1184
    .local v1, disp:I
    if-nez v6, :cond_3

    .line 1185
    const/4 v1, 0x1

    .line 1187
    :cond_3
    sub-int/2addr v6, v1

    if-gez v6, :cond_4

    .line 1188
    add-int/2addr v6, v5

    .line 1190
    :cond_4
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ne v7, v3, :cond_5

    .line 1191
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->codetab:[I

    aget v2, v7, v6

    .line 1192
    goto :goto_1

    .line 1194
    :cond_5
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-gez v7, :cond_3

    .line 1196
    .end local v1           #disp:I
    :cond_6
    invoke-virtual {p0, v2, p2}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 1197
    move v2, v0

    .line 1198
    iget v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->free_ent:I

    iget v8, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxmaxcode:I

    if-ge v7, v8, :cond_7

    .line 1199
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->codetab:[I

    iget v8, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->free_ent:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->free_ent:I

    aput v8, v7, v6

    .line 1200
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->htab:[I

    aput v3, v7, v6

    goto :goto_1

    .line 1202
    :cond_7
    invoke-virtual {p0, p2}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cl_block(Ljava/io/OutputStream;)V

    goto :goto_1
.end method

.method encode(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1211
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->initCodeSize:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1213
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->imgW:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->imgH:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->remaining:I

    .line 1214
    iput v2, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->curPixel:I

    .line 1216
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->initCodeSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->compress(ILjava/io/OutputStream;)V

    .line 1218
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1219
    return-void
.end method

.method flush_char(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1223
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->a_count:I

    if-lez v0, :cond_0

    .line 1224
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->a_count:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1225
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->a_count:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1226
    iput v2, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->a_count:I

    .line 1228
    :cond_0
    return-void
.end method

.method output(ILjava/io/OutputStream;)V
    .locals 3
    .parameter "code"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1249
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->masks:[I

    iget v2, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    .line 1251
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    if-lez v0, :cond_3

    .line 1252
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    .line 1256
    :goto_0
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->n_bits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    .line 1258
    :goto_1
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    .line 1266
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->free_ent:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxcode:I

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_1

    .line 1267
    :cond_0
    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_5

    .line 1268
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->g_init_bits:I

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxcode:I

    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->clear_flg:Z

    .line 1279
    :cond_1
    :goto_2
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->EOFCode:I

    if-ne p1, v0, :cond_2

    .line 1281
    :goto_3
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    if-gtz v0, :cond_7

    .line 1287
    invoke-virtual {p0, p2}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 1289
    :cond_2
    return-void

    .line 1254
    :cond_3
    iput p1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    goto :goto_0

    .line 1259
    :cond_4
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 1260
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    .line 1261
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    goto :goto_1

    .line 1271
    :cond_5
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->n_bits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->n_bits:I

    .line 1272
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->n_bits:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxbits:I

    if-ne v0, v1, :cond_6

    .line 1273
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxmaxcode:I

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxcode:I

    goto :goto_2

    .line 1275
    :cond_6
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->maxcode:I

    goto :goto_2

    .line 1282
    :cond_7
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 1283
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_accum:I

    .line 1284
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->cur_bits:I

    goto :goto_3
.end method
