.class Lcom/ui/LapseIt/list/ListQuickAction$1;
.super Ljava/lang/Object;
.source "ListQuickAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/list/ListQuickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ui$LapseIt$list$ListQuickAction$ACTION:[I


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/list/ListQuickAction;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ui$LapseIt$list$ListQuickAction$ACTION()[I
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->$SWITCH_TABLE$com$ui$LapseIt$list$ListQuickAction$ACTION:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->values()[Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->CANCEL:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DELETEPROJECT:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DELETERENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DETAILS:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->NONE:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->PUBLISH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->RENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->SHARE:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->WATCH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ZIP:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->$SWITCH_TABLE$com$ui$LapseIt$list$ListQuickAction$ACTION:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/ui/LapseIt/list/ListQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/list/ListQuickAction$1;)Lcom/ui/LapseIt/list/ListQuickAction;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 25
    .parameter "v"

    .prologue
    .line 120
    const v20, 0x66ffffff

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/ui/LapseIt/list/ListQuickAction;->dismissWithAnimation(Z)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 128
    invoke-static {}, Lcom/ui/LapseIt/list/ListQuickAction$1;->$SWITCH_TABLE$com$ui$LapseIt$list$ListQuickAction$ACTION()[I

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-virtual/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ordinal()I

    move-result v20

    aget v20, v21, v20

    packed-switch v20, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v20

    const-class v21, Lcom/ui/LapseIt/project/ProjectView;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v13, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/ui/LapseIt/list/ListView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    .end local v13           #i:Landroid/content/Intent;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "directory"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 139
    .local v19, zipDir:Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$2(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v21, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v21 .. v21}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08001c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 142
    new-instance v20, Ljava/lang/Thread;

    new-instance v21, Lcom/ui/LapseIt/list/ListQuickAction$1$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/list/ListQuickAction$1$1;-><init>(Lcom/ui/LapseIt/list/ListQuickAction$1;Ljava/lang/String;)V

    invoke-direct/range {v20 .. v21}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 170
    .end local v19           #zipDir:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->groupExpanded:Z
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$3(Lcom/ui/LapseIt/list/ListQuickAction;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v21, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->groupPosition:I
    invoke-static/range {v21 .. v21}, Lcom/ui/LapseIt/list/ListQuickAction;->access$4(Lcom/ui/LapseIt/list/ListQuickAction;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto/16 :goto_0

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v21, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->groupPosition:I
    invoke-static/range {v21 .. v21}, Lcom/ui/LapseIt/list/ListQuickAction;->access$4(Lcom/ui/LapseIt/list/ListQuickAction;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto/16 :goto_0

    .line 178
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #calls: Lcom/ui/LapseIt/list/ListQuickAction;->createConfirmDeleteDialog()V
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$5(Lcom/ui/LapseIt/list/ListQuickAction;)V

    goto/16 :goto_0

    .line 182
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "filepath"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, filepath:Ljava/lang/String;
    invoke-static {v11}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, extension:Ljava/lang/String;
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_3

    .line 187
    :cond_2
    const-string v20, "\\."

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, extArray:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v6, v7, v20

    .line 189
    .local v6, ext:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_3

    .line 190
    move-object v8, v6

    .line 194
    .end local v6           #ext:Ljava/lang/String;
    .end local v7           #extArray:[Ljava/lang/String;
    :cond_3
    const-string v20, "mp4"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #calls: Lcom/ui/LapseIt/list/ListQuickAction;->createConfirmWatchDialog()V
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$6(Lcom/ui/LapseIt/list/ListQuickAction;)V

    goto/16 :goto_0

    .line 197
    :cond_4
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 199
    .local v14, mimeType:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v21, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static/range {v21 .. v21}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "filepath"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    .line 200
    .local v17, uri:Landroid/net/Uri;
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v13       #i:Landroid/content/Intent;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :try_start_0
    const-string v20, "mp4"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/ui/LapseIt/list/ListView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v5

    .line 210
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #calls: Lcom/ui/LapseIt/list/ListQuickAction;->buildNoVideoAlert()V
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$7(Lcom/ui/LapseIt/list/ListQuickAction;)V

    .line 211
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 207
    .end local v5           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v20

    const-string v21, "Which player should I use?"

    move-object/from16 v0, v21

    invoke-static {v13, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/ui/LapseIt/list/ListView;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 217
    .end local v8           #extension:Ljava/lang/String;
    .end local v11           #filepath:Ljava/lang/String;
    .end local v13           #i:Landroid/content/Intent;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :pswitch_5
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "filepath"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v10, fileGallery:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 219
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 221
    .restart local v8       #extension:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v20

    const-class v21, Lcom/ui/LapseIt/upload/UploadLoginView;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v12, galleryIntent:Landroid/content/Intent;
    const-string v20, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v21

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 224
    const-string v20, "_data"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "video/"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/ui/LapseIt/list/ListView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 235
    .end local v8           #extension:Ljava/lang/String;
    .end local v10           #fileGallery:Ljava/io/File;
    .end local v12           #galleryIntent:Landroid/content/Intent;
    :pswitch_6
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "filepath"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 238
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 240
    .restart local v8       #extension:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 241
    .local v3, content:Landroid/content/ContentValues;
    const-string v20, "title"

    const-string v21, "Lapse It time-lapse video"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v20, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    const-string v20, "mime_type"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "video/"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v20, "_data"

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v20, "_size"

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    const-string v20, "title"

    const-string v21, "Time-lapse video created with Lapse It"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v20, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    const-string v20, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 253
    .local v15, resolver:Landroid/content/ContentResolver;
    sget-object v20, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 255
    .local v18, uriUpload:Landroid/net/Uri;
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v16, shareIntent:Landroid/content/Intent;
    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "video/"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v20, "android.intent.extra.STREAM"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    const-string v20, "android.intent.extra.TITLE"

    const-string v21, "I just made an awesome time-lapse video"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v20, "android.intent.extra.SUBJECT"

    const-string v21, "I just made an awesome time-lapse video"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v20, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v20 .. v20}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v20

    const-string v21, "Sharing video"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/ui/LapseIt/list/ListView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 269
    .end local v3           #content:Landroid/content/ContentValues;
    .end local v8           #extension:Ljava/lang/String;
    .end local v9           #file:Ljava/io/File;
    .end local v15           #resolver:Landroid/content/ContentResolver;
    .end local v16           #shareIntent:Landroid/content/Intent;
    .end local v18           #uriUpload:Landroid/net/Uri;
    :pswitch_7
    new-instance v4, Lcom/ui/LapseIt/list/ListQuickAction$1$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/ui/LapseIt/list/ListQuickAction$1$2;-><init>(Lcom/ui/LapseIt/list/ListQuickAction$1;)V

    .line 315
    .local v4, dialogResponseHandler:Landroid/content/DialogInterface$OnClickListener;
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    move-object/from16 v21, v0

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static/range {v21 .. v21}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    const v21, 0x7f080083

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 317
    const v21, 0x7f080084

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 318
    const v21, 0x1080027

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 319
    const-string v21, "Delete"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 320
    const-string v21, "Cancel"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 321
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
