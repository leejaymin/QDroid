.class Lcom/ui/LapseIt/project/RenderView$1;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/RenderView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/RenderView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 27
    .parameter "v"

    .prologue
    .line 232
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    const-string v5, "input_method"

    invoke-virtual {v2, v5}, Lcom/ui/LapseIt/project/RenderView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/inputmethod/InputMethodManager;

    .line 235
    .local v25, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$0(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$0(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    iget-object v2, v2, Lcom/ui/LapseIt/project/RenderView;->renderFormat:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    const-string v5, "directory"

    invoke-static {v2, v5}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, renderDir:Ljava/lang/String;
    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 243
    sget-object v21, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    .line 259
    .local v21, framesString:Ljava/lang/String;
    :goto_0
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v26, listToRender:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :try_start_0
    new-instance v20, Lorg/json/JSONArray;

    invoke-direct/range {v20 .. v21}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 264
    .local v20, framesInfo:Lorg/json/JSONArray;
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v24

    .local v24, i:I
    :goto_1
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v24

    if-lt v0, v2, :cond_3

    .line 274
    .end local v20           #framesInfo:Lorg/json/JSONArray;
    .end local v24           #i:I
    :goto_2
    sget-object v2, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->mId:J
    invoke-static {v5}, Lcom/ui/LapseIt/project/RenderView;->access$2(Lcom/ui/LapseIt/project/RenderView;)J

    move-result-wide v9

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 278
    .local v6, projectUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$0(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$0(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, filename:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->extras:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$1(Lcom/ui/LapseIt/project/RenderView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "directory"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 286
    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->encoder:Ljava/lang/String;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$3(Lcom/ui/LapseIt/project/RenderView;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "flv"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->encoder:Ljava/lang/String;
    invoke-static {v9}, Lcom/ui/LapseIt/project/RenderView;->access$3(Lcom/ui/LapseIt/project/RenderView;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->quality:I
    invoke-static {v10}, Lcom/ui/LapseIt/project/RenderView;->access$4(Lcom/ui/LapseIt/project/RenderView;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->fps:I
    invoke-static {v11}, Lcom/ui/LapseIt/project/RenderView;->access$5(Lcom/ui/LapseIt/project/RenderView;)I

    move-result v11

    const/4 v12, 0x1

    sget-object v13, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    sget v14, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    invoke-static/range {v5 .. v14}, Lcom/ui/LapseIt/project/Renderer;->build(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;F)Lcom/ui/LapseIt/project/Renderer;

    move-result-object v5

    #setter for: Lcom/ui/LapseIt/project/RenderView;->renderer:Lcom/ui/LapseIt/project/Renderer;
    invoke-static {v2, v5}, Lcom/ui/LapseIt/project/RenderView;->access$6(Lcom/ui/LapseIt/project/RenderView;Lcom/ui/LapseIt/project/Renderer;)V

    .line 292
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->extras:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$1(Lcom/ui/LapseIt/project/RenderView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "resolution"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 293
    .local v23, fullSensorString:Ljava/lang/String;
    const-string v2, "fullsensor"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v22

    .line 294
    .local v22, fullSensor:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->renderer:Lcom/ui/LapseIt/project/Renderer;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$7(Lcom/ui/LapseIt/project/RenderView;)Lcom/ui/LapseIt/project/Renderer;

    move-result-object v2

    move/from16 v0, v22

    iput-boolean v0, v2, Lcom/ui/LapseIt/project/Renderer;->isFullSensor:Z

    .line 296
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 297
    sget-boolean v2, Lcom/ui/LapseIt/project/ProjectPreview;->isBackwards:Z

    if-eqz v2, :cond_0

    .line 298
    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 300
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->renderer:Lcom/ui/LapseIt/project/Renderer;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$7(Lcom/ui/LapseIt/project/RenderView;)Lcom/ui/LapseIt/project/Renderer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/ui/LapseIt/project/Renderer;->renderFileSequence(Ljava/util/ArrayList;)V

    .line 302
    :cond_1
    return-void

    .line 245
    .end local v6           #projectUri:Landroid/net/Uri;
    .end local v7           #filename:Ljava/lang/String;
    .end local v21           #framesString:Ljava/lang/String;
    .end local v22           #fullSensor:Z
    .end local v23           #fullSensorString:Ljava/lang/String;
    .end local v26           #listToRender:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->extras:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/ui/LapseIt/project/RenderView;->access$1(Lcom/ui/LapseIt/project/RenderView;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 247
    .local v18, framesId:J
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 248
    const-string v5, "directory"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 249
    const-string v5, "framesinfo"

    aput-object v5, v4, v2

    .line 252
    .local v4, projection:[Ljava/lang/String;
    sget-object v2, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 253
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/RenderView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 254
    .local v15, cur:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 256
    const-string v2, "framesinfo"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21       #framesString:Ljava/lang/String;
    goto/16 :goto_0

    .line 265
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v15           #cur:Landroid/database/Cursor;
    .end local v18           #framesId:J
    .restart local v20       #framesInfo:Lorg/json/JSONArray;
    .restart local v24       #i:I
    .restart local v26       #listToRender:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_3
    :try_start_1
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "filepath"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v17, fileToRender:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 270
    .end local v17           #fileToRender:Ljava/io/File;
    .end local v20           #framesInfo:Lorg/json/JSONArray;
    .end local v24           #i:I
    :catch_0
    move-exception v16

    .line 271
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 281
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v6       #projectUri:Landroid/net/Uri;
    :cond_5
    const-string v7, "rendered"

    .restart local v7       #filename:Ljava/lang/String;
    goto/16 :goto_3

    .line 289
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->encoder:Ljava/lang/String;
    invoke-static {v9}, Lcom/ui/LapseIt/project/RenderView;->access$3(Lcom/ui/LapseIt/project/RenderView;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->quality:I
    invoke-static {v10}, Lcom/ui/LapseIt/project/RenderView;->access$4(Lcom/ui/LapseIt/project/RenderView;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ui/LapseIt/project/RenderView$1;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->fps:I
    invoke-static {v11}, Lcom/ui/LapseIt/project/RenderView;->access$5(Lcom/ui/LapseIt/project/RenderView;)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lcom/ui/LapseIt/project/Renderer;->build(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;)Lcom/ui/LapseIt/project/Renderer;

    move-result-object v5

    #setter for: Lcom/ui/LapseIt/project/RenderView;->renderer:Lcom/ui/LapseIt/project/Renderer;
    invoke-static {v2, v5}, Lcom/ui/LapseIt/project/RenderView;->access$6(Lcom/ui/LapseIt/project/RenderView;Lcom/ui/LapseIt/project/Renderer;)V

    goto/16 :goto_4
.end method
