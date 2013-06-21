.class public Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;
.super Ljava/lang/Object;
.source "IconTextActionItem.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/ActionItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/spritefish/fastburstcamera/controls/ActionItem;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private icon:Landroid/graphics/drawable/Drawable;

.field private listener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 35
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 40
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p2, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->title:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "icon"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    .local p3, data:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object p2, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->title:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->data:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public getActionItem(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "inflater"

    .prologue
    .line 107
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 109
    .local v0, container:Landroid/widget/LinearLayout;
    const v3, 0x7f0d0005

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 110
    .local v1, img:Landroid/widget/ImageView;
    const/high16 v3, 0x7f0d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    .local v2, text:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->title:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->listener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 83
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 101
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 75
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 76
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 92
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->listener:Landroid/view/View$OnClickListener;

    .line 93
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 57
    .local p0, this:Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;,"Lcom/spritefish/fastburstcamera/controls/IconTextActionItem<TT;>;"
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/IconTextActionItem;->title:Ljava/lang/String;

    .line 58
    return-void
.end method
