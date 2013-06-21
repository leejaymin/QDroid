.class public Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;
.super Ljava/lang/Object;
.source "ShortcutDescription.java"


# instance fields
.field private final _activeImageId:I

.field private final _imageId:I

.field private final _textId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "textId"
    .parameter "imageId"
    .parameter "activeImageId"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_textId:I

    .line 32
    iput p2, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_imageId:I

    .line 33
    iput p3, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_activeImageId:I

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 45
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;

    .line 48
    .local v0, other:Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;
    iget v3, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_activeImageId:I

    iget v4, v0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_activeImageId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_4
    iget v3, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_imageId:I

    iget v4, v0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_imageId:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_5
    iget v3, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_textId:I

    iget v4, v0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_textId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 55
    goto :goto_0
.end method

.method public getActiveImageId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_activeImageId:I

    return v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_imageId:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_textId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 74
    const/16 v0, 0x1f

    .line 75
    .local v0, prime:I
    const/4 v1, 0x1

    .line 76
    .local v1, result:I
    iget v2, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_activeImageId:I

    add-int/lit8 v1, v2, 0x1f

    .line 77
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_imageId:I

    add-int v1, v2, v3

    .line 78
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->_textId:I

    add-int v1, v2, v3

    .line 79
    return v1
.end method
