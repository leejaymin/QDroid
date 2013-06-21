.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 289
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    invoke-virtual {v7}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 290
    .local v6, shareImage:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    invoke-virtual {v7}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 291
    .local v1, collageImage:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    invoke-virtual {v7}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 294
    .local v0, animImage:Landroid/graphics/drawable/Drawable;
    new-instance v5, Lcom/spritefish/fastburstcamera/controls/QuickAction;

    invoke-direct {v5, p1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;-><init>(Landroid/view/View;)V

    .line 295
    .local v5, qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;
    new-instance v2, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    const v8, 0x7f07009f

    invoke-virtual {v7, v8}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 297
    .local v2, itm1:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<Ljava/lang/Object;>;"
    new-instance v7, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$1;

    invoke-direct {v7, p0, v5}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$1;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;Lcom/spritefish/fastburstcamera/controls/QuickAction;)V

    invoke-virtual {v2, v7}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {v5, v2}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    .line 315
    new-instance v3, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    const v8, 0x7f0700a2

    invoke-virtual {v7, v8}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 317
    .local v3, itm2:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<Ljava/lang/Object;>;"
    new-instance v7, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$2;

    invoke-direct {v7, p0, v5}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$2;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;Lcom/spritefish/fastburstcamera/controls/QuickAction;)V

    invoke-virtual {v3, v7}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {v5, v3}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    .line 328
    new-instance v4, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    const v8, 0x7f0700a3

    invoke-virtual {v7, v8}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 330
    .local v4, itm3:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<Ljava/lang/Object;>;"
    new-instance v7, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$3;

    invoke-direct {v7, p0, v5}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$3;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;Lcom/spritefish/fastburstcamera/controls/QuickAction;)V

    invoke-virtual {v4, v7}, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    invoke-virtual {v5, v4}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    .line 356
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->setAnimStyle(I)V

    .line 358
    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->show()V

    .line 360
    return-void
.end method
