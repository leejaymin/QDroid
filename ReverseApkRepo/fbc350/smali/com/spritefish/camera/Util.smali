.class public Lcom/spritefish/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation:[I = null

.field public static final FACE_IMAGE_SCALE_FACTOR:I = 0x2


# direct methods
.method static synthetic $SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation()[I
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/spritefish/camera/Util;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/spritefish/camera/RotationManager$Rotation;->values()[Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v1}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v1}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v1}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v1}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/spritefish/camera/Util;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyWatermark(Landroid/app/Activity;Landroid/graphics/Canvas;IIZ)V
    .locals 7
    .parameter "act"
    .parameter "c"
    .parameter "width"
    .parameter "height"
    .parameter "isLiteVersion"

    .prologue
    .line 673
    if-eqz p4, :cond_1

    .line 676
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 677
    .local v0, textPaint:Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 678
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 679
    div-int/lit8 v3, p2, 0x13

    int-to-long v1, v3

    .line 680
    .local v1, txtSize:J
    const/16 v3, 0x12c

    if-le p2, v3, :cond_0

    .line 681
    div-int/lit8 v3, p2, 0x28

    int-to-long v1, v3

    .line 682
    :cond_0
    long-to-float v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 683
    const-string v3, "Created with Fast Burst Camera Lite"

    const/high16 v4, 0x4120

    int-to-long v5, p3

    sub-long/2addr v5, v1

    long-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 685
    .end local v0           #textPaint:Landroid/graphics/Paint;
    .end local v1           #txtSize:J
    :cond_1
    return-void
.end method

.method public static compareGreyMaps([B[BIII)I
    .locals 7
    .parameter "g1"
    .parameter "g2"
    .parameter "width"
    .parameter "height"
    .parameter "sensitivity"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, diffs:I
    const/4 v1, 0x0

    .line 68
    .local v1, pos:I
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    if-lt v3, p3, :cond_0

    .line 75
    mul-int/lit8 v4, v0, 0x64

    div-int/2addr v4, v1

    return v4

    .line 69
    :cond_0
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-lt v2, p2, :cond_1

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_1
    aget-byte v4, p0, v1

    aget-byte v5, p1, v1

    mul-int/lit8 v6, p4, 0x2

    add-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_2

    aget-byte v4, p0, v1

    aget-byte v5, p1, v1

    mul-int/lit8 v6, p4, 0x2

    add-int/lit8 v6, v6, 0xa

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_3

    .line 72
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 73
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static compareShots([I[I[III)V
    .locals 16
    .parameter "bg"
    .parameter "newpic"
    .parameter "diff"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 82
    const/4 v7, 0x0

    .line 83
    .local v7, i:I
    move/from16 v5, p3

    .line 84
    .local v5, difPos:I
    const/4 v13, 0x0

    .local v13, y:I
    :goto_0
    move/from16 v0, p4

    if-lt v13, v0, :cond_0

    .line 112
    return-void

    .line 86
    :cond_0
    const/4 v12, 0x0

    .local v12, x:I
    :goto_1
    move/from16 v0, p3

    if-lt v12, v0, :cond_1

    .line 109
    mul-int/lit8 v14, p3, 0x2

    add-int/2addr v5, v14

    .line 84
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 88
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 90
    aget v14, p0, v7

    const/high16 v15, 0xff

    and-int/2addr v14, v15

    shr-int/lit8 v4, v14, 0x10

    .line 91
    .local v4, bg_r:I
    aget v14, p0, v7

    const v15, 0xff00

    and-int/2addr v14, v15

    shr-int/lit8 v3, v14, 0x8

    .line 92
    .local v3, bg_g:I
    aget v14, p0, v7

    and-int/lit16 v2, v14, 0xff

    .line 94
    .local v2, bg_b:I
    aget v14, p1, v7

    const/high16 v15, 0xff

    and-int/2addr v14, v15

    shr-int/lit8 v10, v14, 0x10

    .line 95
    .local v10, nw_r:I
    aget v14, p1, v7

    const v15, 0xff00

    and-int/2addr v14, v15

    shr-int/lit8 v9, v14, 0x8

    .line 96
    .local v9, nw_g:I
    aget v14, p1, v7

    and-int/lit16 v8, v14, 0xff

    .line 98
    .local v8, nw_b:I
    sub-int v14, v4, v10

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 99
    .local v11, rd:I
    sub-int v14, v3, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 100
    .local v6, gd:I
    sub-int v14, v2, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 102
    .local v1, bd:I
    add-int v14, v11, v6

    add-int/2addr v14, v1

    const/16 v15, 0x32

    if-le v14, v15, :cond_2

    .line 103
    const/4 v14, -0x1

    aput v14, p2, v5

    .line 106
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 86
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 105
    :cond_2
    const/high16 v14, -0x6000

    aput v14, p2, v5

    goto :goto_2
.end method

.method public static computeGrayMap([B[BIII)V
    .locals 7
    .parameter "yuv"
    .parameter "greymap"
    .parameter "width"
    .parameter "height"
    .parameter "fact"

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, pos:I
    const/4 v0, 0x0

    .line 50
    .local v0, gpos:I
    const/4 v4, 0x0

    .local v4, y:I
    :goto_0
    if-lt v4, p3, :cond_0

    .line 60
    return-void

    .line 51
    :cond_0
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    if-lt v3, p2, :cond_1

    .line 50
    add-int/2addr v4, p4

    goto :goto_0

    .line 53
    :cond_1
    aget-byte v5, p0, v1

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    add-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    add-int v2, v5, v6

    .line 54
    .local v2, val:I
    div-int/lit8 v2, v2, 0x3

    .line 56
    int-to-byte v5, v2

    aput-byte v5, p1, v0

    .line 57
    add-int/2addr v1, p4

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 51
    add-int/2addr v3, p4

    goto :goto_1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .parameter "sourceFile"
    .parameter "destFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 762
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 765
    :cond_0
    const/4 v1, 0x0

    .line 766
    .local v1, source:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 769
    .local v0, destination:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 770
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 771
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    if-eqz v1, :cond_1

    .line 775
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 777
    :cond_1
    if-eqz v0, :cond_2

    .line 778
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 781
    :cond_2
    return-void

    .line 773
    :catchall_0
    move-exception v2

    .line 774
    if-eqz v1, :cond_3

    .line 775
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 777
    :cond_3
    if-eqz v0, :cond_4

    .line 778
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 780
    :cond_4
    throw v2
.end method

.method public static decodeYUV([I[BIILcom/spritefish/camera/RotationManager$Rotation;)V
    .locals 21
    .parameter "out"
    .parameter "fg"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 137
    mul-int v15, p2, p3

    .line 138
    .local v15, sz:I
    if-nez p0, :cond_0

    .line 139
    new-instance v18, Ljava/lang/NullPointerException;

    const-string v19, "buffer out is null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 140
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v15, :cond_1

    .line 141
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "buffer out size "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 142
    const-string v20, " < minimum "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 141
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 143
    :cond_1
    if-nez p1, :cond_2

    .line 144
    new-instance v18, Ljava/lang/NullPointerException;

    const-string v19, "buffer \'fg\' is null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 145
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v15, :cond_3

    .line 146
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "buffer fg size "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 147
    const-string v20, " < minimum "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    mul-int/lit8 v20, v15, 0x3

    div-int/lit8 v20, v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 146
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 149
    :cond_3
    const/4 v13, 0x0

    .local v13, sx:I
    const/4 v14, 0x0

    .line 150
    .local v14, sy:I
    const/4 v12, 0x0

    .line 151
    .local v12, pos:I
    const/4 v9, 0x0

    .line 153
    .local v9, cachePos:I
    invoke-static {}, Lcom/spritefish/camera/Util;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation()[I

    move-result-object v18

    invoke-virtual/range {p4 .. p4}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 178
    :goto_0
    const/4 v4, 0x0

    .local v4, Cr:I
    const/4 v3, 0x0

    .line 179
    .local v3, Cb:I
    const/16 v17, 0x0

    .local v17, y:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p3

    if-lt v0, v1, :cond_4

    .line 271
    return-void

    .line 155
    .end local v3           #Cb:I
    .end local v4           #Cr:I
    .end local v17           #y:I
    :pswitch_0
    const/4 v13, 0x0

    .line 156
    const/4 v14, 0x0

    .line 157
    const/4 v9, -0x1

    .line 158
    goto :goto_0

    .line 160
    :pswitch_1
    add-int/lit8 v13, p3, -0x1

    .line 161
    const/4 v9, -0x1

    .line 162
    const/4 v14, 0x0

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2
    add-int/lit8 v13, p2, -0x1

    .line 166
    add-int/lit8 v14, p3, -0x1

    .line 167
    mul-int v9, p2, p3

    .line 168
    goto :goto_0

    .line 170
    :pswitch_3
    const/4 v13, 0x0

    .line 171
    add-int/lit8 v14, p2, -0x1

    .line 172
    mul-int v9, p2, p3

    .line 173
    goto :goto_0

    .line 180
    .restart local v3       #Cb:I
    .restart local v4       #Cr:I
    .restart local v17       #y:I
    :cond_4
    mul-int v11, v17, p2

    .line 181
    .local v11, pixPtr:I
    shr-int/lit8 v10, v17, 0x1

    .line 182
    .local v10, jDiv2:I
    const/16 v16, 0x0

    .local v16, x:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, p2

    if-lt v0, v1, :cond_5

    .line 179
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 183
    :cond_5
    aget-byte v7, p1, v11

    .line 184
    .local v7, Y:I
    if-gez v7, :cond_6

    .line 185
    add-int/lit16 v7, v7, 0xff

    .line 186
    :cond_6
    and-int/lit8 v18, v16, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 187
    mul-int v18, v10, p2

    add-int v18, v18, v15

    shr-int/lit8 v19, v16, 0x1

    mul-int/lit8 v19, v19, 0x2

    add-int v8, v18, v19

    .line 188
    .local v8, cOff:I
    aget-byte v3, p1, v8

    .line 189
    if-gez v3, :cond_b

    .line 190
    add-int/lit8 v3, v3, 0x7f

    .line 193
    :goto_3
    add-int/lit8 v18, v8, 0x1

    aget-byte v4, p1, v18

    .line 194
    if-gez v4, :cond_c

    .line 195
    add-int/lit8 v4, v4, 0x7f

    .line 199
    .end local v8           #cOff:I
    :cond_7
    :goto_4
    add-int v18, v7, v4

    shr-int/lit8 v19, v4, 0x2

    add-int v18, v18, v19

    shr-int/lit8 v19, v4, 0x3

    add-int v18, v18, v19

    shr-int/lit8 v19, v4, 0x5

    add-int v6, v18, v19

    .line 200
    .local v6, R:I
    if-gez v6, :cond_d

    .line 201
    const/4 v6, 0x0

    .line 204
    :cond_8
    :goto_5
    shr-int/lit8 v18, v3, 0x2

    sub-int v18, v7, v18

    shr-int/lit8 v19, v3, 0x4

    add-int v18, v18, v19

    shr-int/lit8 v19, v3, 0x5

    add-int v18, v18, v19

    shr-int/lit8 v19, v4, 0x1

    sub-int v18, v18, v19

    .line 205
    shr-int/lit8 v19, v4, 0x3

    .line 204
    add-int v18, v18, v19

    .line 205
    shr-int/lit8 v19, v4, 0x4

    .line 204
    add-int v18, v18, v19

    .line 205
    shr-int/lit8 v19, v4, 0x5

    .line 204
    add-int v5, v18, v19

    .line 206
    .local v5, G:I
    if-gez v5, :cond_e

    .line 207
    const/4 v5, 0x0

    .line 210
    :cond_9
    :goto_6
    add-int v18, v7, v3

    shr-int/lit8 v19, v3, 0x1

    add-int v18, v18, v19

    shr-int/lit8 v19, v3, 0x2

    add-int v18, v18, v19

    shr-int/lit8 v19, v3, 0x6

    add-int v2, v18, v19

    .line 211
    .local v2, B:I
    if-gez v2, :cond_f

    .line 212
    const/4 v2, 0x0

    .line 218
    :cond_a
    :goto_7
    invoke-static {}, Lcom/spritefish/camera/Util;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation()[I

    move-result-object v18

    invoke-virtual/range {p4 .. p4}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_1

    .line 264
    :goto_8
    const/high16 v18, -0x100

    shl-int/lit8 v19, v2, 0x10

    add-int v18, v18, v19

    shl-int/lit8 v19, v5, 0x8

    add-int v18, v18, v19

    add-int v18, v18, v6

    aput v18, p0, v9

    .line 266
    add-int/lit8 v11, v11, 0x1

    .line 182
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 192
    .end local v2           #B:I
    .end local v5           #G:I
    .end local v6           #R:I
    .restart local v8       #cOff:I
    :cond_b
    add-int/lit8 v3, v3, -0x80

    goto :goto_3

    .line 197
    :cond_c
    add-int/lit8 v4, v4, -0x80

    goto :goto_4

    .line 202
    .end local v8           #cOff:I
    .restart local v6       #R:I
    :cond_d
    const/16 v18, 0xff

    move/from16 v0, v18

    if-le v6, v0, :cond_8

    .line 203
    const/16 v6, 0xff

    goto :goto_5

    .line 208
    .restart local v5       #G:I
    :cond_e
    const/16 v18, 0xff

    move/from16 v0, v18

    if-le v5, v0, :cond_9

    .line 209
    const/16 v5, 0xff

    goto :goto_6

    .line 213
    .restart local v2       #B:I
    :cond_f
    const/16 v18, 0xff

    move/from16 v0, v18

    if-le v2, v0, :cond_a

    .line 214
    const/16 v2, 0xff

    goto :goto_7

    .line 220
    :pswitch_4
    move/from16 v0, p2

    if-ne v13, v0, :cond_10

    .line 221
    add-int/lit8 v14, v14, 0x1

    .line 222
    const/4 v13, 0x0

    .line 225
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 226
    add-int/lit8 v13, v13, 0x1

    .line 227
    goto :goto_8

    .line 229
    :pswitch_5
    move/from16 v0, p2

    if-ne v14, v0, :cond_11

    .line 230
    add-int/lit8 v13, v13, -0x1

    .line 231
    const/4 v14, 0x0

    .line 232
    move v9, v13

    .line 236
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 237
    goto :goto_8

    .line 234
    :cond_11
    add-int v9, v9, p3

    goto :goto_9

    .line 240
    :pswitch_6
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_12

    .line 241
    add-int/lit8 v14, v14, -0x1

    .line 242
    add-int/lit8 v13, p2, -0x1

    .line 244
    :cond_12
    add-int/lit8 v9, v9, -0x1

    .line 246
    add-int/lit8 v13, v13, -0x1

    .line 247
    goto :goto_8

    .line 249
    :pswitch_7
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_13

    .line 250
    add-int/lit8 v13, v13, 0x1

    .line 251
    add-int/lit8 v14, p2, -0x1

    .line 252
    add-int/lit8 v18, p2, -0x1

    mul-int v18, v18, p3

    add-int v9, v18, v13

    .line 256
    :goto_a
    add-int/lit8 v14, v14, -0x1

    .line 257
    goto :goto_8

    .line 254
    :cond_13
    sub-int v9, v9, p3

    goto :goto_a

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 218
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public static decodeYUVSmaller([I[BIILcom/spritefish/camera/RotationManager$Rotation;II)V
    .locals 24
    .parameter "out"
    .parameter "fg"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "div"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 276
    div-int v14, p2, p5

    .line 277
    .local v14, smallWidth:I
    div-int v13, p3, p5

    .line 279
    .local v13, smallHeight:I
    mul-int v17, v14, v13

    .line 280
    .local v17, sz:I
    mul-int v18, p3, p2

    .line 281
    .local v18, sz_full:I
    if-nez p0, :cond_0

    .line 282
    new-instance v21, Ljava/lang/NullPointerException;

    const-string v22, "buffer out is null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 283
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 284
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "buffer out size "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 285
    const-string v23, " < minimum "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 284
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 286
    :cond_1
    if-nez p1, :cond_2

    .line 287
    new-instance v21, Ljava/lang/NullPointerException;

    const-string v22, "buffer \'fg\' is null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 288
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 289
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "buffer fg size "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 290
    const-string v23, " < minimum "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    mul-int/lit8 v23, v17, 0x3

    div-int/lit8 v23, v23, 0x2

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 289
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 292
    :cond_3
    const/4 v15, 0x0

    .local v15, sx:I
    const/16 v16, 0x0

    .line 293
    .local v16, sy:I
    const/4 v12, 0x0

    .line 294
    .local v12, pos:I
    const/4 v9, 0x0

    .line 296
    .local v9, cachePos:I
    const/16 v21, 0x1

    move/from16 v0, p6

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 298
    sget-object v21, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 299
    sget-object p4, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    .line 306
    :cond_4
    :goto_0
    invoke-static {}, Lcom/spritefish/camera/Util;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation()[I

    move-result-object v21

    invoke-virtual/range {p4 .. p4}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 334
    :goto_1
    const/4 v4, 0x0

    .local v4, Cr:I
    const/4 v3, 0x0

    .line 335
    .local v3, Cb:I
    const/16 v20, 0x0

    .local v20, y:I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, p3

    if-lt v0, v1, :cond_6

    .line 430
    return-void

    .line 301
    .end local v3           #Cb:I
    .end local v4           #Cr:I
    .end local v20           #y:I
    :cond_5
    sget-object v21, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 302
    sget-object p4, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 308
    :pswitch_0
    const/4 v15, 0x0

    .line 309
    const/16 v16, 0x0

    .line 310
    const/4 v9, -0x1

    .line 311
    goto :goto_1

    .line 313
    :pswitch_1
    add-int/lit8 v15, v13, -0x1

    .line 314
    const/4 v9, -0x1

    .line 315
    const/16 v16, 0x0

    .line 316
    goto :goto_1

    .line 318
    :pswitch_2
    add-int/lit8 v15, v14, -0x1

    .line 319
    add-int/lit8 v16, v13, -0x1

    .line 320
    mul-int v9, v14, v13

    .line 321
    goto :goto_1

    .line 323
    :pswitch_3
    const/4 v15, 0x0

    .line 324
    add-int/lit8 v16, v14, -0x1

    .line 325
    mul-int v9, v14, v13

    .line 326
    goto :goto_1

    .line 336
    .restart local v3       #Cb:I
    .restart local v4       #Cr:I
    .restart local v20       #y:I
    :cond_6
    mul-int v11, v20, p2

    .line 337
    .local v11, pixPtr:I
    shr-int/lit8 v10, v20, 0x1

    .line 338
    .local v10, jDiv2:I
    const/16 v19, 0x0

    .local v19, x:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, p2

    if-lt v0, v1, :cond_7

    .line 335
    add-int v20, v20, p5

    goto :goto_2

    .line 340
    :cond_7
    mul-int v21, v20, p2

    add-int v21, v21, v19

    aget-byte v7, p1, v21

    .line 341
    .local v7, Y:I
    if-gez v7, :cond_8

    .line 342
    add-int/lit16 v7, v7, 0xff

    .line 343
    :cond_8
    and-int/lit8 v21, v19, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 344
    mul-int v21, v10, p2

    add-int v21, v21, v18

    shr-int/lit8 v22, v19, 0x1

    mul-int/lit8 v22, v22, 0x2

    add-int v8, v21, v22

    .line 345
    .local v8, cOff:I
    aget-byte v3, p1, v8

    .line 346
    if-gez v3, :cond_d

    .line 347
    add-int/lit8 v3, v3, 0x7f

    .line 350
    :goto_4
    add-int/lit8 v21, v8, 0x1

    aget-byte v4, p1, v21

    .line 351
    if-gez v4, :cond_e

    .line 352
    add-int/lit8 v4, v4, 0x7f

    .line 356
    .end local v8           #cOff:I
    :cond_9
    :goto_5
    add-int v21, v7, v4

    shr-int/lit8 v22, v4, 0x2

    add-int v21, v21, v22

    shr-int/lit8 v22, v4, 0x3

    add-int v21, v21, v22

    shr-int/lit8 v22, v4, 0x5

    add-int v6, v21, v22

    .line 357
    .local v6, R:I
    if-gez v6, :cond_f

    .line 358
    const/4 v6, 0x0

    .line 361
    :cond_a
    :goto_6
    shr-int/lit8 v21, v3, 0x2

    sub-int v21, v7, v21

    shr-int/lit8 v22, v3, 0x4

    add-int v21, v21, v22

    shr-int/lit8 v22, v3, 0x5

    add-int v21, v21, v22

    shr-int/lit8 v22, v4, 0x1

    sub-int v21, v21, v22

    .line 362
    shr-int/lit8 v22, v4, 0x3

    .line 361
    add-int v21, v21, v22

    .line 362
    shr-int/lit8 v22, v4, 0x4

    .line 361
    add-int v21, v21, v22

    .line 362
    shr-int/lit8 v22, v4, 0x5

    .line 361
    add-int v5, v21, v22

    .line 363
    .local v5, G:I
    if-gez v5, :cond_10

    .line 364
    const/4 v5, 0x0

    .line 367
    :cond_b
    :goto_7
    add-int v21, v7, v3

    shr-int/lit8 v22, v3, 0x1

    add-int v21, v21, v22

    shr-int/lit8 v22, v3, 0x2

    add-int v21, v21, v22

    shr-int/lit8 v22, v3, 0x6

    add-int v2, v21, v22

    .line 368
    .local v2, B:I
    if-gez v2, :cond_11

    .line 369
    const/4 v2, 0x0

    .line 375
    :cond_c
    :goto_8
    invoke-static {}, Lcom/spritefish/camera/Util;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation()[I

    move-result-object v21

    invoke-virtual/range {p4 .. p4}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_1

    .line 423
    :goto_9
    const/high16 v21, -0x100

    shl-int/lit8 v22, v2, 0x10

    add-int v21, v21, v22

    shl-int/lit8 v22, v5, 0x8

    add-int v21, v21, v22

    add-int v21, v21, v6

    aput v21, p0, v9

    .line 425
    add-int v11, v11, p5

    .line 338
    add-int v19, v19, p5

    goto/16 :goto_3

    .line 349
    .end local v2           #B:I
    .end local v5           #G:I
    .end local v6           #R:I
    .restart local v8       #cOff:I
    :cond_d
    add-int/lit8 v3, v3, -0x80

    goto :goto_4

    .line 354
    :cond_e
    add-int/lit8 v4, v4, -0x80

    goto :goto_5

    .line 359
    .end local v8           #cOff:I
    .restart local v6       #R:I
    :cond_f
    const/16 v21, 0xff

    move/from16 v0, v21

    if-le v6, v0, :cond_a

    .line 360
    const/16 v6, 0xff

    goto :goto_6

    .line 365
    .restart local v5       #G:I
    :cond_10
    const/16 v21, 0xff

    move/from16 v0, v21

    if-le v5, v0, :cond_b

    .line 366
    const/16 v5, 0xff

    goto :goto_7

    .line 370
    .restart local v2       #B:I
    :cond_11
    const/16 v21, 0xff

    move/from16 v0, v21

    if-le v2, v0, :cond_c

    .line 371
    const/16 v2, 0xff

    goto :goto_8

    .line 377
    :pswitch_4
    if-ne v15, v14, :cond_12

    .line 378
    add-int/lit8 v16, v16, 0x1

    .line 379
    const/4 v15, 0x0

    .line 382
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 383
    add-int/lit8 v15, v15, 0x1

    .line 384
    goto :goto_9

    .line 386
    :pswitch_5
    move/from16 v0, v16

    if-ne v0, v14, :cond_13

    .line 387
    add-int/lit8 v15, v15, -0x1

    .line 388
    const/16 v16, 0x0

    .line 389
    move v9, v15

    .line 393
    :goto_a
    add-int/lit8 v16, v16, 0x1

    .line 394
    goto :goto_9

    .line 391
    :cond_13
    add-int/2addr v9, v13

    goto :goto_a

    .line 396
    :pswitch_6
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_14

    .line 397
    add-int/lit8 v16, v16, -0x1

    .line 398
    add-int/lit8 v15, v14, -0x1

    .line 400
    :cond_14
    add-int/lit8 v9, v9, -0x1

    .line 402
    add-int/lit8 v15, v15, -0x1

    .line 403
    goto :goto_9

    .line 405
    :pswitch_7
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 406
    add-int/lit8 v15, v15, 0x1

    .line 407
    add-int/lit8 v16, v14, -0x1

    .line 408
    add-int/lit8 v21, v14, -0x1

    mul-int v21, v21, v13

    add-int v9, v21, v15

    .line 412
    :goto_b
    add-int/lit8 v16, v16, -0x1

    .line 413
    goto :goto_9

    .line 410
    :cond_15
    sub-int/2addr v9, v13

    goto :goto_b

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 375
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public static decodeYUVasBlackWhite([I[BIILcom/spritefish/camera/RotationManager$Rotation;)V
    .locals 16
    .parameter "out"
    .parameter "fg"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 435
    mul-int v10, p2, p3

    .line 436
    .local v10, sz:I
    if-nez p0, :cond_0

    .line 437
    new-instance v13, Ljava/lang/NullPointerException;

    const-string v14, "buffer out is null"

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 438
    :cond_0
    move-object/from16 v0, p0

    array-length v13, v0

    if-ge v13, v10, :cond_1

    .line 439
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "buffer out size "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 440
    const-string v15, " < minimum "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 439
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 441
    :cond_1
    if-nez p1, :cond_2

    .line 442
    new-instance v13, Ljava/lang/NullPointerException;

    const-string v14, "buffer \'fg\' is null"

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 443
    :cond_2
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v13, v10, :cond_3

    .line 444
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "buffer fg size "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 445
    const-string v15, " < minimum "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    mul-int/lit8 v15, v10, 0x3

    div-int/lit8 v15, v15, 0x2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 444
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 447
    :cond_3
    const/4 v8, 0x0

    .local v8, sx:I
    const/4 v9, 0x0

    .line 448
    .local v9, sy:I
    const/4 v7, 0x0

    .line 449
    .local v7, pos:I
    const/4 v4, 0x0

    .line 451
    .local v4, cachePos:I
    invoke-static {}, Lcom/spritefish/camera/Util;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation()[I

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 477
    :goto_0
    const/4 v12, 0x0

    .local v12, y:I
    :goto_1
    move/from16 v0, p3

    if-lt v12, v0, :cond_4

    .line 541
    return-void

    .line 453
    .end local v12           #y:I
    :pswitch_0
    const/4 v8, 0x0

    .line 454
    const/4 v9, 0x0

    .line 455
    const/4 v4, -0x1

    .line 456
    goto :goto_0

    .line 458
    :pswitch_1
    add-int/lit8 v8, p3, -0x1

    .line 459
    const/4 v4, -0x1

    .line 460
    const/4 v9, 0x0

    .line 461
    goto :goto_0

    .line 463
    :pswitch_2
    add-int/lit8 v8, p2, -0x1

    .line 464
    add-int/lit8 v9, p3, -0x1

    .line 465
    mul-int v4, p2, p3

    .line 466
    goto :goto_0

    .line 468
    :pswitch_3
    const/4 v8, 0x0

    .line 469
    add-int/lit8 v9, p2, -0x1

    .line 470
    mul-int v4, p2, p3

    .line 471
    goto :goto_0

    .line 478
    .restart local v12       #y:I
    :cond_4
    mul-int v6, v12, p2

    .line 479
    .local v6, pixPtr:I
    shr-int/lit8 v5, v12, 0x1

    .line 480
    .local v5, jDiv2:I
    const/4 v11, 0x0

    .local v11, x:I
    :goto_2
    move/from16 v0, p2

    if-lt v11, v0, :cond_5

    .line 477
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 483
    :cond_5
    invoke-static {}, Lcom/spritefish/camera/Util;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation()[I

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_1

    .line 529
    :goto_3
    aget-byte v3, p1, v6

    .line 530
    .local v3, R:I
    move v2, v3

    .line 531
    .local v2, G:I
    move v1, v3

    .line 534
    .local v1, B:I
    const/high16 v13, -0x100

    shl-int/lit8 v14, v1, 0x10

    add-int/2addr v13, v14

    shl-int/lit8 v14, v2, 0x8

    add-int/2addr v13, v14

    add-int/2addr v13, v3

    aput v13, p0, v4

    .line 536
    add-int/lit8 v6, v6, 0x1

    .line 480
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 485
    .end local v1           #B:I
    .end local v2           #G:I
    .end local v3           #R:I
    :pswitch_4
    move/from16 v0, p2

    if-ne v8, v0, :cond_6

    .line 486
    add-int/lit8 v9, v9, 0x1

    .line 487
    const/4 v8, 0x0

    .line 490
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 491
    add-int/lit8 v8, v8, 0x1

    .line 492
    goto :goto_3

    .line 494
    :pswitch_5
    move/from16 v0, p2

    if-ne v9, v0, :cond_7

    .line 495
    add-int/lit8 v8, v8, -0x1

    .line 496
    const/4 v9, 0x0

    .line 497
    move v4, v8

    .line 501
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 502
    goto :goto_3

    .line 499
    :cond_7
    add-int v4, v4, p3

    goto :goto_4

    .line 504
    :pswitch_6
    const/4 v13, -0x1

    if-ne v8, v13, :cond_8

    .line 505
    add-int/lit8 v9, v9, -0x1

    .line 506
    add-int/lit8 v8, p2, -0x1

    .line 508
    :cond_8
    add-int/lit8 v4, v4, -0x1

    .line 510
    add-int/lit8 v8, v8, -0x1

    .line 511
    goto :goto_3

    .line 513
    :pswitch_7
    const/4 v13, -0x1

    if-ne v9, v13, :cond_9

    .line 514
    add-int/lit8 v8, v8, 0x1

    .line 515
    add-int/lit8 v9, p2, -0x1

    .line 516
    add-int/lit8 v13, p2, -0x1

    mul-int v13, v13, p3

    add-int v4, v13, v8

    .line 520
    :goto_5
    add-int/lit8 v9, v9, -0x1

    .line 521
    goto :goto_3

    .line 518
    :cond_9
    sub-int v4, v4, p3

    goto :goto_5

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 483
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public static filesizeToMb(J)Ljava/lang/String;
    .locals 6
    .parameter "sz"

    .prologue
    .line 615
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, format:Ljava/text/DecimalFormat;
    const-wide/32 v1, 0x100000

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    long-to-double v2, p0

    const-wide/high16 v4, 0x4090

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    long-to-double v2, p0

    const-wide/high16 v4, 0x4130

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFacesFromYuv([I[BLcom/spritefish/camera/RotationManager$Rotation;II)I
    .locals 13
    .parameter "rgbi"
    .parameter "yuv"
    .parameter "rotation"
    .parameter "fullwidth"
    .parameter "fullheight"

    .prologue
    .line 715
    const/4 v5, 0x2

    .line 716
    .local v5, div:I
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/spritefish/camera/Util;->decodeYUVSmaller([I[BIILcom/spritefish/camera/RotationManager$Rotation;II)V

    .line 717
    const-string v0, "face"

    const-string v1, "detection faces"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    div-int v12, p3, v5

    .line 720
    .local v12, width:I
    div-int v11, p4, v5

    .line 721
    .local v11, height:I
    const-string v0, "gylle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ROT : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    if-ne p2, v0, :cond_3

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 723
    .local v7, b:Landroid/graphics/Bitmap;
    :goto_0
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    if-ne p2, v0, :cond_4

    :cond_1
    new-instance v9, Landroid/media/FaceDetector;

    const/4 v0, 0x1

    invoke-direct {v9, v12, v11, v0}, Landroid/media/FaceDetector;-><init>(III)V

    .line 724
    .local v9, fd:Landroid/media/FaceDetector;
    :goto_1
    const-string v0, "gylle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BITMAP w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/16 v0, 0xa

    new-array v8, v0, [Landroid/media/FaceDetector$Face;

    .line 726
    .local v8, faces:[Landroid/media/FaceDetector$Face;
    invoke-virtual {v9, v7, v8}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v10

    .line 747
    .local v10, found:I
    if-lez v10, :cond_2

    .line 749
    const-string v0, "face"

    const-string v1, "Found face"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 752
    const/4 v7, 0x0

    .line 753
    return v10

    .line 722
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #faces:[Landroid/media/FaceDetector$Face;
    .end local v9           #fd:Landroid/media/FaceDetector;
    .end local v10           #found:I
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    .line 723
    .restart local v7       #b:Landroid/graphics/Bitmap;
    :cond_4
    new-instance v9, Landroid/media/FaceDetector;

    const/4 v0, 0x1

    invoke-direct {v9, v11, v12, v0}, Landroid/media/FaceDetector;-><init>(III)V

    goto :goto_1
.end method

.method public static getLargestPreviewSize(Landroid/hardware/Camera;II)Landroid/hardware/Camera$Size;
    .locals 12
    .parameter "camera"
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/16 v11, 0x1e0

    .line 561
    const/4 v6, 0x0

    .line 562
    .local v6, usedSize:Landroid/hardware/Camera$Size;
    const-wide/16 v2, 0x0

    .line 563
    .local v2, mostPixels:J
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 564
    .local v5, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 584
    invoke-static {}, Lcom/spritefish/camera/Util;->isLGDevice()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 587
    const/16 v8, 0x140

    if-ne p1, v8, :cond_2

    if-ne p2, v11, :cond_2

    .line 589
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 598
    :cond_2
    return-object v6

    .line 564
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 566
    .local v4, size:Landroid/hardware/Camera$Size;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_5

    const-wide/32 v0, 0x100000

    .line 567
    .local v0, maxSize:J
    :goto_2
    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v9, v10

    int-to-long v9, v9

    cmp-long v9, v9, v2

    if-lez v9, :cond_0

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v9, v10

    int-to-long v9, v9

    cmp-long v9, v9, v0

    if-gez v9, :cond_0

    .line 568
    const/4 v7, 0x1

    .line 570
    .local v7, useit:Z
    invoke-static {}, Lcom/spritefish/camera/Util;->isLGDevice()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 571
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    const/16 v10, 0x2d0

    if-ne v9, v10, :cond_4

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    if-ne v9, v11, :cond_4

    .line 573
    const/4 v7, 0x0

    .line 576
    :cond_4
    if-eqz v7, :cond_0

    .line 578
    move-object v6, v4

    .line 579
    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v9, v10

    int-to-long v2, v9

    goto :goto_0

    .line 566
    .end local v0           #maxSize:J
    .end local v7           #useit:Z
    :cond_5
    const-wide/32 v0, 0x80000

    goto :goto_2

    .line 589
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 590
    .restart local v4       #size:Landroid/hardware/Camera$Size;
    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v9, v10

    const v10, 0x25800

    if-ne v9, v10, :cond_1

    .line 591
    move-object v6, v4

    .line 592
    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v9, v10

    int-to-long v2, v9

    goto :goto_1
.end method

.method public static getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "path"

    .prologue
    .line 626
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 628
    .local v2, exif:Landroid/media/ExifInterface;
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/spritefish/camera/Util;->rotateImage(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 634
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #exif:Landroid/media/ExifInterface;
    :goto_0
    return-object v3

    .line 631
    :catch_0
    move-exception v1

    .line 632
    .local v1, e:Ljava/io/IOException;
    const-string v3, "preview"

    invoke-static {v3, v1}, Lcom/spritefish/camera/LO;->reportException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 633
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 634
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 709
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLGDevice()Z
    .locals 2

    .prologue
    .line 557
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidPreviewSize(Landroid/hardware/Camera;II)Z
    .locals 7
    .parameter "camera"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 602
    const/4 v4, 0x0

    .line 603
    .local v4, usedSize:Landroid/hardware/Camera$Size;
    const-wide/16 v0, 0x0

    .line 604
    .local v0, mostPixels:J
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 605
    .local v3, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 610
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 605
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 606
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, p2, :cond_0

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, p1, :cond_0

    .line 607
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "b"
    .parameter "exif"

    .prologue
    .line 640
    if-nez p0, :cond_0

    .line 641
    const/4 p0, 0x0

    .line 666
    .end local p0
    :goto_0
    return-object p0

    .line 643
    .restart local p0
    :cond_0
    const/4 v10, 0x0

    .line 644
    .local v10, rotate:F
    :try_start_0
    const-string v0, "Orientation"

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 645
    .local v9, r:I
    packed-switch v9, :pswitch_data_0

    .line 652
    :goto_1
    :pswitch_0
    const-string v0, "insta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exif orientation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 655
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {v5, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 657
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .local v7, b2:Landroid/graphics/Bitmap;
    move-object p0, v7

    .line 658
    goto :goto_0

    .line 647
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :pswitch_1
    const/4 v10, 0x0

    goto :goto_1

    .line 648
    :pswitch_2
    const/high16 v10, 0x4334

    goto :goto_1

    .line 649
    :pswitch_3
    const/high16 v10, 0x42b4

    goto :goto_1

    .line 650
    :pswitch_4
    const/high16 v10, 0x4387

    goto :goto_1

    .line 660
    .end local v9           #r:I
    :catch_0
    move-exception v8

    .line 662
    .local v8, e:Ljava/lang/Error;
    goto :goto_0

    .line 664
    .end local v8           #e:Ljava/lang/Error;
    :catch_1
    move-exception v8

    .line 666
    .local v8, e:Ljava/lang/Exception;
    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static safeLongToInt(J)I
    .locals 4
    .parameter "l"

    .prologue
    .line 38
    long-to-int v0, p0

    .line 39
    .local v0, i:I
    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " cannot be cast to int without changing its value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    return v0
.end method

.method public static safeSleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 701
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static scaleRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5
    .parameter "r"
    .parameter "scale"

    .prologue
    .line 757
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iget v2, p0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    iget v3, p0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static sleep(J)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 544
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 548
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static whoCalledMe(I)Ljava/lang/String;
    .locals 5
    .parameter "levels"

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 118
    .local v0, elements:[Ljava/lang/StackTraceElement;
    const-string v2, ""

    .line 119
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, p0, 0x3

    if-le v1, v3, :cond_1

    .line 127
    :cond_0
    return-object v2

    .line 121
    :cond_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(ln "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    add-int/lit8 v3, p0, 0x3

    if-ge v1, v3, :cond_2

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " <== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
