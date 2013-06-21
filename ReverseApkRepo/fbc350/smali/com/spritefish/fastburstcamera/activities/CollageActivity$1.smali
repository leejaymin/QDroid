.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/CollageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 96
    const v2, 0x7f02001e

    .line 97
    .local v2, imageResource:I
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    .local v1, image:Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/spritefish/fastburstcamera/controls/QuickAction;

    invoke-direct {v4, p1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;-><init>(Landroid/view/View;)V

    .line 100
    .local v4, qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;
    invoke-static {}, Lcom/spritefish/fastburstcamera/collage/effects/Effects;->getAvailableEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 118
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->setAnimStyle(I)V

    .line 120
    invoke-virtual {v4}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->show()V

    .line 122
    return-void

    .line 100
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/collage/effects/Effect;

    .line 102
    .local v0, ef:Lcom/spritefish/fastburstcamera/collage/effects/Effect;
    new-instance v3, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;

    invoke-interface {v0}, Lcom/spritefish/fastburstcamera/collage/effects/Effect;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6, v0}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    .local v3, itm1:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<Lcom/spritefish/fastburstcamera/collage/effects/Effect;>;"
    new-instance v6, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;

    invoke-direct {v6, p0, v0, v4}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;Lcom/spritefish/fastburstcamera/collage/effects/Effect;Lcom/spritefish/fastburstcamera/controls/QuickAction;)V

    invoke-virtual {v3, v6}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v4, v3}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    goto :goto_0
.end method
