.class public Lcom/rookiestudio/perfectviewer/TImageCache;
.super Ljava/lang/Thread;
.source "TImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;,
        Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;,
        Lcom/rookiestudio/perfectviewer/TImageCache$ThreadShowMessage;
    }
.end annotation


# static fields
.field public static ImageCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/perfectviewer/TBitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static LoadImageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public MaxCacheCount:I

.field public threadSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->MaxCacheCount:I

    .line 13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->threadSuspended:Z

    .line 23
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->MaxCacheCount:I

    .line 24
    return-void
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;II)V
    .locals 6
    .parameter "FN"
    .parameter "i"
    .parameter "dir"

    .prologue
    .line 275
    sget-object v3, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 276
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/rookiestudio/perfectviewer/TImageCache;->FindItem(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 277
    .local v1, aItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    if-eqz v1, :cond_1

    .line 279
    :try_start_1
    iput p3, v1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Direction:I

    .line 280
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v2, :cond_0

    .line 281
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 298
    :goto_1
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TImageCache;->CheckQueueCount()V

    .line 288
    new-instance v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;-><init>(Lcom/rookiestudio/perfectviewer/TImageCache;)V

    .line 289
    .local v0, NewItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    iput-object p1, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    .line 290
    const/4 v2, -0x1

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileOrder:I

    .line 291
    iput p2, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->PageIndex:I

    .line 292
    iput p3, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Direction:I

    .line 293
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Resample:I

    .line 294
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TImageCache;->TestSuspended()V

    goto :goto_1

    .line 275
    .end local v0           #NewItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    .end local v1           #aItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 283
    .restart local v1       #aItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public AddItem(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .parameter "FN"
    .parameter "PW"
    .parameter "Order"
    .parameter "i"
    .parameter "dir"

    .prologue
    .line 302
    sget-object v3, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 303
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/rookiestudio/perfectviewer/TImageCache;->FindItem(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 304
    .local v1, aItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    if-eqz v1, :cond_1

    .line 306
    :try_start_1
    iput p5, v1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Direction:I

    .line 307
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v2, :cond_0

    .line 308
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 326
    :goto_1
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TImageCache;->CheckQueueCount()V

    .line 315
    new-instance v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;-><init>(Lcom/rookiestudio/perfectviewer/TImageCache;)V

    .line 316
    .local v0, NewItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    iput-object p1, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    .line 317
    iput-object p2, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Password:Ljava/lang/String;

    .line 318
    iput p3, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileOrder:I

    .line 319
    iput p4, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->PageIndex:I

    .line 320
    iput p5, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Direction:I

    .line 321
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Resample:I

    .line 322
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TImageCache;->TestSuspended()V

    goto :goto_1

    .line 302
    .end local v0           #NewItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    .end local v1           #aItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 310
    .restart local v1       #aItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public CheckCacheCount(Ljava/lang/String;I)V
    .locals 5
    .parameter "FN"
    .parameter "Order"

    .prologue
    .line 248
    sget-object v3, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 249
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TImageCache;->FindCacheImage(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TBitmap;

    move-result-object v1

    .line 250
    .local v1, aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;
    if-nez v1, :cond_0

    .line 251
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->EnableImageCache:Z

    if-eqz v2, :cond_2

    .line 252
    :goto_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->MaxCacheCount:I

    if-gt v2, v4, :cond_1

    .line 248
    :cond_0
    :goto_1
    monitor-exit v3

    .line 271
    return-void

    .line 253
    :cond_1
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->MaxCacheCount:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .local v0, a:Lcom/rookiestudio/perfectviewer/TBitmap;
    :try_start_1
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->Delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    :goto_2
    :try_start_2
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->MaxCacheCount:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 248
    .end local v0           #a:Lcom/rookiestudio/perfectviewer/TBitmap;
    .end local v1           #aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 261
    .restart local v1       #aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;
    :cond_2
    :try_start_3
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 267
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 261
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    .restart local v0       #a:Lcom/rookiestudio/perfectviewer/TBitmap;
    :try_start_4
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->Delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 264
    :catch_0
    move-exception v4

    goto :goto_3

    .line 256
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public CheckQueueCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 244
    .end local v0           #i:I
    :cond_0
    return-void

    .line 237
    .restart local v0       #i:I
    :cond_1
    if-nez v0, :cond_2

    .line 238
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;

    iput v2, v1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Direction:I

    .line 236
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public DeleteAllCache()V
    .locals 4

    .prologue
    .line 212
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 213
    :try_start_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 212
    monitor-exit v2

    .line 221
    return-void

    .line 213
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .local v0, aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    :try_start_1
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->Delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v3

    goto :goto_0

    .line 212
    .end local v0           #aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public DeleteAllScaledImage()V
    .locals 4

    .prologue
    .line 200
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 201
    :try_start_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    monitor-exit v2

    .line 208
    return-void

    .line 201
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .local v0, aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    :try_start_1
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->DeleteResized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v3

    goto :goto_0

    .line 200
    .end local v0           #aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public FindCacheImage(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TBitmap;
    .locals 3
    .parameter "FN"
    .parameter "Order"

    .prologue
    .line 158
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 158
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 159
    .local v0, aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->FileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->FileOrder:I

    if-ne v2, p2, :cond_0

    goto :goto_0
.end method

.method public FindCacheImageIndex(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TBitmap;
    .locals 3
    .parameter "FN"
    .parameter "Order"

    .prologue
    .line 170
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 170
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 171
    .local v0, aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->FileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    if-ne v2, p2, :cond_0

    goto :goto_0
.end method

.method public FindItem(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    .locals 3
    .parameter "FN"
    .parameter "Order"

    .prologue
    .line 225
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 225
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;

    .line 226
    .local v0, aItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileOrder:I

    if-ne v2, p2, :cond_0

    goto :goto_0
.end method

.method public ForceUpdateAll()V
    .locals 4

    .prologue
    .line 191
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 192
    :try_start_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    monitor-exit v2

    .line 196
    return-void

    .line 192
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 193
    .local v0, aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    const/4 v3, -0x1

    iput v3, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentFilter:I

    goto :goto_0

    .line 191
    .end local v0           #aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public LoadItem(Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;)Lcom/rookiestudio/perfectviewer/TBitmap;
    .locals 12
    .parameter "aLoadItem"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 107
    iput-boolean v10, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Loading:Z

    .line 108
    new-instance v4, Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-direct {v4}, Lcom/rookiestudio/perfectviewer/TBitmap;-><init>()V

    .line 109
    .local v4, aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;
    iget-object v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    iput-object v6, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->FileName:Ljava/lang/String;

    .line 110
    iget v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileOrder:I

    iput v6, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->FileOrder:I

    .line 111
    iget v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->PageIndex:I

    iput v6, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    .line 112
    iget v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileOrder:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 114
    iget-object v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->OpenImageFile(Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/rookiestudio/perfectviewer/Config;->EnableCacheScaledImage:Z

    if-eqz v6, :cond_3

    .line 127
    iget v3, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    .line 128
    .local v3, TmpWidth:I
    const/4 v0, 0x0

    .line 129
    .local v0, DoSplit:Z
    sget-boolean v6, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v6, :cond_1

    iget v6, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-double v6, v6

    iget v8, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 130
    const/4 v0, 0x1

    .line 132
    :cond_1
    if-eqz v0, :cond_2

    .line 133
    div-int/lit8 v3, v3, 0x2

    .line 135
    :cond_2
    sget v6, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    int-to-float v7, v3

    iget v8, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v8, v8

    invoke-static {v6, v7, v8}, Lcom/rookiestudio/perfectviewer/TBitmap;->CalcPageFit(IFF)Lcom/rookiestudio/baseclass/TSizeFactor;

    move-result-object v5

    .line 136
    .local v5, factor:Lcom/rookiestudio/baseclass/TSizeFactor;
    iget v6, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v6, v6

    iget v7, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    mul-float v2, v6, v7

    .line 137
    .local v2, NewWidth:F
    iget v6, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v6, v6

    iget v7, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float v1, v6, v7

    .line 140
    .local v1, NewHeight:F
    float-to-int v6, v2

    float-to-int v7, v1

    iget v8, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Resample:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/rookiestudio/perfectviewer/TBitmap;->BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V

    .line 141
    iget v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Resample:I

    iput v6, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentFilter:I

    .line 142
    iget v6, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-ne v6, v10, :cond_3

    iget v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Direction:I

    if-ne v6, v11, :cond_3

    .line 143
    iput v11, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 149
    .end local v0           #DoSplit:Z
    .end local v1           #NewHeight:F
    .end local v2           #NewWidth:F
    .end local v3           #TmpWidth:I
    .end local v5           #factor:Lcom/rookiestudio/baseclass/TSizeFactor;
    :cond_3
    sget-object v7, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 150
    :try_start_0
    sget-object v6, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_1
    return-object v4

    .line 117
    :cond_4
    iget-object v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    invoke-static {v6}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    iget-object v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    iget v7, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileOrder:I

    invoke-virtual {v4, v6, v7}, Lcom/rookiestudio/perfectviewer/TBitmap;->OpenImagePDF(Ljava/lang/String;I)V

    goto :goto_0

    .line 120
    :cond_5
    iget-object v6, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    iget-object v7, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Password:Ljava/lang/String;

    iget v8, p1, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileOrder:I

    invoke-virtual {v4, v6, v7, v8}, Lcom/rookiestudio/perfectviewer/TBitmap;->OpenImageArchive(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public TestSuspended()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->threadSuspended:Z

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->threadSuspended:Z

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 96
    :cond_0
    monitor-exit p0

    .line 102
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public UpdateAllImage()V
    .locals 4

    .prologue
    .line 182
    sget-object v2, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 183
    :try_start_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    monitor-exit v2

    .line 187
    return-void

    .line 183
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 184
    .local v0, aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->UpdateImage()V

    goto :goto_0

    .line 182
    .end local v0           #aItem:Lcom/rookiestudio/perfectviewer/TBitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->threadSuspended:Z

    if-nez v4, :cond_2

    .line 32
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_2
    :try_start_2
    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Global;->ClipingImage:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    iget-object v4, v4, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-nez v4, :cond_3

    .line 46
    :goto_3
    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Global;->IamBusy:Z

    .line 47
    sget-object v4, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 48
    sget-object v4, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;

    .line 49
    .local v2, aLoadItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    iget-object v4, v2, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    iget v5, v2, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileOrder:I

    invoke-virtual {p0, v4, v5}, Lcom/rookiestudio/perfectviewer/TImageCache;->CheckCacheCount(Ljava/lang/String;I)V

    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;
    sget-object v5, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 52
    :try_start_3
    iget-object v4, v2, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileName:Ljava/lang/String;

    iget v6, v2, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->FileOrder:I

    invoke-virtual {p0, v4, v6}, Lcom/rookiestudio/perfectviewer/TImageCache;->FindCacheImage(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TBitmap;

    move-result-object v1

    .line 53
    if-nez v1, :cond_4

    .line 61
    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadItem(Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;)Lcom/rookiestudio/perfectviewer/TBitmap;

    move-result-object v1

    .line 51
    :goto_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    sget-object v5, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    monitor-enter v5

    .line 69
    :try_start_4
    sget-object v4, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    sget-object v4, Lcom/rookiestudio/perfectviewer/TImageCache;->LoadImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 71
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache;->threadSuspended:Z

    .line 68
    :cond_0
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    :goto_5
    :try_start_5
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v4, v4, Lcom/rookiestudio/perfectviewer/TViewer;->SurfaceReady:Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v4, :cond_5

    .line 83
    new-instance v0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;

    iget v4, v2, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Direction:I

    invoke-direct {v0, p0, v1, v4}, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;-><init>(Lcom/rookiestudio/perfectviewer/TImageCache;Lcom/rookiestudio/perfectviewer/TBitmap;I)V

    .line 85
    .local v0, IID:Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;
    :try_start_6
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v4, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 89
    .end local v0           #IID:Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;
    .end local v1           #aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;
    .end local v2           #aLoadItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    :cond_1
    :goto_6
    sput-boolean v7, Lcom/rookiestudio/perfectviewer/Global;->IamBusy:Z

    goto :goto_0

    .line 35
    :cond_2
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 32
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v4

    .line 44
    :catch_0
    move-exception v4

    goto :goto_3

    .line 42
    :cond_3
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/rookiestudio/perfectviewer/TImageCache;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    .line 64
    .restart local v1       #aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;
    .restart local v2       #aLoadItem:Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
    :cond_4
    :try_start_9
    sget-object v4, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    sget-object v4, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 51
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v4

    .line 68
    :catchall_2
    move-exception v4

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v4

    .line 76
    :cond_5
    const-wide/16 v4, 0x32

    :try_start_b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 78
    :catch_1
    move-exception v3

    .line 81
    :goto_7
    return-void

    .line 80
    :catch_2
    move-exception v3

    .line 81
    .local v3, e:Ljava/lang/Exception;
    goto :goto_7

    .line 86
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #IID:Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;
    :catch_3
    move-exception v4

    goto :goto_6
.end method
