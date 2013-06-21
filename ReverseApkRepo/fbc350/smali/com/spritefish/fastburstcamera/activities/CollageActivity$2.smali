.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$2;
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity$2;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 131
    const v1, 0x7f02001d

    .line 132
    .local v1, imageResource:I
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, image:Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/spritefish/fastburstcamera/controls/QuickAction;

    invoke-direct {v4, p1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;-><init>(Landroid/view/View;)V

    .line 135
    .local v4, qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->cc:Lcom/spritefish/fastburstcamera/collage/CollageCreator;
    invoke-static {v5}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$4(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/collage/CollageCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->getLayouts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 153
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->setAnimStyle(I)V

    .line 155
    invoke-virtual {v4}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->show()V

    .line 157
    return-void

    .line 135
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;

    .line 137
    .local v3, layout:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;
    new-instance v2, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;

    invoke-interface {v3}, Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;->getStringDescription()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6, v3}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .local v2, itm1:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;>;"
    new-instance v6, Lcom/spritefish/fastburstcamera/activities/CollageActivity$2$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$2$1;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$2;Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;Lcom/spritefish/fastburstcamera/controls/QuickAction;)V

    invoke-virtual {v2, v6}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {v4, v2}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    goto :goto_0
.end method
