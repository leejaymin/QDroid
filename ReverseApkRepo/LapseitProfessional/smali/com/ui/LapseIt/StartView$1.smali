.class Lcom/ui/LapseIt/StartView$1;
.super Ljava/lang/Object;
.source "StartView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/StartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/StartView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/StartView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const v8, 0x7f08007c

    const/high16 v11, 0x1

    const/4 v10, 0x1

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 351
    :goto_0
    return-void

    .line 271
    :sswitch_0
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    const-string v7, "directory"

    invoke-static {v6, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, CONTENT_PATH:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, contentPathFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    :cond_0
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    const-class v9, Lcom/ui/LapseIt/capture/CaptureView;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v6, v7}, Lcom/ui/LapseIt/StartView;->access$0(Lcom/ui/LapseIt/StartView;Landroid/content/Intent;)V

    .line 277
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/ui/LapseIt/StartView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 284
    .end local v0           #CONTENT_PATH:Ljava/lang/String;
    .end local v1           #contentPathFile:Ljava/io/File;
    :sswitch_1
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    const-string v7, "directory"

    invoke-static {v6, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0       #CONTENT_PATH:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v1       #contentPathFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 288
    :cond_2
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    const-class v9, Lcom/ui/LapseIt/list/ListHostView;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v6, v7}, Lcom/ui/LapseIt/StartView;->access$0(Lcom/ui/LapseIt/StartView;Landroid/content/Intent;)V

    .line 289
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 296
    .end local v0           #CONTENT_PATH:Ljava/lang/String;
    .end local v1           #contentPathFile:Ljava/io/File;
    :sswitch_2
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    const-class v9, Lcom/ui/LapseIt/settings/SettingsView;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v6, v7}, Lcom/ui/LapseIt/StartView;->access$0(Lcom/ui/LapseIt/StartView;Landroid/content/Intent;)V

    .line 297
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 301
    :sswitch_3
    const-string v6, "view_proversion"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 303
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    const-class v9, Lcom/ui/LapseIt/ProVersionView;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v6, v7}, Lcom/ui/LapseIt/StartView;->access$0(Lcom/ui/LapseIt/StartView;Landroid/content/Intent;)V

    .line 304
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 308
    :sswitch_4
    const-string v6, "home_tutorial"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 309
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v6, v7}, Lcom/ui/LapseIt/StartView;->access$0(Lcom/ui/LapseIt/StartView;Landroid/content/Intent;)V

    .line 311
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4024

    mul-double v3, v6, v8

    .line 312
    .local v3, randomN:D
    const-wide/high16 v3, 0x4014

    .line 314
    const-wide/high16 v6, 0x4014

    cmpl-double v6, v3, v6

    if-ltz v6, :cond_5

    .line 315
    const-string v6, "vnd.youtube:oTwbP1vNvqk"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 316
    .local v5, tutorialUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v6}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 318
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-virtual {v6}, Lcom/ui/LapseIt/StartView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 319
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 322
    const-string v6, "http://www.youtube.com/watch?v=oTwbP1vNvqk"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 323
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v6}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 324
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/ui/LapseIt/StartView;->tutorialTime:J
    invoke-static {v6, v7, v8}, Lcom/ui/LapseIt/StartView;->access$2(Lcom/ui/LapseIt/StartView;J)V

    .line 325
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/ui/LapseIt/StartView;->access$3()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/ui/LapseIt/StartView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 328
    :cond_4
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/ui/LapseIt/StartView;->tutorialTime:J
    invoke-static {v6, v7, v8}, Lcom/ui/LapseIt/StartView;->access$2(Lcom/ui/LapseIt/StartView;J)V

    .line 329
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/ui/LapseIt/StartView;->access$3()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/ui/LapseIt/StartView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 333
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #tutorialUri:Landroid/net/Uri;
    :cond_5
    const-string v6, "http://www.lapseit.com/videos/lapseitpromo.mp4"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 334
    .restart local v5       #tutorialUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v6}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "video/mp4"

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-virtual {v6}, Lcom/ui/LapseIt/StartView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 338
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 339
    const-string v6, "http://www.youtube.com/watch?v=oTwbP1vNvqk"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 340
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v6}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 341
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/ui/LapseIt/StartView;->tutorialTime:J
    invoke-static {v6, v7, v8}, Lcom/ui/LapseIt/StartView;->access$2(Lcom/ui/LapseIt/StartView;J)V

    .line 342
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/ui/LapseIt/StartView;->access$3()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/ui/LapseIt/StartView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 345
    :cond_6
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/ui/LapseIt/StartView;->tutorialTime:J
    invoke-static {v6, v7, v8}, Lcom/ui/LapseIt/StartView;->access$2(Lcom/ui/LapseIt/StartView;J)V

    .line 346
    iget-object v6, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    iget-object v7, p0, Lcom/ui/LapseIt/StartView$1;->this$0:Lcom/ui/LapseIt/StartView;

    #getter for: Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;
    invoke-static {v7}, Lcom/ui/LapseIt/StartView;->access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/ui/LapseIt/StartView;->access$3()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/ui/LapseIt/StartView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b008f -> :sswitch_0
        0x7f0b0090 -> :sswitch_1
        0x7f0b0091 -> :sswitch_2
        0x7f0b0092 -> :sswitch_3
        0x7f0b009a -> :sswitch_4
    .end sparse-switch
.end method
