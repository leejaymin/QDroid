.class Lcom/ui/LapseIt/settings/SettingsView$4;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/SettingsView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 333
    const/high16 v9, 0x7f0b

    :try_start_0
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "buy"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_1

    .line 337
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    const-string v10, "market://details?id=com.ui.LapseItPro"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v2, i:Landroid/content/Intent;
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v2}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    const-string v10, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 341
    .restart local v2       #i:Landroid/content/Intent;
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v2}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 427
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #i:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 428
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/high16 v9, 0x7f0b

    :try_start_3
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "rate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 345
    invoke-static {}, Lcom/ui/LapseIt/Main;->isPro()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 346
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 347
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    const-string v10, "http://www.amazon.com/gp/mas/dl/android?p=com.ui.LapseItPro"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .local v3, intent:Landroid/content/Intent;
    goto :goto_0

    .line 350
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :try_start_4
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    const-string v10, "market://details?id=com.ui.LapseItPro"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 351
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v3}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 352
    .end local v3           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 353
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_5
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    const-string v10, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 354
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v3}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 358
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 359
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    const-string v10, "http://www.amazon.com/gp/mas/dl/android?p=com.ui.LapseIt"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 369
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_1
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v3}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 362
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    :try_start_6
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    const-string v10, "market://details?id=com.ui.LapseIt"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v3}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 364
    .end local v3           #intent:Landroid/content/Intent;
    :catch_3
    move-exception v0

    .line 365
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_7
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    const-string v10, "https://play.google.com/store/apps/details?id=com.ui.LapseIt"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 366
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v3}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 372
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    const/high16 v9, 0x7f0b

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "share"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 373
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v7, sharingIntent:Landroid/content/Intent;
    const-string v9, "text/plain"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v9, "android.intent.extra.SUBJECT"

    const-string v10, "Try Lapse It on your mobile device for free"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v9, "android.intent.extra.TEXT"

    const-string v10, "Capture astonishing #timelapse videos with your mobile device. More info at http://www.lapseit.com"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    const-string v10, "Share using"

    invoke-static {v7, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 379
    .end local v7           #sharingIntent:Landroid/content/Intent;
    :cond_6
    const/high16 v9, 0x7f0b

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "faq"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 380
    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    const-class v10, Lcom/ui/LapseIt/FaqView;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .restart local v2       #i:Landroid/content/Intent;
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v2}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 382
    .end local v2           #i:Landroid/content/Intent;
    :cond_7
    const/high16 v9, 0x7f0b

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "feedback"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 383
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .restart local v2       #i:Landroid/content/Intent;
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "contact@lapseit.com"

    aput-object v10, v1, v9

    .line 385
    .local v1, emailList:[Ljava/lang/String;
    const-string v9, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v9, "android.intent.extra.SUBJECT"

    const-string v10, "Lapse It feedback"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v9, "plain/text"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v2}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 390
    .end local v1           #emailList:[Ljava/lang/String;
    .end local v2           #i:Landroid/content/Intent;
    :cond_8
    const/high16 v9, 0x7f0b

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tutorial"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 391
    const-string v9, "settings_tutorial"

    invoke-static {v9}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4024

    mul-double v5, v9, v11

    .line 393
    .local v5, randomN:D
    const-wide/high16 v5, 0x4014

    .line 395
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .restart local v2       #i:Landroid/content/Intent;
    const-wide/high16 v9, 0x4014

    cmpl-double v9, v5, v9

    if-ltz v9, :cond_a

    .line 397
    const-string v9, "vnd.youtube:oTwbP1vNvqk"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 398
    .local v8, tutorialUri:Landroid/net/Uri;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 400
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9}, Lcom/ui/LapseIt/settings/SettingsView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/high16 v10, 0x1

    invoke-virtual {v9, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 401
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_9

    .line 404
    const-string v9, "http://www.youtube.com/watch?v=oTwbP1vNvqk"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 405
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 406
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v2}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 409
    :cond_9
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v2}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 413
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #tutorialUri:Landroid/net/Uri;
    :cond_a
    const-string v9, "http://www.lapseit.com/videos/lapseitpromo.mp4"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 414
    .restart local v8       #tutorialUri:Landroid/net/Uri;
    const-string v9, "video/mp4"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9}, Lcom/ui/LapseIt/settings/SettingsView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/high16 v10, 0x1

    invoke-virtual {v9, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 418
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_b

    .line 419
    const-string v9, "http://www.youtube.com/watch?v=oTwbP1vNvqk"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 420
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 421
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v2}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 424
    :cond_b
    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v9, v2}, Lcom/ui/LapseIt/settings/SettingsView;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method
