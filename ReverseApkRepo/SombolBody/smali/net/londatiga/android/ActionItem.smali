.class public Lnet/londatiga/android/ActionItem;
.super Ljava/lang/Object;
.source "ActionItem.java"


# instance fields
.field private actionId:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private selected:Z

.field private sticky:Z

.field private thumb:Landroid/graphics/Bitmap;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, -0x1

    invoke-direct {p0, v0, v1, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "actionId"
    .parameter "icon"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "actionId"
    .parameter "title"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "actionId"
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lnet/londatiga/android/ActionItem;->actionId:I

    .line 33
    iput-object p2, p0, Lnet/londatiga/android/ActionItem;->title:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lnet/londatiga/android/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 35
    iput p1, p0, Lnet/londatiga/android/ActionItem;->actionId:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 64
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getActionId()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lnet/londatiga/android/ActionItem;->actionId:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lnet/londatiga/android/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumb()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lnet/londatiga/android/ActionItem;->thumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/londatiga/android/ActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lnet/londatiga/android/ActionItem;->selected:Z

    return v0
.end method

.method public isSticky()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lnet/londatiga/android/ActionItem;->sticky:Z

    return v0
.end method

.method public setActionId(I)V
    .locals 0
    .parameter "actionId"

    .prologue
    .line 124
    iput p1, p0, Lnet/londatiga/android/ActionItem;->actionId:I

    .line 125
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 105
    iput-object p1, p0, Lnet/londatiga/android/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 106
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 158
    iput-boolean p1, p0, Lnet/londatiga/android/ActionItem;->selected:Z

    .line 159
    return-void
.end method

.method public setSticky(Z)V
    .locals 0
    .parameter "sticky"

    .prologue
    .line 141
    iput-boolean p1, p0, Lnet/londatiga/android/ActionItem;->sticky:Z

    .line 142
    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 177
    iput-object p1, p0, Lnet/londatiga/android/ActionItem;->thumb:Landroid/graphics/Bitmap;

    .line 178
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 86
    iput-object p1, p0, Lnet/londatiga/android/ActionItem;->title:Ljava/lang/String;

    .line 87
    return-void
.end method
