.class Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;
.super Ljava/lang/Thread;
.source "TrimWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/TrimWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupThumbnails"
.end annotation


# instance fields
.field framesInfo:Lorg/json/JSONArray;

.field final synthetic this$0:Lcom/ui/LapseIt/project/TrimWidget;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/project/TrimWidget;Lorg/json/JSONArray;)V
    .locals 1
    .parameter
    .parameter "frames"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    .line 252
    const-string v0, "LapseItTrim"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 253
    iput-object p2, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->framesInfo:Lorg/json/JSONArray;

    .line 254
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;)Lcom/ui/LapseIt/project/TrimWidget;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/TrimWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 260
    .local v2, thumbsContainer:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    invoke-virtual {v0}, Lcom/ui/LapseIt/project/TrimWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 261
    .local v3, thumbSize:I
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    invoke-virtual {v0}, Lcom/ui/LapseIt/project/TrimWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 263
    .local v4, thumbSizeMargin:I
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$7()D

    move-result-wide v11

    mul-int/lit8 v1, v4, 0x2

    add-int/2addr v1, v3

    int-to-double v13, v1

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v1, v11

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->MAX_THUMBS:I
    invoke-static {v0, v1}, Lcom/ui/LapseIt/project/TrimWidget;->access$12(Lcom/ui/LapseIt/project/TrimWidget;I)V

    .line 265
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->MAX_THUMBS:I
    invoke-static {v0}, Lcom/ui/LapseIt/project/TrimWidget;->access$13(Lcom/ui/LapseIt/project/TrimWidget;)I

    move-result v0

    if-lt v9, v0, :cond_0

    .line 297
    return-void

    .line 266
    :cond_0
    int-to-double v0, v9

    iget-object v11, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->MAX_THUMBS:I
    invoke-static {v11}, Lcom/ui/LapseIt/project/TrimWidget;->access$13(Lcom/ui/LapseIt/project/TrimWidget;)I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v0, v11

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$9()D

    move-result-wide v11

    mul-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v10, v0

    .line 270
    .local v10, thumbIndex:I
    :try_start_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->framesInfo:Lorg/json/JSONArray;

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, filePath:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v8, v3, v3, v0}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 274
    .local v5, bm:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v6, thumbParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 276
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 277
    const/16 v0, 0x11

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 279
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v11

    new-instance v0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;-><init>(Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;Landroid/widget/LinearLayout;IILandroid/graphics/Bitmap;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v11, v0}, Lcom/ui/LapseIt/project/ProjectView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v6           #thumbParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #filePath:Ljava/lang/String;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 291
    :catch_0
    move-exception v7

    .line 292
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 293
    .end local v7           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v7

    .line 294
    .local v7, e:Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method
