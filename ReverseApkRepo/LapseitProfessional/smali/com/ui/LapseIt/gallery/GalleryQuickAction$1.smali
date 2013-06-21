.class Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;
.super Ljava/lang/Object;
.source "GalleryQuickAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/gallery/GalleryQuickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryQuickAction$ACTION:[I


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryQuickAction$ACTION()[I
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->$SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryQuickAction$ACTION:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->values()[Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->CANCEL:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->NONE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->RATE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->SHARE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->USER:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->WATCH:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->$SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryQuickAction$ACTION:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 78
    const v12, 0x66ffffff

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->dismissWithAnimation(Z)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 90
    invoke-static {}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->$SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryQuickAction$ACTION()[I

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-virtual {v12}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->ordinal()I

    move-result v12

    aget v12, v13, v12

    packed-switch v12, :pswitch_data_0

    .line 142
    const-string v13, "trace"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "  "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v12}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$0(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "galleryId"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 93
    .local v5, galleryId:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v12}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$0(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "videoURL"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, videoURL:Ljava/lang/String;
    invoke-static {v11}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, extension:Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    .line 98
    :cond_1
    const-string v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, extArray:[Ljava/lang/String;
    array-length v12, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v2, v3, v12

    .line 100
    .local v2, ext:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 101
    move-object v4, v2

    .line 105
    .end local v2           #ext:Ljava/lang/String;
    .end local v3           #extArray:[Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, mimeType:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 108
    .local v10, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v7, i:Landroid/content/Intent;
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :try_start_0
    new-instance v12, Lcom/ui/LapseIt/gallery/VisitRequestTask;

    invoke-direct {v12, v5, v6}, Lcom/ui/LapseIt/gallery/VisitRequestTask;-><init>(J)V

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Void;

    invoke-virtual {v12, v13}, Lcom/ui/LapseIt/gallery/VisitRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #calls: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->resetGalleryList()V
    invoke-static {v12}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$1(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;
    invoke-static {v12}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$2(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Lcom/ui/LapseIt/gallery/GalleryListView;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/ui/LapseIt/gallery/GalleryListView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #extension:Ljava/lang/String;
    .end local v5           #galleryId:J
    .end local v7           #i:Landroid/content/Intent;
    .end local v8           #mimeType:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #videoURL:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v13}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$0(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "galleryId"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v15}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$0(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "title"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->buildRatingDialog(JLjava/lang/String;)V
    invoke-static {v12, v13, v14, v15}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$3(Lcom/ui/LapseIt/gallery/GalleryQuickAction;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v12}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$0(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "pageURL"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 127
    .restart local v11       #videoURL:Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v9, sharingIntent:Landroid/content/Intent;
    const-string v12, "text/plain"

    invoke-virtual {v9, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v12, "android.intent.extra.SUBJECT"

    const-string v13, "I\'m sharing this time lapse video"

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v12, "android.intent.extra.TEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Hey it\'s amazing what a phone can do, watch at "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;
    invoke-static {v12}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$2(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Lcom/ui/LapseIt/gallery/GalleryListView;

    move-result-object v12

    const-string v13, "Where you want to share?"

    invoke-static {v9, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/ui/LapseIt/gallery/GalleryListView;->startActivity(Landroid/content/Intent;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #calls: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->resetGalleryList()V
    invoke-static {v12}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$1(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V

    goto/16 :goto_0

    .line 138
    .end local v9           #sharingIntent:Landroid/content/Intent;
    .end local v11           #videoURL:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;
    invoke-static {v12}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$2(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Lcom/ui/LapseIt/gallery/GalleryListView;

    move-result-object v12

    sget-object v13, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->FROM_USER:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v14}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$0(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "userId"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v15}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$0(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "username"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/ui/LapseIt/gallery/GalleryListView;->setSortMode(Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
