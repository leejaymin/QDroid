.class Lcom/ui/LapseIt/gallery/GalleryListView$2;
.super Ljava/lang/Object;
.source "GalleryListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/gallery/GalleryListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/gallery/GalleryListView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/gallery/GalleryListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$2;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v8, extras:Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$2;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 273
    .local v12, itemJSON:Lorg/json/JSONObject;
    const-string v1, "filename"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 274
    .local v9, filename:Ljava/lang/String;
    const-string v1, "id"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 275
    .local v10, galleryId:J
    const-string v1, "userId"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 277
    .local v13, userId:I
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "username"

    const-string v2, "username"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "galleryId"

    invoke-virtual {v8, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 280
    const-string v1, "userId"

    invoke-virtual {v8, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    const-string v1, "pageURL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.lapseit.com/gallery/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "videoURL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.lapseit.com/_gallery/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v9           #filename:Ljava/lang/String;
    .end local v10           #galleryId:J
    .end local v12           #itemJSON:Lorg/json/JSONObject;
    .end local v13           #userId:I
    :goto_0
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$2;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;
    invoke-static {v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->access$0(Lcom/ui/LapseIt/gallery/GalleryListView;)Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$2;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;
    invoke-static {v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->access$0(Lcom/ui/LapseIt/gallery/GalleryListView;)Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->dismissWithAnimation(Z)V

    .line 290
    :cond_0
    iget-object v14, p0, Lcom/ui/LapseIt/gallery/GalleryListView$2;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    new-instance v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryListView$2;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;-><init>(Landroid/view/View;Lcom/ui/LapseIt/gallery/GalleryListView;IIZ)V

    #setter for: Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;
    invoke-static {v14, v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->access$1(Lcom/ui/LapseIt/gallery/GalleryListView;Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V

    .line 291
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$2;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;
    invoke-static {v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->access$0(Lcom/ui/LapseIt/gallery/GalleryListView;)Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v8}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->showAsQuickAction(Landroid/view/View;Landroid/os/Bundle;)V

    .line 292
    return-void

    .line 283
    :catch_0
    move-exception v7

    .line 284
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
