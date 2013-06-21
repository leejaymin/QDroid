.class Lcom/ui/LapseIt/list/ListQuickAction$1$2;
.super Ljava/lang/Object;
.source "ListQuickAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/list/ListQuickAction$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/list/ListQuickAction$1;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/list/ListQuickAction$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/list/ListQuickAction$1$2;->this$1:Lcom/ui/LapseIt/list/ListQuickAction$1;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 272
    packed-switch p2, :pswitch_data_0

    .line 311
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 312
    return-void

    .line 274
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/list/ListQuickAction$1$2;->this$1:Lcom/ui/LapseIt/list/ListQuickAction$1;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListQuickAction$1;->access$1(Lcom/ui/LapseIt/list/ListQuickAction$1;)Lcom/ui/LapseIt/list/ListQuickAction;

    move-result-object v1

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 275
    .local v13, renderedId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/list/ListQuickAction$1$2;->this$1:Lcom/ui/LapseIt/list/ListQuickAction$1;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListQuickAction$1;->access$1(Lcom/ui/LapseIt/list/ListQuickAction$1;)Lcom/ui/LapseIt/list/ListQuickAction;

    move-result-object v1

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "filepath"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 277
    .local v15, renderedPath:Ljava/lang/String;
    sget-object v1, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v13

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 278
    .local v2, query:Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "renderedinfo"

    aput-object v4, v3, v1

    .line 280
    .local v3, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/list/ListQuickAction$1$2;->this$1:Lcom/ui/LapseIt/list/ListQuickAction$1;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListQuickAction$1;->access$1(Lcom/ui/LapseIt/list/ListQuickAction$1;)Lcom/ui/LapseIt/list/ListQuickAction;

    move-result-object v1

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 281
    .local v8, cur:Landroid/database/Cursor;
    const-string v1, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ddd is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 284
    const-string v1, "renderedinfo"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 286
    .local v14, renderedInfo:Ljava/lang/String;
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 287
    .local v11, oldArray:Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 289
    .local v10, newArray:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, a:I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v7, v1, :cond_1

    .line 301
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 302
    .local v16, values:Landroid/content/ContentValues;
    const-string v1, "renderedinfo"

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/list/ListQuickAction$1$2;->this$1:Lcom/ui/LapseIt/list/ListQuickAction$1;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListQuickAction$1;->access$1(Lcom/ui/LapseIt/list/ListQuickAction$1;)Lcom/ui/LapseIt/list/ListQuickAction;

    move-result-object v1

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static {v1}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 305
    .end local v7           #a:I
    .end local v10           #newArray:Lorg/json/JSONArray;
    .end local v11           #oldArray:Lorg/json/JSONArray;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 306
    .local v9, e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 290
    .end local v9           #e:Lorg/json/JSONException;
    .restart local v7       #a:I
    .restart local v10       #newArray:Lorg/json/JSONArray;
    .restart local v11       #oldArray:Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "filepath"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 291
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 289
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 293
    :cond_3
    new-instance v12, Ljava/io/File;

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "filepath"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v12, removeFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    const-string v1, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 272
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
