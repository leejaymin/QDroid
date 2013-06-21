.class public Ljiqqa/recipe/ActionItem;
.super Ljava/lang/Object;
.source "ActionItem.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private listener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ljiqqa/recipe/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 29
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ljiqqa/recipe/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljiqqa/recipe/ActionItem;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ljiqqa/recipe/ActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 55
    iput-object p1, p0, Ljiqqa/recipe/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 56
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Ljiqqa/recipe/ActionItem;->listener:Landroid/view/View$OnClickListener;

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 37
    iput-object p1, p0, Ljiqqa/recipe/ActionItem;->title:Ljava/lang/String;

    .line 38
    return-void
.end method
