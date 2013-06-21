.class Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;
.super Ljava/lang/Object;
.source "PlayerSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

.field private final synthetic val$dialogView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    iput-object p2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;->val$dialogView:Landroid/view/View;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 283
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;->val$dialogView:Landroid/view/View;

    .line 284
    const/high16 v10, 0x7f09

    .line 283
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 285
    .local v7, nameEntry:Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 335
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v9, ""

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const/16 v3, 0xc8

    .line 295
    .local v3, level:I
    const-string v9, "^(.*?) ?=([0-9]+)$"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 297
    .local v0, cheat:Ljava/util/regex/Pattern;
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 298
    .local v5, m:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 299
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 300
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 301
    const/16 v9, 0x3e8

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 306
    :cond_1
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    const-string v10, "players"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 307
    .local v8, playerFiles:[Ljava/io/File;
    new-instance v9, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5$1;

    invoke-direct {v9, p0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5$1;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;)V

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 315
    const/4 v4, 0x0

    .line 316
    .local v4, lowestAvailableNumber:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v8

    if-lt v2, v9, :cond_3

    .line 327
    :cond_2
    :try_start_0
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    #calls: Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->createPlayer(ILjava/lang/String;I)V
    invoke-static {v9, v4, v6, v3}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->access$0(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_2
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    #calls: Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->populatePlayerList()V
    invoke-static {v9}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->access$2(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;)V

    goto :goto_0

    .line 317
    :cond_3
    aget-object v9, v8, v2

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 318
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 317
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 320
    add-int/lit8 v4, v4, 0x1

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 328
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 329
    .local v1, e:Ljava/io/IOException;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    const v10, 0x7f070014

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 331
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method
