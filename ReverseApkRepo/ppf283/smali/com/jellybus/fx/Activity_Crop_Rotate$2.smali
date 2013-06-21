.class Lcom/jellybus/fx/Activity_Crop_Rotate$2;
.super Landroid/os/Handler;
.source "Activity_Crop_Rotate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Crop_Rotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Crop_Rotate;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    .line 141
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "message"

    .prologue
    const v11, 0x7f050031

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v2, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Apply value"

    const-string v6, "Apply"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v5, "Apply"

    invoke-static {v5, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #calls: Lcom/jellybus/fx/Activity_Crop_Rotate;->removeBitmap()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$0(Lcom/jellybus/fx/Activity_Crop_Rotate;)V

    .line 152
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$1(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    if-ne v5, v9, :cond_0

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$2(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    if-ne v5, v9, :cond_0

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$3(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    if-eqz v5, :cond_7

    .line 154
    :cond_0
    new-instance v4, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct {v4}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 155
    .local v4, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v5, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 156
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$4(Lcom/jellybus/fx/Activity_Crop_Rotate;Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 158
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    invoke-virtual {v7, v11}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 159
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #calls: Lcom/jellybus/fx/Activity_Crop_Rotate;->removeBitmap()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$0(Lcom/jellybus/fx/Activity_Crop_Rotate;)V

    .line 162
    :cond_1
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, flip_h:Z
    const/4 v1, 0x0

    .line 168
    .local v1, flip_v:Z
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$3(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$3(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    const/16 v6, 0x5a

    if-ne v5, v6, :cond_8

    .line 170
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v5, v6}, Lcom/jellybus/fx/Juliet;->rotate90Index(II)V

    .line 171
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    invoke-static {v5, v6}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 172
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    invoke-static {v5, v6}, Lcom/jellybus/fx_sub/PictureController;->sizeChange(II)V

    .line 185
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$1(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    if-ne v5, v9, :cond_3

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$2(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    if-eq v5, v9, :cond_6

    .line 186
    :cond_3
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$1(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    if-ne v5, v10, :cond_4

    .line 187
    const/4 v0, 0x1

    .line 188
    :cond_4
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$2(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 189
    const/4 v1, 0x1

    .line 190
    :cond_5
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v0, v1, v5, v6}, Lcom/jellybus/fx/Juliet;->flipBitmapIndex(ZZII)V

    .line 194
    :cond_6
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #calls: Lcom/jellybus/fx/Activity_Crop_Rotate;->removeBitmap()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$0(Lcom/jellybus/fx/Activity_Crop_Rotate;)V

    .line 195
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$4(Lcom/jellybus/fx/Activity_Crop_Rotate;Landroid/graphics/Bitmap;)V

    .line 196
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 199
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 200
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    invoke-virtual {v7, v11}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 204
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 205
    sget v5, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v9, v5, v6, v7}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 206
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #calls: Lcom/jellybus/fx/Activity_Crop_Rotate;->removeBitmap()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$0(Lcom/jellybus/fx/Activity_Crop_Rotate;)V

    .line 209
    .end local v0           #flip_h:Z
    .end local v1           #flip_v:Z
    .end local v4           #urDo:Lcom/jellybus/fx_sub/UndoRedo;
    :cond_7
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v3, intent_main:Landroid/content/Intent;
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    invoke-virtual {v5, v3}, Lcom/jellybus/fx/Activity_Crop_Rotate;->startActivity(Landroid/content/Intent;)V

    .line 211
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->finish()V

    .line 212
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    const/high16 v6, 0x10a

    const v7, 0x10a0001

    invoke-virtual {v5, v6, v7}, Lcom/jellybus/fx/Activity_Crop_Rotate;->overridePendingTransition(II)V

    .line 213
    return-void

    .line 173
    .end local v3           #intent_main:Landroid/content/Intent;
    .restart local v0       #flip_h:Z
    .restart local v1       #flip_v:Z
    .restart local v4       #urDo:Lcom/jellybus/fx_sub/UndoRedo;
    :cond_8
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$3(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_9

    .line 174
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v5, v6}, Lcom/jellybus/fx/Juliet;->rotate180Index(II)V

    .line 175
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v5, v6}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 176
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v5, v6}, Lcom/jellybus/fx_sub/PictureController;->sizeChange(II)V

    goto/16 :goto_0

    .line 177
    :cond_9
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;->this$0:Lcom/jellybus/fx/Activity_Crop_Rotate;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Crop_Rotate;->access$3(Lcom/jellybus/fx/Activity_Crop_Rotate;)I

    move-result v5

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_2

    .line 178
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v5, v6}, Lcom/jellybus/fx/Juliet;->rotate270Index(II)V

    .line 179
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    invoke-static {v5, v6}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 180
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    invoke-static {v5, v6}, Lcom/jellybus/fx_sub/PictureController;->sizeChange(II)V

    goto/16 :goto_0
.end method
