.class public Lcom/addthis/ui/views/ATButton;
.super Landroid/widget/ImageButton;
.source "ATButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ATButton"


# instance fields
.field buttonClickListener:Landroid/view/View$OnClickListener;

.field private mItem:Lcom/addthis/models/ATShareItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/addthis/ui/views/ATButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/addthis/ui/views/ATButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    new-instance v0, Lcom/addthis/ui/views/ATButton$1;

    invoke-direct {v0, p0}, Lcom/addthis/ui/views/ATButton$1;-><init>(Lcom/addthis/ui/views/ATButton;)V

    iput-object v0, p0, Lcom/addthis/ui/views/ATButton;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 93
    invoke-direct {p0}, Lcom/addthis/ui/views/ATButton;->initialize()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "description"
    .parameter "image"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/addthis/ui/views/ATButton;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/addthis/models/ATShareItem;

    invoke-direct {v0, p2, p3, p4}, Lcom/addthis/models/ATShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 83
    .local v0, item:Lcom/addthis/models/ATShareItem;
    invoke-virtual {p0, v0}, Lcom/addthis/ui/views/ATButton;->setItem(Lcom/addthis/models/ATShareItem;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "title"
    .parameter "description"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/addthis/ui/views/ATButton;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/addthis/models/ATShareItem;

    invoke-direct {v0, p2, p3, p4}, Lcom/addthis/models/ATShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v0, item:Lcom/addthis/models/ATShareItem;
    invoke-virtual {p0, v0}, Lcom/addthis/ui/views/ATButton;->setItem(Lcom/addthis/models/ATShareItem;)V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/addthis/ui/views/ATButton;)Lcom/addthis/models/ATShareItem;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/addthis/ui/views/ATButton;->mItem:Lcom/addthis/models/ATShareItem;

    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "addthisbutton"

    invoke-static {v0, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/addthis/ui/views/ATButton;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/addthis/ui/views/ATButton;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/addthis/ui/views/ATButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getItem()Lcom/addthis/models/ATShareItem;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/addthis/ui/views/ATButton;->mItem:Lcom/addthis/models/ATShareItem;

    return-object v0
.end method

.method public setItem(Lcom/addthis/models/ATShareItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/addthis/ui/views/ATButton;->mItem:Lcom/addthis/models/ATShareItem;

    .line 125
    return-void
.end method
