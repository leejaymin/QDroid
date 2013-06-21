.class public Lcom/rookiestudio/perfectviewer/TUtility;
.super Ljava/lang/Object;
.source "TUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BacklightBrighter(Landroid/view/Window;)V
    .locals 2
    .parameter "MainWindow"

    .prologue
    .line 306
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableBrightnessControl:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    .line 310
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->SetBacklightBrightness(Landroid/view/Window;I)V

    goto :goto_0
.end method

.method public static BacklightDarker(Landroid/view/Window;)V
    .locals 2
    .parameter "MainWindow"

    .prologue
    .line 315
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableBrightnessControl:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    .line 319
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->SetBacklightBrightness(Landroid/view/Window;I)V

    goto :goto_0
.end method

.method public static CopyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .parameter "SourceFile"
    .parameter "DestFile"

    .prologue
    const/4 v5, 0x0

    .line 351
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 353
    .local v3, tISStream:Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 355
    .local v4, tOutStream:Ljava/io/FileOutputStream;
    const/16 v6, 0x1000

    new-array v1, v6, [B

    .line 356
    .local v1, tBuffer:[B
    const/4 v2, 0x0

    .line 357
    .local v2, tCount:I
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    .line 360
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 361
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 366
    const/4 v5, 0x1

    .end local v1           #tBuffer:[B
    .end local v2           #tCount:I
    .end local v3           #tISStream:Ljava/io/InputStream;
    .end local v4           #tOutStream:Ljava/io/FileOutputStream;
    :goto_1
    return v5

    .line 358
    .restart local v1       #tBuffer:[B
    .restart local v2       #tCount:I
    .restart local v3       #tISStream:Ljava/io/InputStream;
    .restart local v4       #tOutStream:Ljava/io/FileOutputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    .end local v1           #tBuffer:[B
    .end local v2           #tCount:I
    .end local v3           #tISStream:Ljava/io/InputStream;
    .end local v4           #tOutStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static CreateNomediaFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "Folder"

    .prologue
    const/4 v3, 0x0

    .line 371
    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 388
    :goto_0
    return v2

    .line 374
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 377
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, NomediaFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    const/4 v2, 0x1

    goto :goto_0

    .line 382
    :cond_2
    const/4 v2, 0x0

    .line 384
    .local v2, result:Z
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move v2, v3

    .line 386
    goto :goto_0
.end method

.method public static DeleteFolder(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 222
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2

    .line 215
    .restart local v0       #files:[Ljava/io/File;
    .restart local v1       #i:I
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TUtility;->DeleteFolder(Ljava/io/File;)Z

    .line 214
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static Dip2Px(F)I
    .locals 2
    .parameter "dipValue"

    .prologue
    .line 38
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static DoClearData(I)V
    .locals 4
    .parameter "DataType"

    .prologue
    const/4 v3, 0x1

    .line 255
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 257
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 258
    if-nez p0, :cond_1

    .line 259
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 265
    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 267
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TUtility$6;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TUtility$6;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TUtility$7;

    invoke-direct {v3}, Lcom/rookiestudio/perfectviewer/TUtility$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 293
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 294
    return-void

    .line 260
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_1
    if-ne p0, v3, :cond_2

    .line 261
    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 262
    :cond_2
    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 263
    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static DoSaveHistory(Ljava/lang/String;II)V
    .locals 1
    .parameter "FileName"
    .parameter "Index"
    .parameter "Total"

    .prologue
    .line 227
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2}, Lcom/rookiestudio/perfectviewer/TUtility;->DoSaveHistory(Ljava/lang/String;III)V

    .line 228
    return-void
.end method

.method public static DoSaveHistory(Ljava/lang/String;III)V
    .locals 2
    .parameter "FileName"
    .parameter "FileOrder"
    .parameter "Index"
    .parameter "Total"

    .prologue
    .line 232
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rookiestudio/perfectviewer/TUtility$5;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/rookiestudio/perfectviewer/TUtility$5;-><init>(ILjava/lang/String;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    return-void
.end method

.method public static DrawTextEx(Landroid/graphics/Canvas;Ljava/lang/String;FFIIILandroid/text/TextPaint;)V
    .locals 3
    .parameter "aCanvas"
    .parameter "TextToDraw"
    .parameter "x"
    .parameter "y"
    .parameter "EffectType"
    .parameter "TextColor"
    .parameter "ShadowColor"
    .parameter "MTextPaint"

    .prologue
    const/high16 v1, 0x4000

    const/high16 v2, 0x3f80

    .line 443
    invoke-virtual {p7, p6}, Landroid/text/TextPaint;->setColor(I)V

    .line 444
    packed-switch p4, :pswitch_data_0

    .line 462
    :goto_0
    invoke-virtual {p7, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 463
    invoke-virtual {p0, p1, p2, p3, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 464
    return-void

    .line 446
    :pswitch_0
    add-float v0, p2, v1

    add-float/2addr v1, p3

    invoke-virtual {p0, p1, v0, v1, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 449
    :pswitch_1
    sub-float v0, p2, v2

    sub-float v1, p3, v2

    invoke-virtual {p0, p1, v0, v1, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 452
    :pswitch_2
    sub-float v0, p2, v2

    sub-float v1, p3, v2

    invoke-virtual {p0, p1, v0, v1, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 453
    sub-float v0, p3, v2

    invoke-virtual {p0, p1, p2, v0, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 454
    add-float v0, p2, v2

    sub-float v1, p3, v2

    invoke-virtual {p0, p1, v0, v1, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 455
    sub-float v0, p2, v2

    invoke-virtual {p0, p1, v0, p3, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 456
    add-float v0, p2, v2

    invoke-virtual {p0, p1, v0, p3, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 457
    sub-float v0, p2, v2

    add-float v1, p3, v2

    invoke-virtual {p0, p1, v0, v1, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 458
    add-float v0, p3, v2

    invoke-virtual {p0, p1, p2, v0, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 459
    add-float v0, p2, v2

    add-float v1, p3, v2

    invoke-virtual {p0, p1, v0, v1, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static ErrorAndExit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "Parent"
    .parameter "Message"

    .prologue
    .line 121
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00dc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 124
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 127
    const v2, 0x104000a

    new-instance v3, Lcom/rookiestudio/perfectviewer/TUtility$2;

    invoke-direct {v3}, Lcom/rookiestudio/perfectviewer/TUtility$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 139
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    return-void
.end method

.method public static ForceCreateFolder(Ljava/lang/String;)Z
    .locals 3
    .parameter "Target"

    .prologue
    .line 42
    const/4 v0, 0x1

    .line 43
    .local v0, Result:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, TargetFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    .line 51
    :goto_0
    return v2

    .line 47
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    .line 51
    goto :goto_0
.end method

.method public static native GetFreeMemory()I
.end method

.method public static native GetProcessMemory(I)I
.end method

.method public static GetSMBDisplayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "S"

    .prologue
    .line 434
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, Pos:I
    const-string v1, "smb://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "//"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 438
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static native GetTotalMemory()I
.end method

.method public static ListFolder(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7
    .parameter "ParentFolder"
    .parameter "ShowHidden"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    new-instance v3, Lcom/rookiestudio/perfectviewer/TUtility$8;

    invoke-direct {v3}, Lcom/rookiestudio/perfectviewer/TUtility$8;-><init>()V

    .line 338
    .local v3, filter:Ljava/io/FileFilter;
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, Parent:Ljava/io/File;
    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 340
    .local v0, FileList:[Ljava/io/File;
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    .line 341
    .local v2, Result:[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object p0, v2, v5

    .line 342
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v0

    if-lt v4, v5, :cond_1

    .line 345
    return-object v2

    .line 332
    .end local v0           #FileList:[Ljava/io/File;
    .end local v1           #Parent:Ljava/io/File;
    .end local v2           #Result:[Ljava/lang/String;
    .end local v3           #filter:Ljava/io/FileFilter;
    .end local v4           #i:I
    :cond_0
    new-instance v3, Lcom/rookiestudio/perfectviewer/TUtility$9;

    invoke-direct {v3}, Lcom/rookiestudio/perfectviewer/TUtility$9;-><init>()V

    .restart local v3       #filter:Ljava/io/FileFilter;
    goto :goto_0

    .line 343
    .restart local v0       #FileList:[Ljava/io/File;
    .restart local v1       #Parent:Ljava/io/File;
    .restart local v2       #Result:[Ljava/lang/String;
    .restart local v4       #i:I
    :cond_1
    add-int/lit8 v5, v4, 0x1

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 342
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static MessageBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "Parent"
    .parameter "Title"
    .parameter "Message"
    .parameter "Icon"

    .prologue
    .line 102
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 108
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TUtility$1;

    invoke-direct {v3}, Lcom/rookiestudio/perfectviewer/TUtility$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void
.end method

.method public static OpenDonation(Landroid/app/Activity;)V
    .locals 4
    .parameter "Parent"

    .prologue
    .line 67
    const-string v0, "market://details?id=com.rookiestudio.perfectviewer.donate"

    .line 68
    .local v0, URL:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .local v1, browserIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static OpenDonation1(Landroid/app/Activity;)V
    .locals 4
    .parameter "Parent"

    .prologue
    .line 74
    const-string v0, "market://details?id=com.rookiestudio.perfectviewer.donate2"

    .line 75
    .local v0, URL:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .local v1, browserIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public static OpenDonation2(Landroid/app/Activity;)V
    .locals 6
    .parameter "Parent"

    .prologue
    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, Lang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, Country:Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "tw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    const-string v2, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=55A2EG8U9GCY4&lc=TW&item_name=PerfectViewer&no_note=0&currency_code=TWD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"

    .line 95
    .local v2, URL:Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .local v3, browserIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void

    .line 86
    .end local v2           #URL:Ljava/lang/String;
    .end local v3           #browserIntent:Landroid/content/Intent;
    :cond_0
    const-string v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "hk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    const-string v2, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=55A2EG8U9GCY4&lc=HK&item_name=PerfectViewer&no_note=0&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"

    .restart local v2       #URL:Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v2           #URL:Ljava/lang/String;
    :cond_1
    const-string v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "cn"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    const-string v2, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=55A2EG8U9GCY4&lc=CN&item_name=PerfectViewer&no_note=0&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"

    .restart local v2       #URL:Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v2           #URL:Ljava/lang/String;
    :cond_2
    const-string v4, "ja"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    const-string v2, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=55A2EG8U9GCY4&lc=JP&item_name=PerfectViewer&no_note=0&currency_code=JPY&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"

    .restart local v2       #URL:Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v2           #URL:Ljava/lang/String;
    :cond_3
    const-string v2, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=55A2EG8U9GCY4&lc=US&item_name=PerfectViewer&no_note=0&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"

    .restart local v2       #URL:Ljava/lang/String;
    goto :goto_0
.end method

.method public static OpenURL(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .parameter "Parent"
    .parameter "URL"

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .local v0, browserIntent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static SetBacklightBrightness(Landroid/view/Window;I)V
    .locals 4
    .parameter "MainWindow"
    .parameter "value"

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 299
    .local v0, WindowLayout:Landroid/view/WindowManager$LayoutParams;
    int-to-float v2, p1

    const/high16 v3, 0x4120

    div-float v1, v2, v3

    .line 300
    .local v1, aa:F
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 302
    return-void
.end method

.method public static SetBootReceiver(Z)V
    .locals 5
    .parameter "OnOff"

    .prologue
    const/4 v4, 0x1

    .line 510
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 511
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.rookiestudio.perfectviewer.TBootReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {v1, v0, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method public static SetScreenOrientation(Landroid/app/Activity;I)V
    .locals 5
    .parameter "Parent"
    .parameter "Orientation"

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 469
    .local v0, CurrentOrientation:I
    const/4 v1, 0x4

    .line 470
    .local v1, RequestedOrientation:I
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 484
    :goto_0
    if-eq v0, v1, :cond_0

    .line 485
    const-string v2, "perfectviewer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setRequestedOrientation:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 488
    :cond_0
    return-void

    .line 472
    :pswitch_0
    const/4 v1, 0x1

    .line 473
    goto :goto_0

    .line 475
    :pswitch_1
    const/4 v1, 0x0

    .line 476
    goto :goto_0

    .line 478
    :pswitch_2
    const/16 v1, 0x9

    .line 479
    goto :goto_0

    .line 481
    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static ShowAbout(Landroid/app/Activity;)V
    .locals 1
    .parameter "Parent"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->ShowAbout(Landroid/app/Activity;I)V

    .line 145
    return-void
.end method

.method public static ShowAbout(Landroid/app/Activity;I)V
    .locals 1
    .parameter "Parent"
    .parameter "Mode"

    .prologue
    .line 149
    new-instance v0, Lcom/rookiestudio/perfectviewer/TAboutDialog;

    invoke-direct {v0, p0, p1}, Lcom/rookiestudio/perfectviewer/TAboutDialog;-><init>(Landroid/app/Activity;I)V

    .line 150
    .local v0, AboutDialog:Lcom/rookiestudio/perfectviewer/TAboutDialog;
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->show()V

    .line 151
    return-void
.end method

.method public static ShowInformarion()V
    .locals 16

    .prologue
    .line 177
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Lcom/rookiestudio/perfectviewer/TUtility;->GetProcessMemory(I)I

    move-result v13

    mul-int/lit16 v13, v13, 0x400

    int-to-long v9, v13

    .line 178
    .local v9, Used:J
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TUtility;->GetTotalMemory()I

    move-result v13

    mul-int/lit16 v13, v13, 0x400

    int-to-long v7, v13

    .line 179
    .local v7, TotalMem:J
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TUtility;->GetFreeMemory()I

    move-result v13

    mul-int/lit16 v13, v13, 0x400

    int-to-long v3, v13

    .line 180
    .local v3, FreeMem:J
    const-wide/16 v0, 0x0

    .line 181
    .local v0, BookshelfDB:J
    const-wide/16 v5, 0x0

    .line 182
    .local v5, ThumbnailDB:J
    new-instance v2, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "perfectviewer.db"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, BookshelfFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    long-to-int v13, v13

    int-to-long v0, v13

    .line 186
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2           #BookshelfFile:Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/thumbdata.db"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v2       #BookshelfFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 188
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    long-to-int v13, v13

    int-to-long v5, v13

    .line 190
    :cond_1
    new-instance v12, Landroid/app/AlertDialog$Builder;

    sget-object v13, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v12, alt_bld:Landroid/app/AlertDialog$Builder;
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v15, 0x7f0a00f5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 192
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v15, 0x7f0a00f7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9, v10}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 193
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v15, 0x7f0a00f6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3, v4}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 194
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v15, 0x7f0a00f8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 195
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v15, 0x7f0a00f9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5, v6}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 191
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 196
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 197
    const v14, 0x104000a

    new-instance v15, Lcom/rookiestudio/perfectviewer/TUtility$4;

    invoke-direct {v15}, Lcom/rookiestudio/perfectviewer/TUtility$4;-><init>()V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 205
    .local v11, alert:Landroid/app/AlertDialog;
    const v13, 0x7f0a00f4

    invoke-virtual {v11, v13}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 207
    const v13, 0x108009b

    invoke-virtual {v11, v13}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 208
    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 209
    return-void
.end method

.method public static ShowWarning(Landroid/app/Activity;)V
    .locals 5
    .parameter "Parent"

    .prologue
    .line 156
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v1, alt_bld:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 158
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 159
    const v3, 0x104000a

    new-instance v4, Lcom/rookiestudio/perfectviewer/TUtility$3;

    invoke-direct {v4, p0}, Lcom/rookiestudio/perfectviewer/TUtility$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 169
    .local v0, alert:Landroid/app/AlertDialog;
    const v2, 0x7f0a0074

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 171
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 173
    return-void
.end method

.method public static WriteToFile([BLjava/lang/String;)V
    .locals 3
    .parameter "array"
    .parameter "FileName"

    .prologue
    .line 421
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 422
    .local v2, stream:Ljava/io/FileOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v1

    .line 425
    .local v1, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 428
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLocale(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "c"
    .parameter "Language"

    .prologue
    const/4 v6, 0x2

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 495
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 496
    .local v2, config:Landroid/content/res/Configuration;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 497
    .local v3, dm:Landroid/util/DisplayMetrics;
    sput-object p1, Lcom/rookiestudio/perfectviewer/Config;->CurrentLanguage:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 499
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, L:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, R:Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 505
    .end local v0           #L:Ljava/lang/String;
    .end local v1           #R:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 506
    return-void

    .line 503
    :cond_0
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v5, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public static size2String(F)Ljava/lang/String;
    .locals 7
    .parameter "size"

    .prologue
    const/high16 v6, 0x447a

    const/4 v5, 0x0

    const/high16 v4, 0x4480

    .line 398
    cmpl-float v3, p0, v5

    if-nez v3, :cond_0

    .line 399
    const-string v3, "0K"

    .line 415
    :goto_0
    return-object v3

    .line 401
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###,###.#"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, nf:Ljava/text/DecimalFormat;
    const-string v0, "K"

    .line 403
    .local v0, SizeUnit:Ljava/lang/String;
    div-float v2, p0, v4

    .line 404
    .local v2, size2:F
    cmpg-float v3, v2, v5

    if-gez v3, :cond_1

    .line 405
    const/high16 v2, 0x3f80

    .line 407
    :cond_1
    cmpl-float v3, v2, v6

    if-lez v3, :cond_2

    .line 408
    div-float/2addr v2, v4

    .line 409
    const-string v0, "M"

    .line 410
    cmpl-float v3, v2, v6

    if-lez v3, :cond_2

    .line 411
    div-float/2addr v2, v4

    .line 412
    const-string v0, "G"

    .line 415
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static size2String(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 393
    long-to-float v0, p0

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
