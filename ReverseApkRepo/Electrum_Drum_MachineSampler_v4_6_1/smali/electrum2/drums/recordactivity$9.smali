.class Lelectrum2/drums/recordactivity$9;
.super Ljava/lang/Object;
.source "recordactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/recordactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/recordactivity;


# direct methods
.method constructor <init>(Lelectrum2/drums/recordactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/recordactivity$9;->this$0:Lelectrum2/drums/recordactivity;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v13, 0x0

    .line 370
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/electrum/temprecord/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v11, v11, Lelectrum2/drums/soundObj;->drumname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".wav"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, tempfilename:Ljava/lang/String;
    sput-object v7, Lelectrum2/drums/globalSounds;->recordedfilename:Ljava/lang/String;

    .line 373
    const/4 v9, 0x0

    .line 376
    .local v9, waserror:Z
    iget-object v10, p0, Lelectrum2/drums/recordactivity$9;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v10, v10, Lelectrum2/drums/recordactivity;->soundbuffer:[S

    if-eqz v10, :cond_1

    .line 381
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v4, outfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 384
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 386
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 388
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "rws"

    invoke-direct {v3, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v3, of:Ljava/io/RandomAccessFile;
    const/4 v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 391
    .local v5, tempbuff1:Ljava/nio/ByteBuffer;
    const/4 v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 393
    .local v6, tempbuff2:Ljava/nio/ByteBuffer;
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 394
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 396
    sget v10, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    mul-int/lit16 v10, v10, 0x5622

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 397
    sget v10, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    mul-int/lit16 v10, v10, 0x5622

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x24

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 400
    sget-object v10, Lelectrum2/drums/recordactivity;->headerdata:[B

    invoke-virtual {v3, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 401
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 402
    sget-object v10, Lelectrum2/drums/recordactivity;->headerdata2:[B

    invoke-virtual {v3, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 404
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 406
    sget v10, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    mul-int/lit16 v10, v10, 0x5622

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 407
    .local v0, TempBuff:Ljava/nio/ByteBuffer;
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 410
    const/4 v1, 0x0

    .local v1, counter2:I
    :goto_0
    iget-object v10, p0, Lelectrum2/drums/recordactivity$9;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v10, v10, Lelectrum2/drums/recordactivity;->soundbuffer:[S

    array-length v10, v10

    if-lt v1, v10, :cond_2

    .line 415
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 417
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0           #TempBuff:Ljava/nio/ByteBuffer;
    .end local v1           #counter2:I
    .end local v3           #of:Ljava/io/RandomAccessFile;
    .end local v4           #outfile:Ljava/io/File;
    .end local v5           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v6           #tempbuff2:Ljava/nio/ByteBuffer;
    :goto_1
    if-nez v9, :cond_3

    .line 436
    iget-object v10, p0, Lelectrum2/drums/recordactivity$9;->this$0:Lelectrum2/drums/recordactivity;

    const/4 v11, -0x1

    invoke-virtual {v10, v11, v13}, Lelectrum2/drums/recordactivity;->setResult(ILandroid/content/Intent;)V

    .line 446
    :cond_1
    :goto_2
    iget-object v10, p0, Lelectrum2/drums/recordactivity$9;->this$0:Lelectrum2/drums/recordactivity;

    invoke-virtual {v10}, Lelectrum2/drums/recordactivity;->finish()V

    .line 451
    return-void

    .line 412
    .restart local v0       #TempBuff:Ljava/nio/ByteBuffer;
    .restart local v1       #counter2:I
    .restart local v3       #of:Ljava/io/RandomAccessFile;
    .restart local v4       #outfile:Ljava/io/File;
    .restart local v5       #tempbuff1:Ljava/nio/ByteBuffer;
    .restart local v6       #tempbuff2:Ljava/nio/ByteBuffer;
    :cond_2
    :try_start_1
    iget-object v10, p0, Lelectrum2/drums/recordactivity$9;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v10, v10, Lelectrum2/drums/recordactivity;->soundbuffer:[S

    aget-short v10, v10, v1

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v0           #TempBuff:Ljava/nio/ByteBuffer;
    .end local v1           #counter2:I
    .end local v3           #of:Ljava/io/RandomAccessFile;
    .end local v4           #outfile:Ljava/io/File;
    .end local v5           #tempbuff1:Ljava/nio/ByteBuffer;
    .end local v6           #tempbuff2:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 424
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lelectrum2/drums/recordactivity$9;->this$0:Lelectrum2/drums/recordactivity;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error saving recorded sound -  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 428
    .local v8, temptoast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 438
    .end local v2           #e:Ljava/lang/Exception;
    .end local v8           #temptoast:Landroid/widget/Toast;
    :cond_3
    iget-object v10, p0, Lelectrum2/drums/recordactivity$9;->this$0:Lelectrum2/drums/recordactivity;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v13}, Lelectrum2/drums/recordactivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2
.end method
