.class public Lcom/addthis/core/ATController;
.super Ljava/lang/Object;
.source "ATController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraParams(Landroid/content/Intent;Lcom/addthis/models/ATShareItem;)V
    .locals 5
    .parameter "intent"
    .parameter "item"

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/addthis/models/ATShareItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/addthis/models/ATShareItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/addthis/models/ATShareItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, desc:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/addthis/models/ATShareItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 43
    .local v1, image:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 44
    const-string v4, "shareurl"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :cond_0
    if-eqz v2, :cond_1

    .line 46
    const-string v4, "sharetitle"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :cond_1
    if-eqz v0, :cond_2

    .line 48
    const-string v4, "sharedesc"

    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :cond_2
    if-eqz v1, :cond_3

    .line 50
    const-string v4, "shareimage"

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    :cond_3
    return-void
.end method

.method public static intentForView(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "viewId"

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 80
    :goto_0
    return-object v0

    .line 67
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/addthis/ui/activities/ATAllServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 76
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
